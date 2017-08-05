`timescale 1ps/1ps

module db_cont #(
	/* CAM parameters */
	parameter LUT_DEPTH_BITS =  5,
	parameter NCAMS_BITS  = 5,
	parameter LUT_DEPTH = 2**(LUT_DEPTH_BITS+NCAMS_BITS),
	
	/**/
	parameter HASH_SIZE   = 32,
	parameter KEY_SIZE    = 96, // 80bit + 32bit
	parameter VAL_SIZE    = 32,
	parameter FLAG_SIZE   =  4,
	parameter RAM_ADDR    = 10,
	parameter RAM_DWIDTH  = 32,
	parameter RAM_SIZE    = 1024
)(
	/* System Interface */
	input  wire  clk156,
	input  wire  rst,

	/* Network Interface side */
	input  wire                  in_valid     ,
	input  wire [3:0]            in_op        ,
	input  wire [HASH_SIZE-1:0]  in_hash      ,
	input  wire [KEY_SIZE-1:0]   in_key       ,
	input  wire [VAL_SIZE-1:0]   in_value     , 

	output wire                  out_valid    ,
	output wire [3:0]            out_flag     ,
	output wire [VAL_SIZE-1:0]   out_value     
);

// ------------------------------------------------------
//   Functions
// ------------------------------------------------------
function integer clogb2 (input integer size);
begin
	size = size - 1;
	for (clogb2=1; size>1; clogb2=clogb2+1)
		size = size >> 1;
end
endfunction // clogb2

function integer STR_TO_INT;
input [7:0] in;
begin
	if (in == "8")
		STR_TO_INT = 8;
	else if (in == "4")
		STR_TO_INT = 4;
	else
		STR_TO_INT = 0;
end
endfunction

// ------------------------------------------------------
//   Parameters
// ------------------------------------------------------
localparam SET_REQ = 1'b1,
           GET_REQ = 1'b0;

localparam RESET            = 1,
           IDLE             = 2,
           DELAY_ONE        = 4,
           DELAY_TWO        = 8,
           DELAY_THREE      = 16,
           LATCH_DST_LOOKUP = 32;

localparam ARB_RD        = 2'b01;
localparam ARB_WR        = 2'b10;

// ------------------------------------------------------
//   Timecounter for value stored in hash-table 
// ------------------------------------------------------
wire div_clk;
reg [23:0] div_cnt;

always @ (posedge clk156)
	if (rst)
		div_cnt <= 0;
	else
		div_cnt <= div_cnt + 1;

reg [15:0] sys_cnt = 0;
always @ (posedge div_clk)
	sys_cnt <= sys_cnt + 1;

`ifndef SIMULATION_DEBUG
BUFG u_bufg_sys_clk (.I(div_cnt[23]), .O(div_clk));
`else
assign div_clk = div_cnt[3];
`endif  /* SIMULATION_DEBUG */


localparam KEY_LENGTH = 96;
reg [KEY_LENGTH-1:0] cam_cmp_din, cam_din, cam_din_next;
wire cam_busy;
reg  [5:0]                           lookup_state, lookup_state_next;

reg [LUT_DEPTH_BITS+NCAMS_BITS-1:0]  lut_rd_addr, lut_wr_addr, lut_wr_addr_next;
reg                                  lut_wr_en, lut_wr_en_next;
reg [VAL_SIZE+KEY_LENGTH-1:0]        lut_wr_data, lut_wr_data_next;
reg [VAL_SIZE+KEY_LENGTH-1:0]        lut_rd_data;
reg [VAL_SIZE+KEY_LENGTH-1:0]        lut[LUT_DEPTH-1:0];

wire                                 cam_match;
wire [LUT_DEPTH_BITS+NCAMS_BITS-1:0] cam_match_addr;
 
reg                                  cam_we, cam_we_next;
reg  [LUT_DEPTH_BITS+NCAMS_BITS-1:0] cam_wr_addr, cam_wr_addr_next;
reg                                  lookup_done;

reg                                  reset_count_inc;
reg [LUT_DEPTH_BITS+NCAMS_BITS:0]    reset_count;

