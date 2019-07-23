h=1e-7;
rcell=5e-5;
rext=7e-5;

Point(1) = {0, 0, 0.0, h};
Point(2) = {rcell, 0, 0, h};
Point(3) = {-rcell, 0, 0, h};
Point(4) = {0, rcell, 0, h};
Point(5) = {0, -rcell, 0, h};
Circle(1) = {2, 1, 4};
Circle(2) = {4, 1, 3};
Circle(3) = {3, 1, 5};
Circle(4) = {5, 1, 2};

Point(6) = {rext, 0, 0, 15*h};
Point(7) = {-rext, 0, 0, 15*h};
Point(8) = {0, rext, 0, 15*h};
Point(9) = {0, -rext, 0, 15*h};
Circle(6) = {6, 1, 8};
Circle(7) = {8, 1, 7};
Circle(8) = {7, 1, 9};
Circle(9) = {9, 1, 6};

Line Loop(10) = {1, 2, 3, 4};
Line Loop(11) = {6, 7, 8, 9};

Plane Surface(12) = {11,10};
//Plane Surface(13) = {10};


Physical Surface("fluid") = {12};
//Physical Surface("in-cell") = {13};
Physical Line("cell-membrane") = {1, 2, 3, 4};
Physical Line("exterior-walls") = {6, 7, 8, 9};
