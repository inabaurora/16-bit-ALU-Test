/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module answer_key_9 (
    input [3:0] num,
    input [15:0] aluval,
    input [5:0] alufnval,
    input [0:0] vval,
    output reg [0:0] result,
    output reg [6:0] overflow
  );
  
  
  
  localparam ADD = 6'h00;
  
  localparam SUB = 6'h01;
  
  localparam MUL = 6'h02;
  
  localparam AND = 6'h18;
  
  localparam OR = 6'h1e;
  
  localparam XOR = 6'h16;
  
  localparam ALDR = 6'h1a;
  
  localparam SHL = 6'h20;
  
  localparam SHR = 6'h21;
  
  localparam SRA = 6'h23;
  
  localparam CMPEQ = 6'h33;
  
  localparam CMPLT = 6'h35;
  
  localparam CMPLE = 6'h37;
  
  localparam C1ADD = 16'h00cf;
  
  localparam C1SUB = 16'hff3b;
  
  localparam C1MUL = 31'h423a317a;
  
  localparam C2ADD = 17'h0c000;
  
  localparam C2SUB = 16'h3ffe;
  
  localparam C2MUL = 31'h20003fff;
  
  localparam C3ADD = 32'hffff0001;
  
  localparam C3SUB = 16'hffff;
  
  localparam C3MUL = 32'h3fff8000;
  
  localparam C4AND = 16'h1124;
  
  localparam C4XOR = 16'h6cc8;
  
  localparam C4OR = 16'h7dec;
  
  localparam C4ALDR = 16'h71ac;
  
  localparam C5SHL = 16'hb4e0;
  
  localparam C5SHR = 16'h042d;
  
  localparam C5SRA = 16'hfc2d;
  
  localparam C6EQ = 16'h0000;
  
  localparam C6LT = 16'h0001;
  
  localparam C6LE = 16'h0001;
  
  localparam C7EQ = 16'h0001;
  
  localparam C7LT = 16'h0000;
  
  localparam C7LE = 16'h0001;
  
  localparam C8EQ = 16'h0000;
  
  localparam C8LT = 16'h0000;
  
  localparam C8LE = 16'h0000;
  
  localparam CORRECT = 1'h1;
  
  localparam INCORRECT = 1'h0;
  
  reg [6:0] o;
  
  reg [0:0] i;
  
  always @* begin
    result = 1'h0;
    i = 1'h0;
    if (num == 4'h0) begin
      if (alufnval == 6'h00) begin
        if ((aluval == 16'h00cf) & (vval == 1'h0)) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h01) begin
        if ((aluval == 16'hff3b) & (vval == 1'h0)) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h02) begin
        if ((aluval == 31'h423a317a) & (vval == 1'h0)) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
    end
    if (num == 4'h1) begin
      if (alufnval == 6'h00) begin
        if ((aluval == 17'h0c000) & (vval == 1'h0)) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h01) begin
        if ((aluval == 16'h3ffe) & (vval == 1'h0)) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h02) begin
        if ((aluval == 31'h20003fff) & (vval == 1'h0)) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
    end
    if (num == 4'h2) begin
      if (alufnval == 6'h00) begin
        if ((aluval == 32'hffff0001) & (vval == 1'h0)) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h01) begin
        if ((aluval == 16'hffff) & (vval == 1'h0)) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h02) begin
        if ((aluval == 32'h3fff8000) & (vval == 1'h0)) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
    end
    if (num == 4'h3) begin
      if (alufnval == 6'h18) begin
        if (aluval == 16'h1124) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h16) begin
        if (aluval == 16'h6cc8) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h1e) begin
        if (aluval == 16'h7dec) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h1a) begin
        if (aluval == 16'h71ac) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
    end
    if (num == 4'h4) begin
      if (alufnval == 6'h20) begin
        if (aluval == 16'hb4e0) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h21) begin
        if (aluval == 16'h042d) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h23) begin
        if (aluval == 16'hfc2d) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
    end
    if (num == 4'h5) begin
      if (alufnval == 6'h33) begin
        if (aluval == 16'h0000) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h35) begin
        if (aluval == 16'h0001) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h37) begin
        if (aluval == 16'h0001) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
    end
    if (num == 4'h6) begin
      if (alufnval == 6'h33) begin
        if (aluval == 16'h0001) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h35) begin
        if (aluval == 16'h0000) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h37) begin
        if (aluval == 16'h0001) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
    end
    if (num == 4'h7) begin
      if (alufnval == 6'h33) begin
        if (aluval == 16'h0000) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h35) begin
        if (aluval == 16'h0000) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
      if (alufnval == 6'h37) begin
        if (aluval == 16'h0000) begin
          result = 1'h1;
        end else begin
          result = 1'h0;
          i = 1'h1;
        end
      end
    end
    o = 7'h7f;
    if (i == 1'h1 & vval == 1'h1 & aluval[15+0-:1] == 1'h0) begin
      o = 7'h48;
    end
    if (i == 1'h1 & vval == 1'h1 & aluval[15+0-:1] == 1'h1) begin
      o = 7'h0c;
    end
    overflow = o;
  end
endmodule
