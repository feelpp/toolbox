myh = 0.05;
hsmall = 0.01;
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
Point(13) = {-1.5, 2.2, -0, myh};
Point(14) = {-1.5, 1.2, -0, myh};

Point(15) = {-0.75, 2.2, 0, hsmall};
Point(16) = {-0.7, 2.2, 0, hsmall};
//LINES
Line(1) = {14, 12};
Line(2) = {12, 1};

Line(3) = {1, 2};
Line(4) = {2, 3};
Line(5) = {3, 4};
Line(6) = {4, 5};
Line(7) = {5, 16};
Line(8) = {13, 14};
Line(9) = {6, 5};
Line(10) = {12, 11};
Line(11) = {11, 10};
Line(12) = {10, 9};
Line(13) = {9, 8};
Line(14) = {8, 7};
Line(15) = {7, 6};
Line(16) = {16,15};
Line(17) = {15,13};

//SURFACES

Line Loop(16) = {6, -9, -15, -14, -13, -12, -11, -10, 2, 3, 4, 5};
Plane Surface(17) = {16};

Line Loop(18) = {7, 16, 17, 8, 1, 10, 11, 12, 13, 14, 15, 9};
Plane Surface(19) = {18};

//PHYSICAL ENTITIES

// Prescribed pressure point

Physical Line("pressure") = {16};

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

