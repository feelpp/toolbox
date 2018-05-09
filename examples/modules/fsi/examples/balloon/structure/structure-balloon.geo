myh = 0.05;

Point(1) = {0, 0, 0, myh};
Point(2) = {1, 0, 0, myh};
Point(3) = {1, 1, 0, myh};
Point(4) = {5, 2.9, 0, myh};
Point(5) = {5, 3, 0, myh};
Point(6) = {1, 0.9, 0, myh};
Point(7) = {9, 0.9, 0, myh};
Point(8) = {9, 1, 0, myh};
Point(9) = {9, 0, 0, myh};
Point(10) = {10, 0, 0, myh};
Point(11) = {10, 1, 0, myh};
Point(12) = {5, 4, 0, myh};
Point(13) = {5, 4.1, 0, myh};
Point(14) = {0, 1, 0, myh};
Point(15) = {-0.1, 1, 0, myh};
Point(16) = {10.1, 1, 0, myh};

Line(1) = {14, 1};
Line(2) = {1, 2};
Line(3) = {2, 6};
Line(4) = {6, 3};
Line(5) = {14, 15};
Line(6) = {8, 7};

Line(8) = {9, 10};
Line(9) = {10, 11};
Line(10) = {11, 16};
Point(17) = {5, -2, 0, myh};
Circle(11) = {3, 17, 5};
Circle(14) = {5, 17, 8};
Point(18) = {5, -2.1, 0, myh};
Circle(15) = {6, 18, 4};
Circle(16) = {4, 18, 7};
Point(19) = {5, -1.6667, 0, 1.0};
Circle(17) = {14, 19, 12};
Circle(18) = {12, 19, 11};

Point(20) = {5, -1.64516, -0, 1.0};
Circle(19) = {15, 20, 13};
Circle(20) = {13, 20, 16};
Point(21) = {9, 0.5, 0, myh};
Point(22) = {9, 0.6, 0, myh};
Line(7) = {7, 22};
Line(21) = {21,22};
Line(22) = {21,9};


//Surfaces
Line Loop(28) = {17, 18, -9, -8, -22,21,-7, -6, -14, -11, -4, -3, -2, -1};
Plane Surface(29) = {28};
Line Loop(30) = {11, 14, 6, -16, -15, 4};
Plane Surface(31) = {30};
Line Loop(32) = {17, 18, 10, -20, -19, -5};
Plane Surface(33) = {32};

// PHYSICAL GROUPS

//Imposed-pressure line

Physical Line("pressure") = {21};

// Inlet1
Physical Line("inlet1") = {2};
// Inlet2
Physical Line("inlet2") = {8};
// No slip
Physical Line("wall") = {9, 7, 3, 1,22};
Physical Line("fsi-fluid")  = {4, 6};
// FSI boundary
Physical Line("fsi") = {11, 14, 18, 17};
// Free solid boundary
Physical Line("free-solid") = {19, 20, 16, 15};
// Fixed solid boundary
Physical Line("solid-fixed") = {4, 6, 5, 10};

Physical Surface("Fluid") = {29};
Physical Surface("Bottom-solid") = {31};
Physical Surface("Top-solid") = {33};

