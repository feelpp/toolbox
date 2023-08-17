h=1;

//+
SetFactory("OpenCASCADE");
Rectangle(1) = {0, 0, 0, 2, 6, 0};
//+
Ellipse(5) = {1, 4, 0, 0.25, 0.125, 0, 2*Pi};
//+
Physical Curve("Walls") = {4, 2};
//+
Physical Curve("Top") = {3};
//+
Physical Curve("EllipseSurface") = {5};
//+
Physical Curve("Bottom") = {1};
//+
Curve Loop(2) = {3, 4, 1, 2};
//+
Curve Loop(3) = {5};
//+
Plane Surface(2) = {2, 3};
//+

Rotate {{0, 0, 1}, {1, 4, 0}, Pi/2} { Curve{5}; Point{5}; 
}
Curve Loop(4) = {5};
//+
Plane Surface(3) = {4};

Physical Surface("Fluid") = {2};
//+
Physical Surface("EllipseVolume") = {3};

//+
Delete {
  Surface{1}; 
}
Characteristic Length{ PointsOf{ Line{1:4}; } } = h/10;
Characteristic Length{ PointsOf{ Line{5}; } } = h/20;//+


