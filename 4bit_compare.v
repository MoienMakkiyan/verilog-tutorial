module 4bit_caompare (X,Y,XeY,XsY,XgY);
input [3:0] X,Y;
output reg XeY,XsY,XgY;
always @(X,Y) begin
    XeY=1;
    XsY=0;
    XgY=0;
    for (integer i=3 ; i>-1 ; i--) begin
        if (X[i]>Y[i]) begin
            XeY=0;
            XgY=1;
        end
        if (X[i]<Y[i]) begin
            XeY=0;
            XsY=1;
        end
    end
end
endmodule