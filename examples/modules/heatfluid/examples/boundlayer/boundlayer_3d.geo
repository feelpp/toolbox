h=0.1;
htop=10*h;
H1 = 2;
H2 = 1;
H6 = 10;
V8 = 2;
w = 0.1;

// Points
Point(0) = {0,0,0,h};
Point(1) = {H2,0,0,h};
Point(2) = {H6,0,0,h};
Point(3) = {-H1,0,0,h};
Point(4) = {0,V8,0,htop};
Point(5) = {H2,V8,0,htop};
Point(6) = {H6,V8,0,htop};
Point(7) = {-H1,V8,0,htop};

Point(8) = {0,0,w,h};
Point(9) = {H2,0,w,h};
Point(10) = {H6,0,w,h};
Point(11) = {-H1,0,w,h};
Point(12) = {0,V8,w,htop};
Point(13) = {H2,V8,w,htop};
Point(14) = {H6,V8,w,htop};
Point(15) = {-H1,V8,w,htop};

Line(1) = {0,1};
Line(2) = {0, 3};
Line(3) = {3, 7};
Line(4) = {0, 4};
Line(5) = {1, 5};
Line(6) = {1, 2};
Line(7) = {2, 6};
Line(8) = {6, 5};
Line(9) = {5, 4};
Line(10) = {4, 7};
Line(11) = {2, 10};
Line(12) = {10, 14};
Line(13) = {14, 6};
Line(14) = {14, 13};
Line(15) = {13, 5};
Line(16) = {13, 12};
Line(17) = {12, 4};
Line(18) = {12, 15};
Line(19) = {15, 7};
Line(20) = {15, 11};
Line(21) = {11, 3};
Line(22) = {11, 8};
Line(23) = {8, 0};
Line(24) = {8, 9};
Line(25) = {9, 1};
Line(26) = {10, 9};
Line(27) = {9, 13};
Line(28) = {12, 8};
Line(29) = {4,6};
Line(30) = {12,14};

Curve Loop(1) = {14, -27, -26, 12};
Curve Loop(2) = {27, 16, 28, 24};
Curve Loop(3) = {-28, 18, 20, 22};
Curve Loop(4) = {3, -10, -4, 2};
Curve Loop(5) = {4, -9, -5, -1};
Curve Loop(6) = {5, -8, -7, -6};
Curve Loop(7) = {20, 21, 3, -19};
Curve Loop(8) = {23, 4, -17, 28};
Curve Loop(9) = {15, -5, -25, 27};
Curve Loop(10) = {12, 13, -7, 11};
Curve Loop(11) = {26, 25, 6, 11};
Curve Loop(12) = {25, -1, -23, 24};
Curve Loop(13) = {2, -21, 22, 23};
Curve Loop(14) = {18, 19, -10, -17};
Curve Loop(15) = {16, 17, -9, -15};
Curve Loop(16) = {13, 8, -15, -14};
Curve Loop(17) = {30,13,-29,-17};

Surface(1) = {1};
Surface(2) = {2};
Surface(3) = {3};
Surface(4) = {4};
Surface(5) = {5};
Surface(6) = {6};
Surface(7) = {7};
Surface(8) = {8};
Surface(9) = {9};
Surface(10) = {10};
Surface(11) = {11};
Surface(12) = {12};
Surface(13) = {13};
Surface(14) = {14};
Surface(15) = {15};
Surface(16) = {16};
Surface(17) = {17};

Surface Loop(1) = {3,7,4,14,13,8};
Surface Loop(2) = {8,2,5,15,9,12};
Surface Loop(3) = {1,6,16,9,11,10};

Volume(1) = {1};
Volume(2) = {2};
Volume(3) = {3};

Physical Surface("marker_inlet") = {7};
Physical Surface("H1") = {13};
Physical Surface("H2") = {12};
Physical Surface("H6-H2") = {11};
Physical Surface("H6") = {17};
Physical Surface("marker_outlet") = {10};

Physical Volume("vol_H1") = {1};
Physical Volume("vol_H2") = {2};
Physical Volume("vol_H6H2") = {3};

