// Gmsh project created on Wed Mar 01 11:49:38 2017
//+
x = DefineNumber[ 2, Name "Parameters/x" ];
//+
Point(1) = {0, 0, 0, x};
Point(2) = {12, 0, 0, x};
Point(3) = {7, -1.75, 0, x};
Point(4) = {9, -1.75, 0, x};
Point(5) = {1.75, -7, 0, x};
Point(6) = {1.75, -9, 0, x};
Point(7) = {0, -12, 0, x};
Point(8) = {8, -4, 0, x};
Point(9) = {8, 0, 0, x};

Point(10) = {0, -8, 0, x};
Point(11) = {4, -8, 0, x};
Point(12) = {4, -6, 0, x};
Point(13) = {6, -4, 0, x};
//Point(14) = {6, -6, 0, x};

Point(15) = {7, -1.25, 0, x};
Point(16) = {7, -2.25, 0, x};
Point(17) = {7.5, -1.75, 0, x};
Point(18) = {6.5, -1.75, 0, x};
Point(19) = {8.5, -1.75, 0, x};
Point(20) = {9.5, -1.75, 0, x};
Point(21) = {9, -1.25, 0, x};
Point(22) = {9, -2.25, 0, x};
Point(23) = {1.75, -6.5, 0, x};
Point(24) = {1.75, -8.5, 0, x};
Point(25) = {1.75, -7.5, 0, x};
Point(26) = {1.75, -9.5, 0, x};
Point(27) = {1.25, -9, 0, x};
Point(28) = {1.25, -7, 0, x};
Point(29) = {2.25, -7, 0, x};
Point(30) = {2.25, -9, 0, x};
//++
Point(200)={4,-4,0,x};
Line(200) = {200, 12};
Line(201) = {200, 13};
//++
Line(1) = {1, 2};
Line(2) = {1, 7};
Line(3) = {12, 11};
Line(4) = {13, 8};
Circle(5) = {2, 9, 8};
Circle(6) = {11, 10, 7};
//Line(7)={12,13};
//Circle(7) = {12, 14, 13};
Circle(8) = {23, 5, 29};
Circle(9) = {29, 5, 25};
Circle(10) = {25, 5, 28};
Circle(11) = {28, 5, 23};
Circle(12) = {24, 6, 30};
Circle(13) = {30, 6, 26};
Circle(14) = {26, 6, 27};
Circle(15) = {27, 6, 24};
Circle(16) = {16, 3, 18};
Circle(17) = {18, 3, 15};
Circle(18) = {15, 3, 17};
Circle(19) = {17, 3, 16};
Circle(20) = {20, 4, 22};
Circle(21) = {22, 4, 19};
Circle(22) = {19, 4, 21};
Circle(23) = {21, 4, 20};

Line Loop(24) = {16, 17, 18, 19};
Line Loop(25) = {-200,201, 4, -5, -1, 2, -6, -3};
Line Loop(26) = {21, 22, 23, 20};
Line Loop(27) = {8, 9, 10, 11};
Line Loop(28) = {12, 13, 14, 15};
Plane Surface(29) = {24, 25, 26, 27, 28};

Dilate {{0, 0, 0}, 10} {
  Surface{29};
}
Extrude {0, 0, 10} {
  Surface{29};
}

//+
Physical Surface("fixed") = {294, 306, 302, 298, 310, 322, 318, 314};
Physical Surface("load") = {242, 230, 278, 290};
Physical Volume("omega") = {1};
//+

