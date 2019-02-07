module Homework1(
	input x3,
	input x2,
	input x1,
	input x0,
	output out);

	wire w1;
	wire w2;
	wire w3;
	wire w4;

	and g1(w1, x3, x1);
	not g2(w2, x1);
	and g3(w3, x3, x2);
	and g4(w4, w3, w2);
	or g5(out, w1, w4);

endmodule

module Test;

	wire out;
	reg x3, x2, x1, x0;

	Homework1 circuit(x3, x2, x1, x0, out);

	initial begin

		$monitor("%d in=%b%b%b%b out=%b", 
			$time,
			x3, x2, x1, x0, out);

		#10 {x3, x2, x1, x0} = 0;
		#10 {x3, x2, x1, x0} = 1;
		#10 {x3, x2, x1, x0} = 2;
		#10 {x3, x2, x1, x0} = 3;
		#10 {x3, x2, x1, x0} = 4;
		#10 {x3, x2, x1, x0} = 5;
		#10 {x3, x2, x1, x0} = 6;
		#10 {x3, x2, x1, x0} = 7;
		#10 {x3, x2, x1, x0} = 8;
		#10 {x3, x2, x1, x0} = 9;
		#10 {x3, x2, x1, x0} = 10;
		#10 {x3, x2, x1, x0} = 11;
		#10 {x3, x2, x1, x0} = 12;
		#10 {x3, x2, x1, x0} = 13;
		#10 {x3, x2, x1, x0} = 14;
		#10 {x3, x2, x1, x0} = 15;
		#10 $finish; 

	end
endmodule