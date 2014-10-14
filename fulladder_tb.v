  /* Make a reset that pulses once. */
module test;
  reg  a = 0,b = 0, c = 0, d = 0,cin = 	0;
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,test);
        # 1 a = 0; b = 0; c = 0; d = 0; cin = 1;
        # 1 a = 0; b = 0; c = 0; d = 1; cin = 0;
        # 1 a = 0; b = 0; c = 0; d = 1; cin = 1;
        # 1 a = 0; b = 0; c = 1; d = 0; cin = 0;
        # 1 a = 0; b = 0; c = 1; d = 0; cin = 1;
        # 1 a = 0; b = 0; c = 1; d = 1; cin = 0;
        # 1 a = 0; b = 0; c = 1; d = 1; cin = 1;
		# 1 a = 0; b = 1; c = 0; d = 0; cin = 0;
        # 1 a = 0; b = 1; c = 0; d = 0; cin = 1;
        # 1 a = 0; b = 1; c = 0; d = 1; cin = 0;
        # 1 a = 0; b = 1; c = 0; d = 1; cin = 1;
        # 1 a = 0; b = 1; c = 1; d = 0; cin = 0;
        # 1 a = 0; b = 1; c = 1; d = 0; cin = 1;
        # 1 a = 0; b = 1; c = 1; d = 1; cin = 0;
		# 1 a = 0; b = 1; c = 1; d = 1; cin = 1;
        # 1 $finish;
    end

  wire out, out2;

  fa fa1 (out, cout, cin,a,b);
  fa fa2 (out2,cout_1, cout,c,d);

endmodule // test