module Contador(input logic clk, rst, output logic[3:0] s);
    logic direction, go1, go2;

    always @(posedge clk or posedge rst)
        if(rst) begin
            s = 4'd0;
            direction = 1'b0;
            go1 = 1'b1;
            go2 = 1'b0;
        end
        else begin
            if(go1) begin
                if(direction)
                    s = s - 4'd1;
                else
                    s = s + 4'd1;

                go2 = 1'b1;
            end
            else
                go1 = 1'b1;

            if((s==4'd15 || s==4'd0) && go2) begin
                direction = ~direction;
                go1 = 1'b0;
                go2 = 1'b0;
            end
        end
endmodule