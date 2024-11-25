module fsm(
input logic clk,reset,a,b,
output logic y
    );
typedef enum logic[1:0] {s0,s1,s2} statetype;
statetype state,next_state;
always_ff@(posedge clk,posedge reset)
if(reset) state<=s0;
else state<=next_state;
always_comb
case(state)
s0:if(a) next_state=s1;
   else next_state=s0; 
s1:if(b) next_state=s2;
   else next_state=s0;
s2:next_state=s0;
default:next_state=s0;
endcase
assign y =(state == s2);
endmodule
