module tb_4bit_compare;

    // Inputs
    reg [3:0] a;
    reg [3:0] b;

    // Outputs
    wire XeY;
    wire XgY;
    wire XsY;

    integer i;
    integer j;

    4bit_caompare uut (
        .X(a), 
        .Y(b), 
        .XeY(XeY);
        .XgY(XgY);
        .XsY(XsY);
    );

    initial begin
        for (i=0;i<16;i=i+1) begin
            for (j = 0;j < 10; j=j+1) begin
                a = i;
                b = j;
                #10; //wait for 10 ns
            end
        end
    end
      
endmodule