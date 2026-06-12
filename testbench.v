module tb_multiplier_32x32;

    reg [31:0] a;
    reg [31:0] b;
    wire [63:0] product;
    multiplier_32x32 uut (
        .a(a),
        .b(b),
        .product(product)
    );

    initial begin
        a = 32'b0;
        b = 32'b0;

        #10 a = 32'hA5A5A5A5; b = 32'h5A5A5A5A;
        #10 a = 32'hFFFFFFFF; b = 32'h1;
        #10 a = 32'h12345678; b = 32'h9ABCDEF0;
        #10 a = 32'h00000001; b = 32'h00000001;

        #10 $finish;
    end

    initial begin
        $monitor("a = %h, b = %h, product = %h", a, b, product);
    end

endmodule
