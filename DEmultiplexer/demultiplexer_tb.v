`timescale 1ns/1ps

module demultiplexer_tb;

reg D;
reg S1, S0;
wire Y0, Y1, Y2, Y3;

demultiplexer uut (
    .D(D),
    .S1(S1),
    .S0(S0),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin
    $monitor("Time=%0t D=%b S1=%b S0=%b | Y0=%b Y1=%b Y2=%b Y3=%b",
             $time, D, S1, S0, Y0, Y1, Y2, Y3);

    D = 1'b1;

    S1 = 1'b0; S0 = 1'b0;
    #10;

    S1 = 1'b0; S0 = 1'b1;
    #10;

    S1 = 1'b1; S0 = 1'b0;
    #10;

    S1 = 1'b1; S0 = 1'b1;
    #10;

    D = 1'b0;
    S1 = 1'b0; S0 = 1'b0;
    #10;

    $finish;
end

endmodule