reg                                  lut_miss, lut_miss_next;
reg                                  lut_hit, lut_hit_next;
reg                                  lookup_done_next;

// ------------------------------------------------------
//   Cache Orgnaization 
//      Num of entries : 8
//      
// ------------------------------------------------------
reg [KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:0] cache [7:0];
reg                  lookup_req_stage1, lookup_req_stage2, 
                     lookup_req_stage3, lookup_req_stage4; 
reg	[KEY_LENGTH-1:0] cam_din_stage1_0, cam_din_stage1_1;   
reg	[KEY_LENGTH-1:0] cam_din_stage2_0, cam_din_stage2_1;   
reg	[KEY_LENGTH-1:0] cam_din_stage2_2, cam_din_stage2_3;   
reg [2:0]            cache_pointer;
wire                 cache_hit, cache_miss;

reg [KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:0] cache_reg0;
reg [KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:0] cache_reg1;
reg [KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:0] cache_reg2;
reg [KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:0] cache_reg3;
reg [KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:0] cache_reg4; reg [KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:0] cache_reg5;
reg [KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:0] cache_reg6;
reg [KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:0] cache_reg7;
reg cache_hit_stage1, cache_hit_stage2;
reg cache_miss_stage1, cache_miss_stage2;
reg [LUT_DEPTH_BITS+NCAMS_BITS-1:0] cache_hit_addr, cache_hit_addr_stage1;
reg [LUT_DEPTH_BITS+NCAMS_BITS-1:0] cache_hit_addr_next; 

reg [LUT_DEPTH_BITS+NCAMS_BITS-1:0]	  pointer_add_cam, pointer_add_cam_next;
reg	lookup_op_stage1, lookup_op_stage2, lookup_op_stage3, 
    lookup_op_stage4, lookup_op_stage5;
reg [KEY_SIZE-1:0] lookup_key_stage1, lookup_key_stage2, lookup_key_stage3,
                   lookup_key_stage4, lookup_key_stage5;
reg [VAL_SIZE-1:0] lookup_val_stage1, lookup_val_stage2, lookup_val_stage3,
                   lookup_val_stage4, lookup_val_stage5;

assign cache_hit = lookup_req_stage2 
                 && (cache_reg0[KEY_LENGTH-1:0] == cam_din_stage2_0 ||
                     cache_reg1[KEY_LENGTH-1:0] == cam_din_stage2_0 ||
                     cache_reg2[KEY_LENGTH-1:0] == cam_din_stage2_1 ||
                     cache_reg3[KEY_LENGTH-1:0] == cam_din_stage2_1 ||
                     cache_reg4[KEY_LENGTH-1:0] == cam_din_stage2_2 ||
                     cache_reg5[KEY_LENGTH-1:0] == cam_din_stage2_2 ||
                     cache_reg6[KEY_LENGTH-1:0] == cam_din_stage2_3 ||
                     cache_reg7[KEY_LENGTH-1:0] == cam_din_stage2_3);
assign cache_miss = lookup_req_stage2 && !cache_hit; 


always @ (*) begin
	cache_hit_addr_next = cache_hit_addr;

	if ( cache_reg0[KEY_LENGTH-1:0] == cam_din_stage2_0) 
		cache_hit_addr_next = cache_reg0[KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:KEY_LENGTH];
	if ( cache_reg1[KEY_LENGTH-1:0] == cam_din_stage2_0)
		cache_hit_addr_next = cache_reg1[KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:KEY_LENGTH];
 	if ( cache_reg2[KEY_LENGTH-1:0] == cam_din_stage2_1)
		cache_hit_addr_next = cache_reg2[KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:KEY_LENGTH];
 	if ( cache_reg3[KEY_LENGTH-1:0] == cam_din_stage2_1)
		cache_hit_addr_next = cache_reg3[KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:KEY_LENGTH];
 	if ( cache_reg4[KEY_LENGTH-1:0] == cam_din_stage2_2)
		cache_hit_addr_next = cache_reg4[KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:KEY_LENGTH];
 	if ( cache_reg5[KEY_LENGTH-1:0] == cam_din_stage2_2)
		cache_hit_addr_next = cache_reg5[KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:KEY_LENGTH];
 	if ( cache_reg6[KEY_LENGTH-1:0] == cam_din_stage2_3)
		cache_hit_addr_next = cache_reg6[KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:KEY_LENGTH];
 	if ( cache_reg7[KEY_LENGTH-1:0] == cam_din_stage2_3)
		cache_hit_addr_next = cache_reg7[KEY_LENGTH+LUT_DEPTH_BITS+NCAMS_BITS-1:KEY_LENGTH];
