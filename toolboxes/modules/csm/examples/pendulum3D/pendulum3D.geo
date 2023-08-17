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
Extrude {0, 0, 1} {
  Surface{5};
}
/*Surface Loop(23) = {22, 13, 5, 17, 21};
Volume(24) = {23};
*/
Physical Line("AxeFixed") = {11};
Physical Surface("SolidBoundary") = {21, 5, 13, 22, 17};
Physical Volume("Solid") = {1};

