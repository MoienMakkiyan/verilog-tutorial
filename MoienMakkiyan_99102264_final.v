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
    always @(posedge Clock or reset) begin
        if (reset == 0) begin
            out = 3'b000;
        end
        else begin
            if (in1 == in2 && isInitialized ==0) begin
                counter = counter + 4'b0001;
                stack[counter] = 1;
            end
            else begin
                counter = 4'b0000;
            end
            if (counter == 4'b0100) begin
                isInitialized = 1;
            end
            if (isInitialized == 1) begin
                if (in1==in2) begin
                    stack[0]=stack[1];
                    stack[1]=stack[2];
                    stack[2]=stack[3];
                    stack[3]=1;
                end
                else begin
                    stack[0]=stack[1];
                    stack[1]=stack[2];
                    stack[2]=stack[3];
                    stack[3]=0;
                end
                counter = 4'b0000;
                if (stack[0]==1) begin
                    counter = counter + 4'b0001;
                end
                if (stack[1]==1) begin
                    counter = counter + 4'b0001;
                end
                if (stack[2]==1) begin
                    counter = counter + 4'b0001;
                end
                if (stack[3]==1) begin
                    counter = counter + 4'b0001;
                end
                out = counter;
            end
        end
    end
endmodule