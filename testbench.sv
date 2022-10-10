`timescale 1ns/1ns

module threeBitUpDown_counter_tb();
   reg up;
   reg down;
   reg reset;
   reg clk;
  wire [2:0] counter;
  
  threeBitUpDown_counter c1(.up(up), .down(down), .rst(reset), .clk(clk), .count(counter));
  
   integer a;
   initial clk = 0;
   always 
   #20
   clk = ~clk;
   
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,threeBitUpDown_counter_tb); 
    
    up =0;
    down = 0;
    reset =0;
    #20
    $display("up = %d,down = %d, reset = %d, count = %d", up, down, reset, counter);
    
    
     up = 0;
     down = 0;
     reset = 1;
     #20
    $display("up = %d,down = %d, reset = %d, count = %d", up, down, reset, counter);
    
      up = 0;
      down = 1;
      reset = 0;
      #20
      $display("up = %d,down = %d, reset = %d, count = %d", up, down, reset, counter);

      up = 1;
      down = 0;
      reset = 0;
     #20
       $display("up = %d,down = %d, reset = %d, count = %d", up, down, reset, counter);
 
            
       up = 1;
       down = 1;
       reset = 1;
       #20
      $display("up = %d,down = %d, reset = %d, count = %d", up, down, reset, counter);
    

                
       up = 1;
       down = 1;
       reset = 0;
   	   #20
      $display("up = %d,down = %d, reset = %d, count = %d", up, down, reset, counter);
                
       $finish;
     end
     
     
endmodule