end


always @ (posedge clk156)
	if (rst) begin
		lookup_val_stage1 <= 0;
		lookup_val_stage2 <= 0;
		lookup_val_stage3 <= 0;
		lookup_val_stage4 <= 0;
		lookup_val_stage5 <= 0;

		lookup_key_stage1 <= 0;
		lookup_key_stage2 <= 0;
		lookup_key_stage3 <= 0;
		lookup_key_stage4 <= 0;
		lookup_key_stage5 <= 0;

		lookup_op_stage1 <= 0;
		lookup_op_stage2 <= 0;
		lookup_op_stage3 <= 0;
		lookup_op_stage4 <= 0;
		lookup_op_stage5 <= 0;

		lookup_req_stage1 <= 0;	
		lookup_req_stage2 <= 0;	
		lookup_req_stage3 <= 0;	
		lookup_req_stage4 <= 0;	
		
		cam_din_stage1_0  <= 0;
		cam_din_stage1_1  <= 0;

		cam_din_stage2_0  <= 0;
		cam_din_stage2_1  <= 0;
		cam_din_stage2_2  <= 0;
		cam_din_stage2_3  <= 0;

		cache_pointer     <= 0;
		cache_hit_addr    <= 0;
		cache[0]          <= 0;
		cache[1]          <= 0;
		cache[2]          <= 0;
		cache[3]          <= 0;
		cache[4]          <= 0;
		cache[5]          <= 0;
		cache[6]          <= 0;
		cache[7]          <= 0;
	end else begin
		lookup_val_stage1 <= in_value;
		lookup_val_stage2 <= lookup_val_stage1;
		lookup_val_stage3 <= lookup_val_stage2;
		lookup_val_stage4 <= lookup_val_stage3;
		lookup_val_stage5 <= lookup_val_stage4;

		lookup_key_stage1 <= in_key;
		lookup_key_stage2 <= lookup_key_stage1;
		lookup_key_stage3 <= lookup_key_stage2;
		lookup_key_stage4 <= lookup_key_stage3;
		lookup_key_stage5 <= lookup_key_stage4;

		lookup_op_stage1  <= in_op[0];
		lookup_op_stage2  <= lookup_op_stage1;
		lookup_op_stage3  <= lookup_op_stage2;
		lookup_op_stage4  <= lookup_op_stage3;
		lookup_op_stage5  <= lookup_op_stage4;

		lookup_req_stage1 <= in_valid; //&& in_op[0] == GET_REQ;	
		lookup_req_stage2 <= lookup_req_stage1;	
		lookup_req_stage3 <= lookup_req_stage2;	
		lookup_req_stage4 <= lookup_req_stage3;	
		
		cam_din_stage1_0 <= cam_cmp_din;
		cam_din_stage1_1 <= cam_cmp_din;

		cam_din_stage2_0 <= cam_din_stage1_0;
		cam_din_stage2_1 <= cam_din_stage1_0;
		cam_din_stage2_2 <= cam_din_stage1_1;
		cam_din_stage2_3 <= cam_din_stage1_1;

		if (cam_we) begin
			cache[cache_pointer] <= {lut_wr_addr, lut_wr_data[KEY_LENGTH:0]};
			cache_pointer <= cache_pointer + 1;
		end

		cache_reg0 <= cache[0];
		cache_reg1 <= cache[1];
		cache_reg2 <= cache[2];
		cache_reg3 <= cache[3];
		cache_reg4 <= cache[4];
		cache_reg5 <= cache[5];
		cache_reg6 <= cache[6];
		cache_reg7 <= cache[7];

		cache_hit_stage1 <= cache_hit;
		cache_hit_stage2 <= cache_hit_stage1;
		cache_miss_stage1 <= cache_miss;
		cache_miss_stage2 <= cache_miss_stage1;
		cache_hit_addr <= cache_hit_addr_next;
		cache_hit_addr_stage1 <= cache_hit_addr;
	end



