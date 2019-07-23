// 1/ Pas du maillage h :

h=5e-6;
rext = 7e-5;
rint = 5e-5;

k = 5;

// 2/ Points :
//Exterior
Point(1) = {0,0,0,k*h};
Point(2) = {rext,0,0,k*h};
Point(3) = {0,rext,0,k*h};
Point(4) = {0,0,rext,k*h};
Point(5) = {-rext,0,0,k*h};
Point(6) = {0,-rext,0,k*h};
Point(7) = {0,0,-rext,k*h};

//Interior
Point(8) = {rint,0,0,h};
Point(9) = {0,rint,0,h};
Point(10) = {0,0,rint,h};
Point(11) = {-rint,0,0,h};
Point(12) = {0,-rint,0,h};
Point(13) = {0,0,-rint,h};

// 3/ Arcs :
//Exterior
Circle(1) = {2,1,3};
Circle(2) = {3,1,5};
Circle(3) = {5,1,6};
Circle(4) = {6,1,2};
Circle(5) = {2,1,7};
Circle(6) = {7,1,5};
Circle(7) = {5,1,4};
Circle(8) = {4,1,2};
Circle(9) = {6,1,7};
Circle(10) = {7,1,3};
Circle(11) = {3,1,4};
Circle(12) ={4,1,6};

//Interior
Circle(13) = {8,1,9};
Circle(14) = {9,1,11};
Circle(15) = {11,1,12};
Circle(16) = {12,1,8};
Circle(17) = {8,1,13};
Circle(18) = {13,1,11};
Circle(19) = {11,1,10};
Circle(20) = {10,1,8};
Circle(21) = {12,1,13};
Circle(22) = {13,1,9};
Circle(23) = {9,1,10};
Circle(24) ={10,1,12};


// 4/ Contours :
//Exterior
Line Loop(1) = {1,11,8};
Line Loop(2) = {2,7,-11};
Line Loop(3) = {3,-12,-7};
Line Loop(4) = {4,-8,12};
Line Loop(5) = {5,10,-1};
Line Loop(6) = {-2,-10,6};
Line Loop(7) = {-3,-6,-9};
Line Loop(8) = {-4,9,-5};

//Interior
Line Loop(9) = {13,23,20};
Line Loop(10) = {14,19,-23};
Line Loop(11) = {15,-24,-19};
Line Loop(12) = {16,-20,24};
Line Loop(13) = {17,22,-13};
Line Loop(14) = {-14,-22,18};
Line Loop(15) = {-15,-18,-21};
Line Loop(16) = {-16,21,-17};


// 5/ Surface :
//Exterior
Ruled Surface(1) = {1};
Ruled Surface(2) = {2};
Ruled Surface(3) = {3};
Ruled Surface(4) = {4};
Ruled Surface(5) = {5};
Ruled Surface(6) = {6};
Ruled Surface(7) = {7};
Ruled Surface(8) = {8};

Surface Loop (21) = {1,2,3,4,5,6,7,8};

//Interior
Ruled Surface(9) = {9};
Ruled Surface(10) = {10};
Ruled Surface(11) = {11};
Ruled Surface(12) = {12};
Ruled Surface(13) = {13};
Ruled Surface(14) = {14};
Ruled Surface(15) = {15};
Ruled Surface(16) = {16};

Surface Loop (22) = {9,10,11,12,13,14,15,16};

Volume (30) = {21, 22};


Physical Volume("fluid") = {30};
Physical Surface("cell-membrane") = {9,10,11,12,13,14,15,16};
//Physical Surface("exterior-walls") = {21};
