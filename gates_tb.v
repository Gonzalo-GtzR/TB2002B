// Code your testbench here
// or browse Examples


module gates_tb();
  
  reg A_reg;
  reg B_reg;
  
  wire [7:0] Z_wire;
  
  gates DUT(
    .A_in(A_reg),
    .B_in(B_reg),
    .Z_out(Z_wire)
  );
  
  
  initial
    begin
      
      A_reg = 0;
      B_reg = 0;
		#10;
      $display("Valor de A_reg = %0h; Valor de B_reg = %0h; Valor de Z_wire = %b",A_reg,B_reg,Z_wire);
      
		
      B_reg = 1;
		#10;
      $display("Valor de A_reg = %0h; Valor de B_reg = %0h; Valor de Z_wire = %b",A_reg,B_reg,Z_wire);
		
		A_reg = 1;
		#10;
      $display("Valor de A_reg = %0h; Valor de B_reg = %0h; Valor de Z_wire = %b",A_reg,B_reg,Z_wire);
	
      B_reg = 0;
		#10;
      $display("Valor de A_reg = %0h; Valor de B_reg = %0h; Valor de Z_wire = %b",A_reg,B_reg,Z_wire);
		
		#10;		
      $stop;
      $finish;
      
    end
  
  
  
endmodule