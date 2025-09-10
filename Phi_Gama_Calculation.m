function [D_Matrix_A,D_Matrix_B] = Phi_Gama_Calculation(L,C,R,R_0,E,E_0)
%传入参数，组成A矩阵的各个元素、积分周期
Matrix_A = [0      -1/L          0      0;
            1/C    -1/(R*C)      0      0;
            1/C    -1/(R_0*C)    0      0;
            0      -1/(L*C)      0     -1/(R_0*C)]; %矩阵A

Matrix_B = [E/L;0;0;E_0/(L*C)];

% Matrix_C = [0 0 1 0];               %观测矩阵(在此处无用，只是为了组成一个系统，其值不影响A,B矩阵的离散结果)
% 
% Matrix_D = 0;

[D_A,D_B]=c2d(Matrix_A,Matrix_B,1e-5);


D_Matrix_A = D_A;
D_Matrix_B = D_B;
end