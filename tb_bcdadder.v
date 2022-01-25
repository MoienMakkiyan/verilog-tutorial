module tb_bcdadder;

    // Inputs
    reg [3:0] a;
    reg [3:0] b;
    reg carry_in;

    // Outputs
    wire [3:0] sum;
    wire carry;

    integer i;
    integer j;
    integer k;

    bcd_adder uut (
        .a(a), 
        .b(b), 
        .carry_in(carry_in), 
        .sum(sum), 
        .carry(carry)
    );

    initial begin
        for (i=0;i<16;i=i+1) begin
            for (j = 0;j < 10; j=j+1) begin
                for (k = 0;k < 2; k=k+1) begin
                    a = i;
                    b = j;
                    carry_in = k;
                    #10; //wait for 10 ns
                end
            end
        end
    end
      
endmodule