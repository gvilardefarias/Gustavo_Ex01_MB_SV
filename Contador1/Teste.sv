module Teste;
    logic clk, rst;
    wire[4:0] s;

    initial begin
        clk = 0;
        rst = 1;
        #10;
        rst = 0;

        repeat(100) begin
            clk = ~clk;
            #10;
        end
    end

    Contador c1(.clk(clk), .s(s), .rst(rst));

    initial $monitor(s);
endmodule