// Gmsh project created on Wed Jun 26 21:08:38 2019
h=0.025;
SetFactory("OpenCASCADE");
//+
Cylinder(1) = {0, 0, 0, 1, 0, 0, 0.1, 2*Pi};
//+
Physical Surface("inflow") = {3};
//+
Physical Surface("outflow") = {2};
//+
Physical Surface("wall") = {1};
//+
Physical Volume("Fluid") = {1};
Characteristic Length{ PointsOf{ Volume{:}; } } = h;
