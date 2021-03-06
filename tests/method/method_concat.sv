//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// SystemC signals
logic [31:0] i1;
logic [31:0] i2;
logic [31:0] i3;
logic [31:0] i4;
logic [31:0] o1;
logic [31:0] o2;
logic [31:0] o3;
logic [31:0] o4;


//------------------------------------------------------------------------------

A a_mod
(
  .i1(i1),
  .i2(i2),
  .i3(i3),
  .i4(i4),
  .o1(o1),
  .o2(o2),
  .o3(o3),
  .o4(o4)
);

endmodule



//==============================================================================
//
// Module: A (test_concat.cpp:186:5)
//
module A // "b_mod.a_mod"
(
    input logic [31:0] i1,
    input logic [31:0] i2,
    input logic [31:0] i3,
    input logic [31:0] i4,
    output logic [31:0] o1,
    output logic [31:0] o2,
    output logic [31:0] o3,
    output logic [31:0] o4
);

// SystemC signals
logic signed [31:0] o6;
logic signed [31:0] o7;
logic signed [31:0] o8;
logic s1;
logic signed [7:0] s2;
logic signed [31:0] s3;
logic [31:0] s4;
logic signed [63:0] s5;

//------------------------------------------------------------------------------
// Method process: concat_cpp (test_concat.cpp:74:5) 

always_comb 
begin : concat_cpp     // test_concat.cpp:74:5
    logic b;
    logic c;
    integer i;
    logic y;
    logic [32:0] by;
    logic [15:0] z;
    logic [39:0] bz;
    b = s1;
    c = s1;
    i = s3;
    y = s2;
    by = s5;
    z = 0;
    bz = 0;
    z = {b, y};
    z = {b, 1'd0};
    z = {{y, 1}, b};
    z = {y, |i};
    z = {|i, y};
    z = {|s3, y};
    z = {y, |s3};
    z = {y, |s4};
    z = {{|s5, y}, |s4};
    b;
    z = 1;
    b;
    z = c;
    i;
    z = c;
    s1;
    z = s2;
    i;
    z = s2;
    s3;
    s4;
    z = {|s5, y};
    bz = {by, 1};
    bz = {by, |s5};
    bz = {by, y};
    bz = {by, |i};
    bz = {b, by};
    bz = {|s4, by};
    bz = {{1, by}, |i};
end

//------------------------------------------------------------------------------
// Method process: concat_compl (test_concat.cpp:116:5) 

always_comb 
begin : concat_compl     // test_concat.cpp:116:5
    logic b;
    logic c;
    integer i;
    logic y;
    logic [11:0] yy;
    logic [32:0] by;
    logic [15:0] z;
    logic [39:0] bz;
    b = s1;
    c = s1;
    i = s3;
    y = s2;
    yy = s2;
    by = s5;
    z = 0;
    bz = 0;
    z = {{c, y}, {s1, yy}};
    z = {{|i, yy}, yy};
    bz = {yy++, by};
    bz = {by, 5'd11};
end

//------------------------------------------------------------------------------
// Method process: bit_range_sel (test_concat.cpp:134:5) 

// Process-local variables
logic signed [3:0] t;
logic signed [3:0] x;
logic signed [3:0] tb;
logic signed [3:0] xb;
logic [7:0] y1;
logic [7:0] y2;
logic [7:0] x1;
logic [7:0] x2;

always_comb 
begin : bit_range_sel     // test_concat.cpp:134:5
    t = 1;
    x = 2;
    tb = 1;
    xb = 2;
    y1 = i1;
    y2 = i2;
    {x1, x2} = {y1, y2};
    o1 = x1;
    o2 = x2;
end

//------------------------------------------------------------------------------
// Method process: bit_range_sel2 (test_concat.cpp:150:5) 

// Process-local variables
logic signed [3:0] t;
logic signed [3:0] x;

always_comb 
begin : bit_range_sel2     // test_concat.cpp:150:5
    logic [7:0] a;
    t = 1;
    x = 2;
    a = {t, x};
    o3 = {t, 4'(t * x)};
    o4 = {4'(t), 4'(t * x)};
end

//------------------------------------------------------------------------------
// Method process: bit_range_sel3 (test_concat.cpp:161:5) 

// Process-local variables
logic signed [3:0] t;
logic signed [3:0] x;
logic signed [3:0] tb;
logic signed [3:0] xb;

always_comb 
begin : bit_range_sel3     // test_concat.cpp:161:5
    t = 1;
    x = 2;
    tb = 1;
    xb = 2;
    o6 = {t, 4'(tb * xb)};
    o7 = {3'(x >>> 1), t};
    o8 = {t, 5'(xb >>> 1)};
end

endmodule


