clc;
clear;

syms x1 x2 x3 x4;
syms a2 a3;
syms x y z phai;

%x = 1;
%y = 2;
%z = 3;
%phai = 0;

T01 = [ cos(x1) -sin(x1) 0 0;
    sin(x1) cos(x1) 0 0;
    0 0 1 0;
    0 0 0 1];

T12 = [1 0 0 0;
    0 0 -1 0;
    0 1 0 0;
    0 0 0 1] * [cos(x2) -sin(x2) 0 0;
    sin(x2) cos(x2) 0 0;
    0 0 1 0;
    0 0 0 1];

T23 = [1 0 0 a2;
    0 1 0 0;
    0 0 1 0;
    0 0 0 1] * [cos(x3) -sin(x3) 0 0;
    sin(x3) cos(x3) 0 0;
    0 0 1 0;
    0 0 0 1];

T34 = [1 0 0 a3;
    0 1 0 0;
    0 0 1 0;
    0 0 0 1] * [cos(x4) -sin(x4) 0 0;
    sin(x4) cos(x4) 0 0;
    0 0 1 0;
    0 0 0 1];

T04 = T01 * T12 * T23 * T34;

IK = [cos(phai) -sin(phai) 0 x;
   sin(phai) cos(phai) 0 y;
   0 0 1 z;
   0 0 0 1];

T = simplify(T04);

disp(T01);
disp(T12);
disp(T23);
disp(T34);
disp(T04);
disp(T);
disp(IK);





