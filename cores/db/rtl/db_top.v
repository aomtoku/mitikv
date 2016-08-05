module db_top #(
	parameter KEY_SIZE = 96,
	parameter VAL_SIZE = 32,
	parameter RAM_SIZE = 1024,
	parameter RAM_ADDR = 22
)(
	input  wire                clk,
	input  wire                rst, 
	/* Network Interface */
	input  wire [KEY_SIZE-1:0] in_key,
	input  wire [3:0]          in_flag,
	input  wire                in_valid,
	output wire                out_valid,
	output wire [3:0]          out_flag

	/* DRAM interace */ 
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
 * Value design, 
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
reg                 valid_reg;
reg                 hash_reg;
reg  [3:0]          flag_reg;
wire [31:0]         hash;
wire                crc_rst = valid_reg;

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
		hash_reg  <= 0;
		flag_reg  <= 0;
	end else begin
		key_reg   <= in_key;
		valid_reg <= in_valid;
		flag_geg  <= in_flag;
		if (in_valid) 
			hash_reg <= hash;
	end

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

	/* Network Interface side */
	.in_valid     (valid_reg),
	.in_op        (flag_reg),
	.in_hash      (hash_reg),
	.in_key       (key_reg),
	.in_value     (), 

	.out_valid    (out_valid),
	.out_flag     (out_flag),
	.out_value    (),
	/* DRAM Interface */
	.dram_wr_en   (),
	.dram_wr_din  (),
	.dram_addr    (),
	.dram_rd_en   (),
	.dram_rd_dout (),
	.dram_rd_valid()
);


/*
 * DRAM PHY Controller
 */
//dram_phy u_dram_phy #(
//	RAM_SIZE_KB  (1),
//	RAM_ADDR     (22),
//	RAM_DWIDTH   (32)
//)(
//	.clk         (clk),
//	.rst         (rst),
//
//	.wr_en       (),
//	.wr_din      (),
//	.addr        (),
//	.rd_en       (),
//	.rd_dout     (),
//	.rd_valid    ()
//);
//
endmodule
