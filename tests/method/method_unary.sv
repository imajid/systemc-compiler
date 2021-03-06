//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_mod"
(
);

// SystemC signals
logic signed [31:0] a;
logic signed [31:0] b;
logic signed [31:0] c;
logic [31:0] d;

//------------------------------------------------------------------------------
// Method process: narrowCastNeg (test_unary.cpp:45:5) 

always_comb 
begin : narrowCastNeg     // test_unary.cpp:45:5
    logic signed [7:0] k1;
    integer ki;
    logic signed [7:0] k2;
    k1 = -11'sd541;
    assert (k1 == -6'sd29) else $error("Assertion failed at test_unary.cpp:40:24>");
    ki = ((-2'sd1) <<< 32) - 123;
    assert (ki == -8'sd123) else $error("Assertion failed at test_unary.cpp:40:24>");
    k2 = (-8'sd211) * 14 + (-9'sd211) + (-16'sd211);
    assert (k2 == -7'sd48) else $error("Assertion failed at test_unary.cpp:40:24>");
end

//------------------------------------------------------------------------------
// Method process: negativeLiterals (test_unary.cpp:61:5) 

always_comb 
begin : negativeLiterals     // test_unary.cpp:61:5
    integer i;
    logic signed [3:0] x;
    logic signed [7:0] y;
    logic signed [7:0] j;
    i = -2'sd1;
    x = -3'sd2;
    y = -3'sd3;
    i = (-4'sd4) * (-4'sd5);
    i = -3'sd2;
    i = -12'sd2;
    i = (-4'sd2) - 2 * (-3'sd2);
    assert (i == 2) else $error("Assertion failed at test_unary.cpp:40:24>");
    j = 0;
    j = -8'sd211;
    assert (j == 45) else $error("Assertion failed at test_unary.cpp:40:24>");
end

//------------------------------------------------------------------------------
// Method process: minus1 (test_unary.cpp:79:5) 

always_comb 
begin : minus1     // test_unary.cpp:79:5
    integer i;
    integer j;
    integer unsigned u;
    logic signed [8:0] x;
    logic signed [15:0] z;
    logic signed [43:0] zz;
    i = -8'sd111;
    j = -i;
    assert (j == 111) else $error("Assertion failed at test_unary.cpp:40:24>");
    j = -(-i) + 1;
    assert (j == -8'sd110) else $error("Assertion failed at test_unary.cpp:40:24>");
    u = -i;
    assert (u == 111) else $error("Assertion failed at test_unary.cpp:40:24>");
    u = (-i) * 2;
    assert (u == 222) else $error("Assertion failed at test_unary.cpp:40:24>");
    x = 211;
    assert (x == 211) else $error("Assertion failed at test_unary.cpp:40:24>");
    x = -9'sd211;
    assert (x == -9'sd211) else $error("Assertion failed at test_unary.cpp:40:24>");
    x = 1 + 211;
    assert (x == 212) else $error("Assertion failed at test_unary.cpp:40:24>");
    x = 10'(211 + 1) / 2;
    assert (x == 106) else $error("Assertion failed at test_unary.cpp:40:24>");
    z = -9'sd211;
    assert (z == -9'sd211) else $error("Assertion failed at test_unary.cpp:40:24>");
    z = 211;
    assert (z == 211) else $error("Assertion failed at test_unary.cpp:40:24>");
    zz = 0;
    zz = -z - -x;
    assert (zz == -8'sd105) else $error("Assertion failed at test_unary.cpp:40:24>");
end

//------------------------------------------------------------------------------
// Method process: increment1 (test_unary.cpp:113:5) 

always_comb 
begin : increment1     // test_unary.cpp:113:5
    integer i;
    integer unsigned j;
    integer k1;
    integer unsigned k2;
    logic signed [8:0] x;
    logic [16:0] ux;
    logic signed [17:0] z;
    i = 1;
    j = 2;
    i--;
    j++;
    k1 = ++i;
    k2 = --j;
    assert (k1 == 1) else $error("Assertion failed at test_unary.cpp:40:24>");
    assert (k2 == 2) else $error("Assertion failed at test_unary.cpp:40:24>");
    x = -9'sd211;
    x++;
    assert (x == -9'sd210) else $error("Assertion failed at test_unary.cpp:40:24>");
    ++x;
    assert (x == -9'sd209) else $error("Assertion failed at test_unary.cpp:40:24>");
    x--;
    assert (x == -9'sd210) else $error("Assertion failed at test_unary.cpp:40:24>");
    --x;
    assert (x == -9'sd211) else $error("Assertion failed at test_unary.cpp:40:24>");
    ux = 211;
    ux++;
    assert (ux == 212) else $error("Assertion failed at test_unary.cpp:40:24>");
    ++ux;
    assert (ux == 213) else $error("Assertion failed at test_unary.cpp:40:24>");
    ux--;
    assert (ux == 212) else $error("Assertion failed at test_unary.cpp:40:24>");
    --ux;
    assert (ux == 211) else $error("Assertion failed at test_unary.cpp:40:24>");
    z = signed'({1'b0, (ux++)}) - (x--);
    assert (z == 422) else $error("Assertion failed at test_unary.cpp:40:24>");
    z = signed'({1'b0, (--j) * 2}) + 10'(++x) / (i--);
    assert (z == -9'sd209) else $error("Assertion failed at test_unary.cpp:40:24>");
end

//------------------------------------------------------------------------------
// Method process: increment2 (test_unary.cpp:149:5) 

always_comb 
begin : increment2     // test_unary.cpp:149:5
    integer i;
    integer unsigned j;
    integer k1;
    integer unsigned k2;
    i = a;
    j = a;
    i--;
    j++;
    k1 = ++i;
    k2 = --j;
    b = k1;
    b = k2;
    b = i++;
    b = --j;
end

//------------------------------------------------------------------------------
// Method process: plus1 (test_unary.cpp:166:5) 

always_comb 
begin : plus1     // test_unary.cpp:166:5
    integer i;
    integer unsigned j;
    integer k1;
    integer unsigned k2;
    logic signed [8:0] x;
    logic signed [17:0] z;
    i = -a;
    j = a;
    k1 = i + signed'({1'b0, (-j)});
    k2 = signed'({1'b0, j}) + i;
    c = -k1;
    c = k2;
    i = -9'sd211;
    assert (i == -9'sd211) else $error("Assertion failed at test_unary.cpp:40:24>");
    x = 21;
    assert (x == 21) else $error("Assertion failed at test_unary.cpp:40:24>");
    z = x;
    assert (x == 21) else $error("Assertion failed at test_unary.cpp:40:24>");
    z = x - i;
    assert (z == 232) else $error("Assertion failed at test_unary.cpp:40:24>");
    z = i * x;
    assert (z == -14'sd4431) else $error("Assertion failed at test_unary.cpp:40:24>");
end

//------------------------------------------------------------------------------
// Method process: not1 (test_unary.cpp:193:5) 

// Process-local variables
logic signed [31:0] k;
logic signed [31:0] m;

always_comb 
begin : not1     // test_unary.cpp:193:5
    logic l1;
    logic l2;
    logic l3;
    logic l4;
    logic ll1;
    logic ll2;
    integer unsigned x;
    integer unsigned y;
    integer unsigned z;
    logic [7:0] t;
    l1 = a == b;
    l2 = !l1;
    l3 = l2 || !(k == m);
    l4 = !(l2 && !l3);
    k = l4 || !l3;
    l2 = !l2;
    ll1 = 1;
    ll2 = ~ll1;
    d = !l2 + ~ll2;
    x = 43;
    y = ~x;
    z = ~y;
    assert (z == 43) else $error("Assertion failed at test_unary.cpp:40:24>");
    z = (~y) - 1;
    z = ~(x++) + -(~y);
    t = a;
    z = (~a) - signed'({1'b0, (~(~t))});
end

//------------------------------------------------------------------------------
// Method process: unary_in_subscript (test_unary.cpp:218:5) 

always_comb 
begin : unary_in_subscript     // test_unary.cpp:218:5
    logic [3:0] arr1[4];
    logic arr2[16];
    integer arr3[4];
    integer i;
    integer unsigned j;
    logic [3:0] x;
    logic bb;
    arr1[0] = 1; arr1[1] = 2; arr1[2] = 3; arr1[3] = 4;
    arr2[0] = 1; arr2[1] = 0; arr2[2] = 1;
    i = 0;
    j = 1;
    x = arr1[++i];
    assert (x == 2) else $error("Assertion failed at test_unary.cpp:40:24>");
    x = arr1[-i + 4];
    assert (x == 4) else $error("Assertion failed at test_unary.cpp:40:24>");
    x = arr1[i-- + ++j];
    assert (x == 4 && j == 2) else $error("Assertion failed at test_unary.cpp:40:24>");
    bb = arr2[j];
    assert (bb == 1) else $error("Assertion failed at test_unary.cpp:40:24>");
    bb = arr2[--j];
    assert (bb == 0) else $error("Assertion failed at test_unary.cpp:40:24>");
    arr3[a] = 1;
    bb = |arr3[0];
end

endmodule