// ----------------------------------------------------
//   Lookup Logic
// ---------------------------------------------------
reg [KEY_LENGTH-1:0] key_latched;
reg [VAL_SIZE-1:0] val_latched;
reg latch_key;
// Todo : remove write_fin
reg write_fin, write_fin_next;

always @ (*) begin
	cam_wr_addr_next = pointer_add_cam;
	cam_din_next     = key_latched;
	cam_we_next      = 0;
	cam_cmp_din      = in_key;
	write_fin_next   = 0;
	
	if (cache_hit_stage2)
		lut_rd_addr      = cache_hit_addr_stage1;
	else
		lut_rd_addr      = cam_match_addr;
	lut_wr_en_next   = 1'b0;
	lut_wr_data_next = {val_latched, key_latched};      
	
	reset_count_inc      = 0;
	latch_key            = 0;
	lookup_done_next     = 0;
	lut_miss_next	     = 0;
	lut_hit_next	     = 0;

	pointer_add_cam_next = pointer_add_cam;
	lookup_state_next = lookup_state;

	if (lookup_state == RESET) begin
		if (!cam_we 
			&& !cam_busy && reset_count < LUT_DEPTH-1) begin
			cam_wr_addr_next = reset_count;
			cam_we_next = 1;
			cam_din_next = 0;

			reset_count_inc = 1;
			lut_wr_addr_next = reset_count;
			lut_wr_data_next = 0;
			lut_wr_en_next = 1;
   		end else if (!cam_we 
				&& !cam_busy && reset_count == LUT_DEPTH-1) begin
			cam_wr_addr_next = reset_count;
			cam_we_next = 1;
			cam_din_next = ~96'h0;
			
			reset_count_inc = 1;
			// write the broadcast address
			lut_wr_addr_next = reset_count;
			lut_wr_data_next = {32'h0, ~96'h0};
			lut_wr_en_next = 1;
		end else if (!cam_we && !cam_busy) begin
			lookup_state_next = IDLE;
		end
	end else begin
		//cam_cmp_din = in_key;
		//if (in_op[0] == SET_REQ && in_valid)
		//	cam_din_next = in_key;
		//if (in_valid) begin
		//	latch_key = 1;
		//end
		//cam_cmp_din = lookup_key_stage5;
		cam_cmp_din = in_key;
		if (lookup_done && lut_miss && lookup_op_stage5 == SET_REQ)
			cam_din_next = lookup_key_stage5;
		if (lookup_done && lut_miss && lookup_op_stage5 == SET_REQ) begin
			latch_key = 1;
		end

		if (lookup_req_stage4) begin
			lookup_done_next = 1;

			if (cache_hit_stage2) begin
				// Cache
				lut_hit_next = 1;
			end else begin
				if (!cam_match) 
					lut_miss_next = 1;
				else
					lut_hit_next = 1;
			end
			// CMD wr is issued when every lookup is finished.
			//if (!cam_busy ) begin
			//	lut_wr_addr_next = pointer_add_cam;
			//	lut_wr_en_next   = 1;
			//	cam_we_next      = 1;
			//	if (pointer_add_cam == LUT_DEPTH-2)
			//		pointer_add_cam_next = 0;
			//	else
			//		pointer_add_cam_next = pointer_add_cam + 1;
			//end
		end
		//if (in_valid && in_op[0] == SET_REQ && !cam_busy) begin
		if (lookup_done && lut_miss && lookup_op_stage5 == SET_REQ && !cam_busy && !write_fin) begin
			lut_wr_addr_next = pointer_add_cam;
			lut_wr_en_next   = 1;
			cam_we_next      = 1;
			if (pointer_add_cam == LUT_DEPTH-2) begin
				pointer_add_cam_next = 0;
				write_fin_next = 1;
			end else
				pointer_add_cam_next = pointer_add_cam + 1;
		end
	end
