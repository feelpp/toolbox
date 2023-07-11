h=0.1;
htop=10*h;
H1 = 2;
H2 = 1;
H6 = 10;
V8 = 2;

// Points
Point(0) = {0,0,0,h};
Point(1) = {H2,0,0,h};
Point(2) = {H6,0,0,h};
Point(3) = {-H1,0,0,h};
Point(4) = {0,V8,0,htop};
Point(5) = {H2,V8,0,htop};
Point(6) = {H6,V8,0,htop};
Point(7) = {-H1,V8,0,htop};



Line(1) = {0,1};
Line(2) = {0, 3};
Line(3) = {3, 7};
Line(4) = {1, 2};
Line(5) = {2, 6};
Line(6) = {6, 5};
Line(7) = {5, 4};
Line(8) = {4, 7};

Point(8) = {-1, 0, 0, h};
Point(9) = {-1, 2, 0, htop};
Point(10) = {2, 0, 0, h};
Point(11) = {3, 0, 0, h};
Point(12) = {4, 0, 0, h};
Point(13) = {5, 0, 0, h};
Point(14) = {6, 0, 0, h};
Point(15) = {7, 0, 0, h};
Point(16) = {8, 0, 0, h};
Point(17) = {9, 0, 0, h};
Point(18) = {2, 2, 0, htop};
Point(19) = {3, 2, 0, htop};
Point(20) = {4, 2, 0, htop};
Point(21) = {5, 2, 0, htop};
Point(22) = {6, 2, 0, htop};
Point(23) = {7, 2, 0, htop};
Point(24) = {8, 2, 0, htop};
Point(25) = {9, 2, 0, htop};

Line(9) = {8, 9};
Line(10) = {0, 4};
Line(11) = {1, 5};
Line(12) = {10, 18};
Line(13) = {11, 19};
Line(14) = {12, 20};
Line(15) = {13, 21};
Line(16) = {14, 22};
Line(17) = {15, 23};
Line(18) = {16, 24};
Line(19) = {17, 25};



Physical Line("marker_L1") = {9};
Physical Line("marker_L2") = {10};
Physical Line("marker_L3") = {11};
Physical Line("marker_L4") = {12};
Physical Line("marker_L5") = {13};
Physical Line("marker_L6") = {14};
Physical Line("marker_L7") = {15};
Physical Line("marker_L8") = {16};
Physical Line("marker_L9") = {17};
Physical Line("marker_L10") = {18};
Physical Line("marker_L11") = {19};

Physical Point("pt1")={7};
Physical Point("pt2")={9};
Physical Point("pt3")={4};
Physical Point("pt4")={5};
Physical Point("pt5")={18};
Physical Point("pt6")={19};
Physical Point("pt7")={20};
Physical Point("pt8")={21};
Physical Point("pt9")={22};
Physical Point("pt10")={23};
Physical Point("pt11")={24};
Physical Point("pt12")={25};
Physical Point("pt13")={6};


Curve Loop(1) = {3, -8, -7, -6, -5, -4, -1, 2};
Plane Surface(1) = {1};
Delete {
  Surface{1}; 
}
Delete {
  Curve{2}; Curve{1}; Curve{8}; Curve{7}; Curve{6}; Curve{4}; Curve{3}; Curve{5}; 
}


Line(20) = {3, 7};
Line(21) = {2, 6};
Line(22) = {7, 9};
Line(23) = {9, 4};
Line(24) = {4, 5};
Line(25) = {5, 18};
Line(26) = {18, 19};
Line(27) = {19, 20};
Line(28) = {20, 21};
Line(29) = {21, 22};
Line(30) = {22, 23};
Line(31) = {23, 24};
Line(32) = {24, 25};
Line(33) = {25, 6};
Line(34) = {3, 8};
Line(35) = {8, 0};
Line(36) = {0, 1};
Line(37) = {1, 10};
Line(38) = {10, 11};
Line(39) = {11, 12};
Line(40) = {12, 13};
Line(41) = {13, 14};
Line(42) = {14, 15};
Line(43) = {15, 16};
Line(44) = {16, 17};
Line(45) = {17, 2};

Curve Loop(2) = {20, 22, -9, -34};
Plane Surface(1) = {2};

Curve Loop(3) = {9, 23, -10, -35};
Plane Surface(2) = {3};

Curve Loop(4) = {24, -11, -36, 10};
Plane Surface(3) = {4};

Curve Loop(5) = {11, 25, -12, -37};
Plane Surface(4) = {5};

Curve Loop(6) = {12, 26, -13, -38};
Plane Surface(5) = {6};

Curve Loop(7) = {27, -14, -39, 13};
Plane Surface(6) = {7};

Curve Loop(8) = {28, -15, -40, 14};
Plane Surface(7) = {8};

Curve Loop(9) = {15, 29, -16, -41};
Plane Surface(8) = {9};

Curve Loop(10) = {16, 30, -17, -42};
Plane Surface(9) = {10};

Curve Loop(11) = {17, 31, -18, -43};
Plane Surface(10) = {11};

Curve Loop(12) = {18, 32, -19, -44};
Plane Surface(11) = {12};

Curve Loop(13) = {19, 33, -21, -45};
Plane Surface(12) = {13};

Physical Surface("S1") = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
Physical Curve("marker_H1") = {34, 35};
Physical Curve("marker_inlet") = {20};
Physical Curve("marker_outlet") = {21};
Physical Curve("marker_H2") = {36};
Physical Curve("marker_wall") = {37, 38, 39, 40, 41, 42, 43, 44, 45};
Physical Curve("marker_top") = {22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33};

