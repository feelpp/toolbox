myh = 0.05;
hsmall = 0.01;
mesh_hor1= 43;
mesh_vert = 15;
//POINTS
// Outer box
Point(1) = {0, 0, 0, myh};
Point(2) = {3.4, 0, 0, myh};
Point(3) = {3.4, 3.4, 0, myh};
Point(4) = {0, 3.4, 0, myh};
// Entry points
Point(5) = {0, 2.2, 0, myh};
Point(6) = {0.2, 2.2, 0, myh};
Point(11) = {0.2, 1.2, 0, myh};
Point(12) = {0, 1.2, 0, myh};
// Inner box
Point(7) = {0.2, 3.2, 0, myh};
Point(8) = {3.2, 3.2, 0, myh};
Point(9) = {3.2, 0.2, 0, myh};
Point(10) = {0.2, 0.2, 0, myh};
// Inlet points
Point(13) = {-2, 2.2, -0, myh};
Point(14) = {-2, 1.2, -0, myh};

Point(17) = {3.2,1.2,0, myh};
Point(18) = {3.2,2.2,0, myh};
/*
//LINES
Line(1) = {14, 12};
Line(2) = {12, 1};

Line(3) = {1, 2};
Line(4) = {2, 3};
Line(5) = {3, 4};
Line(6) = {4, 5};
//Line(7) = {5, 16};
Line(7) = {5, 3};
Line(8) = {13, 14};
Line(9) = {6, 5};
Line(10) = {12, 11};
Line(11) = {11, 10};
Line(12) = {10, 9};
Line(13) = {9, 8};
Line(14) = {8, 7};
Line(15) = {7, 6};
//Line(16) = {16,15};
//Line(17) = {15,13};
Line(16) = {16,13};
//SURFACES

Line Loop(16) = {6, -9, -15, -14, -13, -12, -11, -10, 2, 3, 4, 5};
Plane Surface(17) = {16};

//Line Loop(18) = {7, 16, 17, 8, 1, 10, 11, 12, 13, 14, 15, 9};
Line Loop(18) = {7, 16, 8, 1, 10, 11, 12, 13, 14, 15, 9};
Plane Surface(19) = {18};

//PHYSICAL ENTITIES

// Prescribed pressure point

//Physical Line("pressure") = {16};

// Inflow boundary "inlet"
Physical Line("inlet") = {8};

// No slip boundaries "wall"
Physical Line("wall") = {1,7, 17,16};

// No displacement boundary "fixed"
Physical Line("fixed") = {9, 10};

// FSI boundary "fsi"
Physical Line("fsi") = {15, 14, 13, 12, 11};

// Free solid boundary "free-solid"
Physical Line("free-solid") = {6, 5, 4, 3, 2};

Physical Surface("Fluid") = {19};
Physical Surface("Solid") = {17};

//Transfinite Line {16,8,1,7,17,16,9,10,15,14,13,12,11,6,5,4,3,2};

Transfinite Surface {19};
Transfinite Surface {17};
*/
Line(1) = {13, 5};
Line(2) = {13, 14};
Line(3) = {14, 12};
Line(4) = {12, 5};
Line Loop(5) = {2, 3, 4, -1};
Plane Surface(6) = {5};
Transfinite Line {1,3} = mesh_hor1 Using Progression 1;
//Transfinite Line {2,4} = 5 Using Progression 1;

//Transfinite Surface {6} Alternated;
Line(7) = {5, 6};
Line(8) = {6, 11};
Line(9) = {11, 12};
Line(10) = {6, 18};
Line(11) = {18, 17};
Line(12) = {17, 11};
Line(13) = {12, 1};
Line(14) = {1, 10};
Line(15) = {10, 11};
Line(16) = {10, 9};
Line(17) = {9, 2};
Line(18) = {2, 1};
Line(19) = {8, 18};
Line(20) = {17, 9};
Point(19) = {3.4, 1.2, -0, myh};
Point(20) = {3.4, 2.2, -0, myh};
Line(21) = {2, 19};
Line(22) = {19, 17};
Line(23) = {19, 20};
Line(24) = {20, 18};
Line(25) = {20, 3};
Line(26) = {3, 8};
Line(27) = {7, 6};
Line(28) = {5, 4};
Line(29) = {4, 7};
Line(30) = {7, 8};
Line(31) = {4, 3};
Line Loop(32) = {4, 7, 8, 9};
Plane Surface(33) = {32};



Line Loop(34) = {8, -12, -11, -10};
Plane Surface(35) = {34};
Line Loop(50) = {30, 19, -10, -27};
Line Loop(51) = {16, -20, 12, -15};
Plane Surface(52) = {51};
Plane Surface(53) = {50};

Line Loop(36) = {11, -22, 23, 24};
Plane Surface(37) = {36};
Line Loop(38) = {19, -24, 25, 26};
Plane Surface(39) = {38};
Line Loop(40) = {20, 17, 21, 22};
Plane Surface(41) = {40};
Line Loop(42) = {16, 17, 18, 14};
Plane Surface(43) = {42};
Line Loop(44) = {13, 14, 15, 9};
Plane Surface(45) = {44};
Line Loop(46) = {7, -27, -29, -28};
Plane Surface(47) = {46};
Line Loop(48) = {30, -26, -31, 29};
Plane Surface(49) = {48};



Transfinite Line {2,4,8,11,23} = mesh_vert Using Progression 1;
Transfinite Line {9,7,29,14,26,24,22,17} = 4 Using Progression 1;
Transfinite Line {18,31,16,12,10,30} = mesh_hor1 Using Progression 1;
Transfinite Line {28,27,19,25,13,15,20,21} = mesh_vert Using Progression 1;

Transfinite Surface "*" AlternateLeft;

Physical Line("inlet") = {2};

Physical Line("wall") = {1, 3};
Physical Line("fixed") = {7, 9};
Physical Line("fsi") = {27, 30, 19, 11, 20, 16, 15};
Physical Line("free-solid") = {28, 31, 25, 23, 21, 18, 13};
Physical Surface("Fluid") = {6, 33, 35, 53, 52};
Physical Surface("Solid") = {47, 49, 39, 37, 41, 43, 45};
