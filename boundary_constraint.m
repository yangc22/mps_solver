function r = boundary_constraint(in1,in2,in3)
%BOUNDARY_CONSTRAINT
%    R = BOUNDARY_CONSTRAINT(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    21-Nov-2018 17:15:58

Kf1 = in3(3,:);
Kf2 = in3(4,:);
Ki1 = in3(1,:);
Ki2 = in3(2,:);
lambda1_0 = in1(3,:);
lambda2_0 = in1(4,:);
lambda1_N = in2(3,:);
lambda2_N = in2(4,:);
sv1_0 = in1(1,:);
sv2_0 = in1(2,:);
sv1_N = in2(1,:);
sv2_N = in2(2,:);
r = [sv1_0-1.0;sv2_0-1.0;Ki1.*1.0+lambda1_0;Ki2.*1.0+lambda2_0;sv1_N;sv2_N;-Kf1+lambda1_N;-Kf2+lambda2_N];
