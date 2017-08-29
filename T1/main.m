% Gabriel Leal C. Amaral (15100737)

n = 50;

% Gauss elimination (direct)

[A b] = MatrixGen(n);
% gaussEliminationSolutions = GaussElimination(A,b);
% gaussEliminationSolutions(1)
% gaussEliminationSolutions(50)
% gaussEliminationResidue = Residue(A,b,gaussEliminationSolutions)
% gaussEliminationNOPS = ??

% Gauss-Seidel (iterative)
converge = Convergence(A);
if (converge == 1)
    printf("O sistema converge!\n");
else
    printf("O sistema não converge!\n");
endif

% Populate initial solution
for i = 1 : n
    Si(i) = 0;
end
% Stopping criterion
maxDiff = 1e-4;
% Relaxation factor
lambda = 1;
gaussSeidelSolutions = GaussSeidel(n,Si,maxDiff,lambda,A,b)
