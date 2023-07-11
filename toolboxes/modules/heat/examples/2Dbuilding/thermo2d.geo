h=0.1;
hHeater=h/5.;

W=2;
w=1;
ep1=0.1;

Point(1) = {0,0,0.0,h};
Point(2) = {W,0,0.0,h};
Point(3) = {W,w,0.0,h};
Point(4) = {0,w,0.0,h};

Point(5) = {0.1,0.2,0.0,hHeater};
Point(6) = {0.1+0.1,0.2,0.0,hHeater};
Point(7) = {0.1+0.1,0.5,0.0,hHeater};
Point(8) = {0.1,0.5,0.0,hHeater};

Point(9) = {W+0.05,0,0.0,h};
Point(10) = {W+0.05,w,0.0,h};

Point(11) = {1.5*W,0,0.0,h};
Point(12) = {1.5*W,w,0.0,h};

Point(13) = {1.5*W-0.1,0.2,0.0,hHeater};
Point(14) = {1.5*W-(0.1+0.1),0.2,0.0,hHeater};
Point(15) = {1.5*W-(0.1+0.1),0.5,0.0,hHeater};
Point(16) = {1.5*W-0.1,0.5,0.0,hHeater};

Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};
Line(5) = {5, 8};
Line(6) = {7, 8};
Line(7) = {6, 7};
Line(8) = {5, 6};

/*Line Loop(9) = {3, 4, 1, 2};
Line Loop(10) = {6, -5, 8, 7};
Plane Surface(11) = {9, 10};

Physical Surface("air") = {11};
Physical Line("heater") = {5,6,7,8};
Physical Line("contact-exterior") = {1,2,3,4};
*/
Line(9) = {3, 10};
Line(10) = {10, 12};
Line(11) = {12, 11};
Line(12) = {11, 9};
Line(13) = {9, 2};
Line(14) = {14, 13};
Line(15) = {13, 16};
Line(16) = {15, 16};
Line(17) = {15, 14};
Line(18) = {9, 10};
Line Loop(19) = {4, 1, 2, 3};
Line Loop(20) = {6, -5, 8, 7};
Plane Surface(21) = {19, 20};
Line Loop(22) = {2, 9, -18, 13};
Plane Surface(23) = {22};
Line Loop(24) = {18, 10, 11, 12};
Line Loop(25) = {16, -15, -14, -17};
Plane Surface(26) = {24, 25};

Physical Surface("air") = {21};
Physical Surface("air2") = {26};
Physical Surface("internal-walls") = {23};
Physical Line("heater1") = {6, 5, 8, 7};
Physical Line("heater2") = {17, 16, 15, 14};
Physical Line("exterior-walls") = {4, 3, 10, 11, 12, 1};
Physical Line("exterior-walls-iw") = {9,13};
Physical Line("internal-surfaces") = {2, 18};
