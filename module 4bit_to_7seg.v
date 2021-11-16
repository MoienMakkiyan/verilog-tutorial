module 4bit_to_7seg (
    input wire [3:0] bits,
    output reg [6:0] 7seg1 , 7seg2;
);
    always @(*) begin
        case(bits)
            4'b0000: 7seg1 = 7'b0000000;
            4'b0001: 7seg1 = 7'b0000110;
            4'b0010: 7seg1 = 7'b1011011;
            4'b0011: 7seg1 = 7'b1001111;
            4'b0100: 7seg1 = 7'b1100110;
            4'b0101: 7seg1 = 7'b1101101;
            4'b0110: 7seg1 = 7'b1111101;
            4'b0111: 7seg1 = 7'b0000111;
            4'b1000: 7seg1 = 7'b1111111;
            4'b1001: 7seg1 = 7'b1101111;
            4'b1010: 7seg1 = 7'b0000000;
            4'b1011: 7seg1 = 7'b0000110;
            4'b1100: 7seg1 = 7'b1011011;
            4'b1101: 7seg1 = 7'b1001111;
            4'b1110: 7seg1 = 7'b1100110;
            4'b1111: 7seg1 = 7'b1101101;
                default : 7seg1 = 7'b0000000;
        endcase

        case(bits)
            4'b1010: 7seg2 = 7'b0000110;
            4'b1011: 7seg2 = 7'b0000110;
            4'b1100: 7seg2 = 7'b0000110;
            4'b1101: 7seg2 = 7'b0000110;
            4'b1110: 7seg2 = 7'b0000110;
            4'b1111: 7seg2 = 7'b0000110;
                 default : 7seg2 = 7'b0000000;
        endcase
    end
endmodule