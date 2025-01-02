module bcd_counter_tb();
reg clk;
    reg rst;
    wire [3:0] tens;
    wire [3:0] units;

    bcd_counter_rtl uut (
        .clk(clk),
        .rst(rst),
        .tens(tens),
        .units(units)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor($time, " ns | Rst=%b | Tens=%d | Units=%d", rst, tens, units);
        rst = 1;  
        #10;
        rst = 0;  
        #2000;
        $stop;
    end
endmodule