end


always @ (posedge clk156) begin
	if (rst) begin
		lut_rd_data   <= 0;
		reset_count   <= 0;
		val_latched   <= 0;
		key_latched   <= 0;
		lookup_done   <= 0;
		lut_miss     <= 0;
		lut_hit	   <= 0;
		
		cam_wr_addr   <= 0;
		cam_din       <= 0;
		cam_we        <= 0;
		
		lut_wr_en     <= 0;
		lut_wr_data   <= 0;
		lut_wr_addr   <= 0;
		
		pointer_add_cam  <= 0;
		
		lookup_state  <= RESET;
		write_fin <= 0;
	end else begin
		reset_count  <= (reset_count_inc) ? reset_count + 1 : reset_count;
		//val_latched  <= (latch_key) ? in_value : val_latched;
		//key_latched  <= (latch_key) ? in_key : key_latched;
		val_latched  <= (latch_key) ? lookup_val_stage5: val_latched;
		key_latched  <= (latch_key) ? lookup_key_stage5 : key_latched;
		lookup_done  <= lookup_done_next;
		
		pointer_add_cam   <= pointer_add_cam_next;
		
		lut_rd_data       <= lut[lut_rd_addr];
		if (lut_wr_en) begin
		   lut[lut_wr_addr] <= lut_wr_data;
		end
		
		cam_wr_addr    <= cam_wr_addr_next;
		cam_din        <= cam_din_next;
		cam_we         <= cam_we_next;
		
		lut_wr_en      <= lut_wr_en_next;
		lut_wr_data    <= lut_wr_data_next;
		lut_wr_addr    <= lut_wr_addr_next;
		
		lookup_state   <= lookup_state_next;
		lut_miss       <= lut_miss_next;
		lut_hit	     <= lut_hit_next;
		
		write_fin <= write_fin_next; 
	end
end

// ----------------------------------------------------
//   To MAC layer 
// ----------------------------------------------------
assign out_valid = lookup_done && lookup_op_stage5 == GET_REQ;
assign out_flag  = (lut_hit) ? 4'b0001 : 4'b0000;


// ----------------------------------------------------
//   CAM instance
//      Configuratoin  : 1024 entry x 96bit width 
//      Type           : BCAM ? TCAM ?
// ----------------------------------------------------
ncams #(
	.MEM_TYPE                (1),
	.CAM_MODE                (0),
	.ID_BITS                 (5),
    .TCAM_ADDR_WIDTH         (5),
    .TCAM_DATA_WIDTH         (96),
    .TCAM_ADDR_TYPE          (0),
    .TCAM_MATCH_ADDR_WIDTH   (5)
) u_ncams (
	.clk                     ( clk156         ),
	.rst                     ( rst            ),
    .we                      ( cam_we         ),
    .addr_wr                 ( cam_wr_addr    ),
    .din                     ( cam_din        ),
    .busy                    ( cam_busy       ),
    .cmp_din                 ( cam_cmp_din    ),
    .match                   ( cam_match      ),
    .match_addr              ( cam_match_addr ) 
);

// ----------------------------------------------------
//   Debug :
// ----------------------------------------------------
`ifndef SIMULATION_DEBUG
ila_0 u_ila (
	.clk     (clk156), // input wire clk
	/* verilator lint_off WIDTH */
	.probe0  ({ // 256pin
		//126'd0       ,
		//in_hash      ,
		//in_key       ,
		//in_value     ,
		in_valid     ,// 1
		in_op        ,// 4
	    out_valid    ,// 1
	    out_flag     ,// 4
		cam_match_addr, // 10
		lut_miss,
		lut_hit,
		cam_din, // 96
		cam_we
	})
	/* verilator lint_on WIDTH */
);
`endif 

endmodule
