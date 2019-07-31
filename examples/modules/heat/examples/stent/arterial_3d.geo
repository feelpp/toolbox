h = 1e-4;
R=1e-3;
lArtery= 9e-3; // hauteur
lStent = 6e-3;


// Circle 1
// Center Points of circle
Point(1) = {0, 0, 0, h};
// Points on circles
Point(2) = {R, 0, 0, h};
Point(3) = {-R, 0, 0, h};
Point(4) = {0,R, 0, h};
Point(5) = {0,-R, 0, h};
Circle(1) = {2, 1, 4};
Circle(2) = {4, 1, 3};
Circle(3) = {3, 1, 5};
Circle(4) = {5, 1, 2};
Line Loop(5) = {2, 3, 4, 1};

// Circle 2
// Center Points of circle
Point(6) = {0, 0, (lArtery-lStent)/2, h};
// Points on circles
Point(7) = {R, 0, (lArtery-lStent)/2, h};
Point(8) = {-R, 0, (lArtery-lStent)/2, h};
Point(9) = {0,R, (lArtery-lStent)/2, h};
Point(10) = {0,-R, (lArtery-lStent)/2, h};

Circle(6) = {7, 6, 9};
Circle(7) = {9, 6, 8};
Circle(8) = {8, 6, 10};
Circle(9) = {10, 6, 7};
Line Loop(10) = {7, 8, 9, 6};

Line (11) = {2, 7};
Line (12) = {4, 9};
Line (13) = {3, 8};
Line (14) = {5, 10};

Line Loop(11) = {11, 6, -12, -1};
Line Loop(12) = {12, 7, -13, -2};
Line Loop(13) = {13, 8, -14, -3};
Line Loop(14) = {14, 9, -11, -4};

Ruled Surface(1) = {11};
Ruled Surface(2) = {12};
Ruled Surface(3) = {13};
Ruled Surface(4) = {14};

//Surface(5) = {10};
Surface(6) = {5};

// Circle 3
// Center Points of circle
Point(11) = {0, 0, (lArtery+lStent)/2, h};
// Points on circles
Point(12) = {R, 0, (lArtery+lStent)/2, h};
Point(13) = {-R, 0, (lArtery+lStent)/2, h};
Point(14) = {0,R, (lArtery+lStent)/2, h};
Point(15) = {0,-R, (lArtery+lStent)/2, h};
Circle(15) = {12, 11, 14};
Circle(16) = {14, 11, 13};
Circle(17) = {13, 11, 15};
Circle(18) = {15, 11, 12};
Line Loop(19) = {16, 17, 18, 15};

Line(19) = {12, 7};
Line(20) = {14, 9};
Line(21) = {13, 8};
Line(22) = {15, 10};

Line Loop(20) = {19, 6, -20, -15};
Line Loop(21) = {20, 7, -21, -16};
Line Loop(22) = {21, 8, -22, -17};
Line Loop(23) = {22, 9, -19, -18};
Surface(7) = {20};
Surface(8) = {21};
Surface(9) = {22};
Surface(10) = {23};
Surface(11) = {19};


// Circle 4
// Center Points of circle
Point(16) = {0, 0, lArtery, h};
// Points on circles
Point(17) = {R, 0, lArtery, h};
Point(18) = {-R, 0, lArtery, h};
Point(19) = {0,R, lArtery, h};
Point(20) = {0,-R, lArtery, h};
Circle(23) = {17, 16, 19};
Circle(24) = {19, 16, 18};
Circle(25) = {18, 16, 20};
Circle(26) = {20, 16, 17};
Line Loop(27) = {24, 25, 26, 23};

Line(27) = {17, 12};
Line(28) = {19, 14};
Line(29) = {18, 13};
Line(30) = {20, 15};

Line Loop(28) = {27, 15, -28, -23};
Line Loop(29) = {28, 16, -29, -24};
Line Loop(30) = {29, 17, -30, -25};
Line Loop(31) = {30, 18, -27, -26};
Surface(12) = {28};
Surface(13) = {29};
Surface(14) = {30};
Surface(15) = {31};
Surface(16) = {27};


Surface Loop(4) = {1, 2, 3, 4, 6, 7, 10, 9, 8, 16, 13, 12, 15, 14};
Volume(4) = {4};
Physical Volume ("Fluid") = {4};
Physical Surface ("stent") = {7, 10, 9, 8};
Physical Surface("artery") = {13, 14, 12, 15, 2, 1, 4, 3};

Physical Surface("inflow") ={6};
Physical Surface("outflow") ={16};
