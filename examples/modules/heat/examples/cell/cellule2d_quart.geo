h=1e-7;
rcell=5e-5;
rext=7e-5;

Point(1) = {0, 0, 0.0, h};
Point(2) = {rcell, 0, 0, h};
Point(4) = {0, rcell, 0, h};

Circle(11) = {2, 1, 4};

Point(6) = {rext, 0, 0, 15*h};
Point(8) = {0, rext, 0, 15*h};

Circle(12) = {8, 1, 6};

Line(41) = {6,2};
Line(42) = {4,8};

Line Loop(51) = {11, 42, 12, 41};

Plane Surface(61) = {51};

Physical Surface("fluid") = {61};
Physical Line("cell-membrane") = {11};
