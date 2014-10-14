  /* Make a reset that pulses once. */
module test;
  reg a = 0, b = 0, cin = 0 ;
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,test);
        # 1 a = 0; b = 0; cin = 1;
        # 1 a = 0; b = 1; cin = 0;
        # 1 a = 0; b = 1; cin = 1;
        # 1 a = 1; b = 0; cin = 0;
        # 1 a = 1; b = 0; cin = 1;
        # 1 a = 1; b = 1; cin = 0;
        # 1 a = 1; b = 1; cin = 1;
        # 1 $finish;
    end

  wire out, out2;
 // mux m1 (out, a, b, sel);
 //mux m2 (out2, out, out, sel);
  fa fa_1 (out, cout, cin,a,b);
  fa fa_2 (out_2, cout_2, out,a,b);

 /// initial
   //  $monitor("At time %t, out = %h (%0d)",
   //           $time, out, out);
endmodule // test