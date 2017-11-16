module dpram_mig_wrapper #(
	parameter DPRAM_ADDR_WIDTH = 12,
	parameter DPRAM_DWIDTH     = 128,
	parameter DPRAM_TYPE       = "BRAM" // BRAM or LUT
)(
	input  wire                        sys_clk             ,
	input  wire                        sys_rst             ,

	output wire                        init_calib_complete ,
	input  wire [DPRAM_ADDR_WIDTH-1:0] app_addr            ,
	input  wire [2:0]                  app_cmd             ,
	input  wire                        app_en              ,
	input  wire [DPRAM_DWIDTH-1:0]     app_wdf_data        ,
	input  wire                        app_wdf_end         ,
	input  wire                        app_wdf_wren        ,
	input  wire [DPRAM_DWIDTH/8-1:0]   app_wdf_mask        ,
	output wire [DPRAM_DWIDTH-1:0]     app_rd_data         ,
	output wire                        app_rd_data_end     ,
	output wire                        app_rd_data_valid   ,
	output wire                        app_rdy             ,
	output wire                        app_wdf_rdy         
);

localparam MIG_CMD_READ  = 3'b001;
localparam MIG_CMD_WRITE = 3'b000;

assign init_calib_complete = 1'b1;

wire wr_en = app_en && app_cmd == MIG_CMD_WRITE;
wire rd_en = app_en && app_cmd == MIG_CMD_READ;

// ------------------------------------------------------
//   CMD FIFO
// ------------------------------------------------------
wire cmd_full, cmd_empty;
wire cmd_prog_full, cmd_nearly_full;
wire [2:0] cmd_dout;
wire [DPRAM_ADDR_WIDTH-1:0] addr_dout;
wire dummy;

wire cmd_rd_en = !cmd_empty;

fallthrough_small_fifo #(
	.WIDTH          ( 4 + DPRAM_ADDR_WIDTH ),
	.MAX_DEPTH_BITS ( 3  )
) u_cmd_fifo (
	.din            ( {1'b1, app_cmd, app_addr}    ),
	.wr_en          ( app_en                       ),
	.rd_en          ( cmd_rd_en                    ),

	.dout           ( {dummy, cmd_dout, addr_dout} ), 
	.full           ( cmd_full                     ),
	.nearly_full    ( cmd_nearly_full              ),
	.prog_full      ( cmd_prog_full                ),
	.empty          ( cmd_empty                    ),

	.reset          ( sys_rst                      ),
	.clk            ( sys_clk                      )
);

// ------------------------------------------------------
//   Pipeline
// ------------------------------------------------------
reg [2:0]                  cmd_buf;
reg [DPRAM_ADDR_WIDTH-1:0] addr_buf;
reg                        cmd_en_buf;

always @ (posedge sys_clk)
	if (sys_rst) begin
		cmd_buf    <= 0;
		cmd_en_buf <= 0;
		addr_buf   <= 0;
	end else begin
		cmd_en_buf <= cmd_rd_en;
		cmd_buf    <= cmd_dout;
		addr_buf   <= addr_dout;
	end
// ------------------------------------------------------
//   WRITE FIFO
// ------------------------------------------------------
wire                      wr_full, wr_empty;
wire                      wr_prog_full, wr_nearly_full;
wire [DPRAM_DWIDTH-1:0]   wdata_dout;
wire [DPRAM_DWIDTH/8-1:0] wmask_dout;

wire rd_en_wfifo = cmd_en_buf && cmd_buf == MIG_CMD_WRITE;

fallthrough_small_fifo #(
	.WIDTH          ( DPRAM_DWIDTH + DPRAM_DWIDTH/8 ),
	.MAX_DEPTH_BITS ( 3  )
) u_wr_fifo (
	.din            ( {app_wdf_data, app_wdf_mask} ),
	.wr_en          ( app_wdf_wr_en                ),
	.rd_en          ( rd_en_wfifo ),

	.dout           ( {wdata_dout, wmask_dout} ), 
	.full           ( wr_full                  ),
	.nearly_full    ( wr_nearly_full           ),
	.prog_full      ( wr_prog_full             ),
	.empty          ( wr_empty                 ),

	.reset          ( sys_rst ),
	.clk            ( sys_clk )
);

// ------------------------------------------------------
//   DPRAM Instance
// ------------------------------------------------------
wire [DPRAM_ADDR_WIDTH-1:0] dpram_addr = addr_buf;
wire dpram_wr_en = rd_en_wfifo;
wire dpram_rd_en = cmd_en_buf && (cmd_buf == MIG_CMD_READ);

dpram #(
	.ADDR_WIDTH   ( DPRAM_ADDR_WIDTH  ),
	.DATA_WIDTH   ( DPRAM_DWIDTH      ),
	.TYPE         ( DPRAM_TYPE        ) // BRAM or LUT
)(
	.sys_clk      ( sys_clk           ),
	.sys_rst      ( sys_rst           ),

	.wdata        ( wdata_dout      ),
	.wmask        ( wmask_dout      ),
	.waddr        ( dpram_addr      ),
	.wr_en        ( dpram_wr_en     ),

	.rdata        ( app_rd_data       ),
	.rvalid       ( app_rd_data_valid ),
	.raddr        ( dpram_addr        ),
	.rd_en        ( dpram_rd_en       )
);

endmodule
