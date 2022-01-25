module mymodule(in1,in2,Clock,reset,out);
    input wire [7:0] in1,in2;
    input wire Clock,reset;
    output reg [2:0] out;
    reg [3:0] counter;
    reg isInitialized;
    reg stack [3:0];
    initial begin
        out = 3'b000;
        counter = 4'b0000;
        isInitialized = 0;
        stack[0]=1;
        stack[1]=1;
        stack[2]=1;
        stack[3]=1;
    end
    
endmodule