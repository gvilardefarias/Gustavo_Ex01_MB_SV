module Contador1(input logic clk, rst, output logic[3:0] s);
    logic direction;

    always_ff @(posedge clk or posedge rst)
        if(rst) begin
            s <= 4'd0;
            direction <= 1'b0;
        end
        else begin
          if(direction || s==4'd15)
                s <= s - 4'd1;
         else
           if(!direction || s==4'd0)
                s <= s + 4'd1;

          if(s==4'd15 && !direction)
                direction <= 1'b1;
          if(s==4'd0 && direction)
                direction <= 1'b0;
        end
endmodule
