clear variables, close all, clc
in1 = ones(16, 1);
in2 = 1;
alpha = 1;
[hy,hz,hp,gy,gz,gp] = difference_DAE(in1,in2,alpha)