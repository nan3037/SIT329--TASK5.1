
// 3-bit up/down counter
`timescale 1ns/1ns

module threeBitUpDown_counter(
  input clk, 
  input rst, 
  input down,
  input up, 
  output reg[2:0] count);
  
  reg[2:0] i;
  
  always @(posedge (clk) or posedge(rst))
    
  begin
    
      if(rst == 1) 
        i = 0;
    
      else if(up == 1) 
        if(count == 7) 
           i = 0;
        else 
           i= i + 1;
       
       else if(down == 1) 
        if(count ==0) 
           i = 7; 
        else
           i= i - 1;
        
      count = i;
  end
  
endmodule 

