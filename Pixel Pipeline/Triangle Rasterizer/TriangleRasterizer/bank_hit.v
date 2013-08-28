module bank_hit(
	clk,
	rst,
	tag_in,
	bank_tag_0,
	bank_tag_1,
	bank_tag_2,
	bank_tag_3,
	hit,
	select
);
	input clk;
	input rst;
	input [8:0] tag_in;
	input [8:0] bank_tag_0;
	input [8:0] bank_tag_1;
	input [8:0] bank_tag_2;
	input [8:0] bank_tag_3;

	output reg hit;
	output reg [3:0] select;

	wire bank0_hit = (tag_in == bank0_tag);
	wire bank1_hit = (tag_in == bank1_tag);
	wire bank2_hit = (tag_in == bank2_tag);
	wire bank3_hit = (tag_in == bank3_tag);
	always @(*)begin
		if(rst)begin
			bank_select <= 4'b0000;
			hit <= 0;
		end else begin
			hit <= bank3_hit | bank2_hit | bank1_hit | bank0_hit;
			select <= {bank3_hit, bank2_hit, bank1_hit, bank0_hit};
		end
	end

endmodule
