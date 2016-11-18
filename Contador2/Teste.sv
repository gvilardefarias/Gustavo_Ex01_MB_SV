module Teste;
    logic clk, rst;
    wire[3:0] s;

    initial begin
        clk = 0;
        rst = 1;
        
        #10;
        rst = 0;

        $display(s);

        repeat(100) begin
            if(clk)
                $display(s);
            
            clk = ~clk;
            #10;
        end
    end

    Contador2 c1(.clk(clk), .s(s), .rst(rst));
endmodule