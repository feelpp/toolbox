// Gmsh project created on Thu Oct 12 15:21:12 2023
//+
hc = 0.1;
hr = hc/5;
//+
Point(1) = {2.65, 1.15, 0, hc};
//+
Point(2) = {2.65, -0.60, 0, hc};
//+
Point(3) = {4.00, 1.15, 0, hc};
//+
Point(4) = {4.00, -0.80, 0, hc};
//+
Point(5) = {5.20, 0.30, 0, hc};
//+
Point(6) = {-1.87, 1.10, 0, hc};
//+
Point(7) = {3.44, -0.05, 0, hr};
//+
Point(8) = {3.80, -0.23, 0, hr};
//+
Point(9) = {4.15, 0.49, 0, hr};
//+
Point(10) = {3.79, 0.67, 0, hr};
//+
Point(11) = {-7.70, -1.80, 0, hc};
//+
Point(12) = {-0.80, -1.80, 0, hc};
//+
Point(13) = {-0.80, -0.50, 0, hc};
//+
Point(14) = {0, -0.50, 0, hc};
//+
Point(15) = {0, -1.80, 0, hc};
//+
Point(16) = {28.1, -1.80, 0, hc};
//+
Point(17) = {28.1, 1.80, 0, hc};
//+
Point(18) = {0, 1.80, 0, hc};
//+
Point(19) = {0, 0.50, 0, hc};
//+
Point(20) = {-0.80, 0.50, 0, hc};
//+
Point(21) = {-0.80, 1.80, 0, hc};
//+
Point(22) = {-7.70, 1.80, 0, hc};
//+
//+
Line(1) = {11, 12};
//+
Line(2) = {12, 13};
//+
Line(3) = {13, 14};
//+
Line(4) = {14, 19};
//+
Line(5) = {19, 20};
//+
Line(6) = {20, 21};
//+
Line(7) = {21, 22};
//+
Line(8) = {22, 11};
//+
Line(9) = {14, 15};
//+
Line(10) = {15, 16};
//+
Line(11) = {16, 17};
//+
Line(12) = {17, 18};
//+
Line(13) = {18, 19};
//+
Line(14) = {7, 8};
//+
Line(15) = {8, 9};
//+
Line(16) = {9, 10};
//+
Line(17) = {10, 7};
//+
Curve Loop(1) = {1, 2, 3, 4, 5, 6, 7, 8};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {9, 10, 11, 12, 13, -4};
//+
Curve Loop(3) = {17, 14, 15, 16};
//+
Plane Surface(2) = {2, 3};
//+
Physical Point("G1") = {1};
//+
Physical Point("G2") = {2};
//+
Physical Point("G3") = {3};
//+
Physical Point("G4") = {4};
//+
Physical Point("G5") = {5};
//+
Physical Point("G6") = {6};
//+
Physical Curve("wallr") = {1, 2, 3, 5, 6, 7, 8};
//+
Physical Curve("gate") = {4};
//+
Physical Curve("wallc") = {9, 10, 12, 13};
//+
Physical Curve("wallb") = {14, 15, 16, 17};
//+
Physical Curve("outlet") = {11};
//+
Physical Surface("Reservoir") = {1};
//+
Physical Surface("Channel") = {2};
