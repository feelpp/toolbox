// Gmsh project created on Wed Oct  6 13:58:14 2021
D=0.5;
//+
Point(1) = {-5*D, -70*D, 0, 0.04*D};
//+
Point(2) = {5*D, -70*D, 0, 0.04*D};
//+
Point(3) = {5*D, 70*D, 0, 0.04*D};
//+
Point(4) = {-5*D, 70*D, 0, 0.04*D};
//+
Point(5) = {0, -65*D, 0, 0.04*D};
//+
Point(6) = {D/2, -65*D, 0, 0.04*D};
//+
Point(7) = {-D/2, -65*D, 0, 0.04*D};
//+
Point(8) = {0, -65*D+D/2, 0, 0.04*D};
//+
Point(9) = {0, -65*D-D/2, 0, 0.04*D};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Circle(5) = {7, 5, 8};
//+
Circle(6) = {8, 5, 6};
//+
Circle(7) = {6, 5, 9};
//+
Circle(8) = {9, 5, 7};
//+
Curve Loop(2) = {5, 6, 7, 8};
//+
Plane Surface(1) = {2};
//+
Plane Surface(2) = {1, 2};
//+
Physical Curve("Top") = {3};
//+
Physical Curve("Walls") = {4, 2};
//+
Physical Curve("CylinderSurface") = {6, 5, 8, 7};
//+
Physical Curve("Bottom") = {1};

//+
Physical Surface("Fluid") = {2};
//+
Physical Surface("CylinderVolume") = {1};

