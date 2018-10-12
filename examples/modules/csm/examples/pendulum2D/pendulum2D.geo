h=0.1;
Point(1) = { 0,0,0,h};
Point(2) = {-0.5,-3,0,h};
Point(3) = { 0.5,-3,0,h};
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 1};
Line Loop(4) = {1, 2, 3};
Plane Surface(5) = {4};
Rotate {{0, 0, 1}, {0, 0, 0}, Pi/4} {
  Surface{5};
}

Physical Point("AxeFixed") = {1};
Physical Line("SolidBoundary") = {1,2,3};
Physical Surface("Solid") = {5};
