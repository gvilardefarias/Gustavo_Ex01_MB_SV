module Contador(input logic clk, rst, output logic[4:0] s);
    logic direction;

    always @(posedge clk or posedge rst)
        if(rst) begin
            s = 4'd0;
            direction = 1'b0;
        end
        else begin
            if(direction)
                s = s - 4'd1;
            else
                s = s + 4'd1;

            if(s==4'd15 || s==4'd0)
                direction = ~direction;
        end
endmodule