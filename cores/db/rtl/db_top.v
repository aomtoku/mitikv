module db_top #(
	parameter KEY_SIZE = 96,
	parameter VAL_SIZE = 32,
	parameter RAM_SIZE = 1024,
	parameter RAM_ADDR = 22
)(
	input  wire                clk,
	input  wire                rst, 
`ifdef DRAM_SUPPORT
	/* DDRS SDRAM Infra */
	input  wire                sys_clk_p,
	input  wire                sys_clk_n,
	
	/* DRAM interace */ 
	inout  [63:0]              ddr3_dq,
	inout  [ 7:0]              ddr3_dqs_n,
	inout  [ 7:0]              ddr3_dqs_p,
	output [15:0]              ddr3_addr,
	output [ 2:0]              ddr3_ba,
	output                     ddr3_ras_n,
	output                     ddr3_cas_n,
	output                     ddr3_we_n,
	output                     ddr3_reset_n,
	output [ 0:0]              ddr3_ck_p,
	output [ 0:0]              ddr3_ck_n,
	output [ 0:0]              ddr3_cke,
	output [ 0:0]              ddr3_cs_n,
	output [ 7:0]              ddr3_dm,
	output [ 0:0]              ddr3_odt,
`endif /* DRAM_SUPPORT */
	/* Network Interface */
	input  wire [KEY_SIZE-1:0] in_key,
	input  wire [3:0]          in_flag,
	input  wire                in_valid,
	output wire                out_valid,
	output wire [3:0]          out_flag

	//input wire    dram_wr_strb,
	//input wire    dram_wr_data, 
);


localparam KEY_LEN = 96; // bit size (12B)
/*
 * Tupple design, which is Key paired with value. 
 *     Source IP             : 32 bit
 *     Destination IP        : 32 bit
 *     Destination UDP port  : 16 bit
 *     Reserved              : 16 bit
 */
localparam VAL_LEN = 32; // bit size (4B)
/*
 * Value map, 
 *     Status Code           :  4 bit
 *     Flag                  :  4 bit
 *     Time (for Expired)    : 16 bit
 *     Reserved              :  8 bit
 */

/*
 * Status Code for Value Entry
 */
localparam SUSPECTION = 1,
           ARREST     = 2,
           FILTERED   = 3,
           EXPIRED    = 4;

/*
 * Hash Function for Indexing
 */
reg  [KEY_SIZE-1:0] key_reg;
reg                 valid_reg, valid_regg;
reg  [31:0]         hash_reg;
reg  [3:0]          flag_reg;
wire [31:0]         hash;
wire                crc_rst = valid_regg;

crc32 u_hashf (
  .data_in    (in_key),
  .crc_en     (in_valid),
  .crc_out    (hash),
  .rst        (rst | crc_rst),
  .clk        (clk) 
);


always @ (posedge clk)
	if (rst) begin
		key_reg   <= 0;
		valid_reg <= 0;
		valid_regg<= 0;
		hash_reg  <= 0;
		flag_reg  <= 0;
	end else begin
		key_reg   <= in_key;
		valid_reg <= in_valid;
		valid_regg<= valid_reg;
		flag_reg  <= in_flag;
		if (valid_reg) 
			hash_reg <= hash;
	end

wire [31:0] hash_value = (valid_reg) ? hash : hash_reg;

db_cont #(
	.HASH_SIZE    (32),
	.KEY_SIZE     (KEY_SIZE), 
	.VAL_SIZE     (VAL_SIZE),
	.FLAG_SIZE    ( 4),
	.RAM_ADDR     (RAM_ADDR),
	.RAM_DWIDTH   (32),
	.RAM_SIZE     (RAM_SIZE)
) u_db_cont (
	/* System Interface */
	.clk          (clk),
	.rst          (rst),

	/* DDRS SDRAM Infra */
	.sys_clk_p    (sys_clk_p),
	.sys_clk_n    (sys_clk_p),
	.ui_mig_clk   (),
	.ui_mig_rst   (),
	.init_calib_complete(init_calib_complete),

	/* DDR3 SDRAM Interface */
	.ddr3_addr       (ddr3_addr),
	.ddr3_ba         (ddr3_ba),
	.ddr3_cas_n      (ddr3_cas_n),
	.ddr3_ck_n       (ddr3_ck_n),
	.ddr3_ck_p       (ddr3_ck_p),
	.ddr3_cke        (ddr3_cke),
	.ddr3_ras_n      (ddr3_ras_n),
	.ddr3_we_n       (ddr3_we_n),
	.ddr3_dq         (ddr3_dq),
	.ddr3_dqs_n      (ddr3_dqs_n),
	.ddr3_dqs_p      (ddr3_dqs_p),
	.ddr3_reset_n    (ddr3_reset_n),
	.ddr3_cs_n       (ddr3_cs_n),
	.ddr3_dm         (ddr3_dm),
	.ddr3_odt        (ddr3_odt),

	/* Network Interface side */
	.in_valid     (valid_reg),
	.in_op        (flag_reg),
	.in_hash      (hash_value),
	.in_key       (key_reg),
	.in_value     (), 

	.out_valid    (out_valid),
	.out_flag     (out_flag),
	.out_value    ()
);


ila_0 u_ila1 (
	.clk     (clk), // input wire clk
	/* verilator lint_off WIDTH */
	.probe0  ({ // 256pin
		key_reg,
		valid_reg,
		hash_reg,
		flag_reg,
		hash
		//126'd0          ,
	})/* verilator lint_on WIDTH */ 
);

endmodule
