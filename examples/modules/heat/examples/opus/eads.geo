h = 0.0001;
// h     = DefineNumber[ 0.1, Name "h"     ];
e_pcb = DefineNumber[ 2e-3, Name "e_pcb" ]; // 0.3
e_a   = DefineNumber[ 4e-3, Name "e_a"   ]; // 0.7
e_ic  = DefineNumber[ 2e-3, Name "e_ic"  ]; // 0.3
h_1   = DefineNumber[ 2e-2, Name "h_1"   ]; // 0.2
h_2   = DefineNumber[ 7e-2, Name "h_2"   ]; // 0.6
h_ic  = DefineNumber[ 2e-2, Name "h_ic"  ]; // 0.2
h_pcb = DefineNumber[13e-2, Name "h_pcb" ]; // 1

// h_pad = DefineNumber[ 0.04, Name "h_pad" ];


Point(1)  = {0, 0, 0, h};
Point(2)  = {e_pcb, 0, 0, h};
Point(3)  = {e_pcb + e_a, 0, 0, h};
Point(4)  = {e_pcb, h_1, 0, h};
Point(5)  = {e_pcb+e_ic, h_1, 0, h};
Point(6)  = {e_pcb+e_ic, h_1+h_ic, 0, h};
Point(7)  = {e_pcb, h_1+h_ic, 0, h};
Point(8)  = {e_pcb, h_2, 0, h};
Point(9)  = {e_pcb+e_ic, h_2, 0, h};
Point(10) = {e_pcb+e_ic, h_2+h_ic, 0, h};
Point(11) = {e_pcb, h_2+h_ic, 0, h};
Point(12) = {0, h_pcb, 0, h};
Point(13) = {e_pcb+e_a, h_pcb, 0, h};
Point(14) = {e_pcb, h_pcb, 0, h};
Point(15) = {e_pcb+e_ic, 0, 0, h};
Point(16) = {e_pcb+e_ic, h_pcb, 0, h};

// Point(17) = {e_pcb, h_pcb + h_pad, 0, h};
// Point(18) = {e_pcb+e_a, h_pcb + h_pad, 0, h};


Line(1)  = {4, 7};
Line(2)  = {8, 11};
Line(3)  = {1, 12};
Line(4)  = {3, 13};
Line(5)  = {2, 4};
Line(6)  = {7, 8};
Line(7)  = {11, 14};
Line(8)  = {4, 5};
Line(9)  = {5, 6};
Line(10) = {6, 7};
Line(11) = {8, 9};
Line(12) = {9, 10};
Line(13) = {10, 11};
Line(14) = {15, 5};
Line(15) = {6, 9};
Line(16) = {10, 16};
Line(17) = {1, 2};
Line(18) = {12, 14};
Line(19) = {2, 15};
Line(20) = {14, 16};
Line(21) = {15, 3};
Line(22) = {16, 13};

// Line(37) = {14, 17};
// Line(38) = {17, 18};
// Line(39) = {18, 13};


Line Loop(23) = {17, 5, 1, 6, 2, 7, -18, -3};
Plane Surface(24) = {23};
Line Loop(25) = {13, -2, 11, 12};
Plane Surface(26) = {25};
Line Loop(27) = {10, -1, 8, 9};
Plane Surface(28) = {27};
Line Loop(29) = {20, -16, 13, 7};
Plane Surface(30) = {29};
Line Loop(31) = {11, -15, 10, 6};
Plane Surface(32) = {31};
Line Loop(33) = {8, -14, -19, 5};
Plane Surface(34) = {33};
Line Loop(35) = {21, 4, -22, -16, -12, -15, -9, -14};
Plane Surface(36) = {35};

// Line Loop(40) = {37, 38, 39, -22, -20};
// Plane Surface(41) = {40};


Physical Surface("Air")  = {30,32,34,36}; // 41
Physical Surface("Pcb")  = {24};
Physical Surface("IC1")  = {28};
Physical Surface("IC2")  = {26};

// Physical Line("Fixed")   = {21, 19, 17};

Physical Line("Pcb/Input")  = {17};
Physical Line("Pcb/Left")   = {3};
Physical Line("Pcb/Output") = {18};

// Physical Line("Upwards") = {18,20,22};

Physical Line("IC1/Pcb") = {1};
Physical Line("IC2/Pcb") = {2};

// Physical Line("Air/Pcb") = {3,7,6,5,4};
// Physical Line("Air/IC1") = {10,9,8};
// Physical Line("Air/IC2") = {13,12,11};

// Physical Line("Air/PostOutput") = {38};
Physical Line("Air/Input")         = {21,19};
Physical Line("Air/Walls")         = {7,6,5,10,9,8,13,12,11}; // 37,39
Physical Line("Air/Right")         = {4};
Physical Line("Air/Output")        = {22,20};

