module Teste;
    logic clk, rst;
    wire[3:0] s1, s2;

    initial begin
        clk = 0;
        rst = 1;

        #10;
        rst = 0;

        $display("C1: %d | C2: %d", s1, s2);

        repeat(100) begin
            if(clk)
                $display("C1: %d | C2: %d", s1, s2);
            
            clk = ~clk;
            #10;
        end
    end

    Contador1 c1(.clk(clk), .s(s1), .rst(rst));
    Contador2 c2(.clk(clk), .s(s2), .rst(rst));
endmodule