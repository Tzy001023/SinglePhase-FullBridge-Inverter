function [D_Matrix_A,D_Matrix_D] = D_Distrbance_Calculation(L,C,R,R_0,d)
%传入参数，组成A矩阵的各个元素、积分周期
Matrix_A = [0      -1/L          0      0;
            1/C    -1/(R*C)      0      0;
            1/C    -1/(R_0*C)    0      0;
            0      -1/(L*C)      0     -1/(R_0*C)]; %矩阵A
        
D_Matrix_D = [0;0;d;(d/(R_0*C))];

% Matrix_C = [0 0 1 0];               %观测矩阵(在此处无用，只是为了组成一个系统，其值不影响A,B矩阵的离散结果)
% 
% Matrix_D = 0;

[D_A,D_D]=c2d(Matrix_A,D_Matrix_D,1e-5);


D_Matrix_A = D_A;
D_Matrix_D = D_D;
end