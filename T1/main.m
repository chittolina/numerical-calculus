% Gabriel Leal C. Amaral (15100737)

n = 50

% Gauss elimination (direct)

printf("Resultados para o método direto\n\n")
[A b] = MatrixGen(n);
gaussEliminationSolutions = GaussElimination(A,b);
printf("Primeira incógnita:\n");
gaussEliminationSolutions(1)
printf("Última incógnita:\n");
gaussEliminationSolutions(50)
printf("Resíduo:\n");
gaussEliminationResidue = Residue(A,b,gaussEliminationSolutions)
printf("Número de operações:\n");
gaussEliminationNOPS = (((4 * n^3) + (9 * n^2) - n - 6) / 6)



printf("------------------------------------------------\n\n");




% Gauss-Seidel (iterative)

printf("Resultados para o método iterativo:\n\n");
converge = Convergence(A);

if (converge == 1)
    printf("O sistema possui convergência garantida, visto que possui diagonal principal dominante.\n");
else
    printf("O sistema pode não convergir!\n");
endif

% Populate initial solution
for i = 1 : n
    Si(i) = 0;
end
% Stopping criterion
maxDiff = 1e-4;

% Relaxation factor
printf("Ao realizar testes com diferentes valores para o fator de relaxação, foi verificado que o valor 1.1 é o valor ótimo, resultando numa boa solução com apenas 12 iterações.\n")
lambda = 1.1
maxIterationCount = 12
gaussSeidelSolutions = GaussSeidel(n,Si,maxDiff,lambda);
gaussSeidelSolutionsEnhanced = GaussSeidel(n,Si,realpow(maxDiff,2),lambda);
printf("Primeira incógnita:\n");
gaussSeidelSolutions(1)
printf("Última incógnita:\n");
gaussSeidelSolutions(50)
printf("Número de operações:\n");
gaussSeidelNOPS = maxIterationCount * (5 + (((n/2)-1) * 11) + (((n/2)-1) * 11) + 8 )
printf("Erro de truncamento:\n");
max(abs((gaussSeidelSolutions - gaussSeidelSolutionsEnhanced) / gaussSeidelSolutionsEnhanced))	 	  	 	   	      	    		  	  	      	 	
