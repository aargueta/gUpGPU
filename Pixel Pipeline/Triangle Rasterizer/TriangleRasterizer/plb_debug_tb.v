// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

module TEST_gate;
    wire gclk;
    wire err_en;
    wire [11:0] err_ctrl;  
    wire sh_rst;
    wire c_en;
    wire [31:0] dump_en;  
    wire [15:0] dbg2;
    wire [7:0] dbg3;  
    reg [31:0] sh_out;  
    reg [31:0] sh_out_vld; 
    reg [31:0] sh_out_done;
    reg [7:0] dbg3_out; 
    

    plb_debug_state_reader uut (
      .gclk(gclk),
      .err_en(err_en),
      .err_ctrl(err_ctrl),
      .sh_rst(sh_rst),
      .c_en(c_en),
      .dump_en(dump_en),
      .dbg2(dbg2),
      .dbg3(dbg3),
      .sh_out(sh_out),
      .sh_out_vld(sh_out_vld),
      .sh_out_done(sh_out_done),
      .dbg3_out(dbg3_out)
    );    
    


   // The following code initializes the Global Set Reset (GSR) and Global Three-State (GTS) nets
   // Refer to the Synthesis and Simulation Design Guide for more information on this process
   reg GSR;
   assign glbl.GSR = GSR;
   reg GTS;
   assign glbl.GTS = GTS;

   initial begin
      GSR = 1;
      GTS = 0; // GTS is not activated by default
      #100; // GSR is set for 100 ns
      GSR = 0;

      sh_out = 0;
      sh_out_vld = 0;
      sh_out_done = 0;
      dbg3_out = 0;

   end

  endmodule
