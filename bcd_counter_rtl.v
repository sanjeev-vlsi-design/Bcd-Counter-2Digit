module bcd_counter_rtl(
    input wire clk,        
    input wire rst,      
    output reg [3:0] tens,  
    output reg [3:0] units  
);

    always @(posedge clk or posedge rst)
      begin
        if (rst)
          begin
            tens <= 4'd0;
            units <= 4'd0;
        end
         else
           begin
            if (units == 4'd9)
               begin
                units <= 4'd0;
                if (tens == 4'd9)
                   begin
                    tens <= 4'd0;
                end
                  else
                     begin
                    tens <= tens + 4'd1;
                end
            end
             else  
                begin
                units <= units + 4'd1;
            end
        end
    end
endmodule
