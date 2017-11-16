/*****************************************************************
 * dpram
 *   Copyright (C) 2017 Yuta Tokusashi, Keio Univ.
 *****************************************************************/

module dpram #(
	parameter ADDR_WIDTH = 12,
	parameter DATA_WIDTH = 12,
	parameter TYPE       = "BRAM" // BRAM or LUT
)(
	input                    sys_clk,
	input                    sys_rst,

	input [DATA_WIDTH-1:0]   wdata,
	input [DATA_WIDTH/8-1:0] wmask,
	input [ADDR_WIDTH-1:0]   waddr,
	input                    wr_en,

	output [DATA_WIDTH-1:0]  rdata,
	output                   rvalid,
	input  [ADDR_WIDTH-1:0]  raddr,
	input                    rd_en
);

localparam NUM_ARRAY = 2**ADDR_WIDTH;

reg [DATA_WIDTH-1:0] RAM [0:NUM_ARRAY-1];

integer i;

reg [DATA_WIDTH-1:0] rdata_buf;
reg                  rd_en_buf;

always @ (posedge sys_clk)
	if (sys_rst) begin
		for (i=0; i < NUM_ARRAY; i = i + 1) begin
			RAM[i] <= 0;
		end
	end else begin
		if (wr_en) begin
			$display("DATA: 0x%x, MASK: 0x%x ADDR: 0x%x", 
				wdata, wmask, waddr);
			RAM[waddr] <= wdata | wmask;
		end
		if (rd_en) begin
			$display("DATA: 0x%x, ADDR: 0x%x", RAM[raddr], raddr);
			rdata_buf <= RAM[raddr]; 	
		end
		rd_en_buf <= rd_en;
	end


assign rdata  = rdata_buf;
assign rvalid = rd_en_buf;


endmodule
