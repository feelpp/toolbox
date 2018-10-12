// Gmsh project created on Sat Oct 28 08:51:31 2017
//+
x = DefineNumber[ 10, Name "Parameters/x" ];
//+
Point(1) = {-150, 150, 0, x};
Point(2) = {150, 150, 0, x};
Point(3) = {150, 135, 0, x};
Point(4) = {-150, 135, 0, x};
Point(5) = {-25, 135, 0, x};
Point(6) = {25, 135, 0, x};
Point(7) = {5, 115, 0, x};
Point(8) = {-5, 115, 0, x};
Point(9) = {-5, 0, 0, x};
Point(10) = {5, 0, 0, x};
Point(11) = {25, 115, 0, x};
Point(12) = {-25, 115, 0, x};
//+
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 6};
Line(4) = {1, 4};
Line(5) = {4, 5};
Line(6) = {8, 9};
Line(7) = {9, 10};
Line(8) = {10, 7};
//+
Circle(9) = {5, 12, 8};
Circle(10) = {7, 11, 6};
//+
Line Loop(11) = {1, 2, 3, -10, -8, -7, -6, -9, -5, -4};
//+
Plane Surface(12) = {11};
//+
Extrude {0, 0, 2000} {
  Surface{12};
}
//+
Physical Volume("omega") = {1};
Physical Surface("load") = {27};
Physical Surface("fixed") = {12, 64};
