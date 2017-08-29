function converge = Convergence(A)
    % Length is the concatenated matrix, ie, with the constants in position n
    n = length(A)
    
    for i = 1 : n-1
        mainDiagonalI = A(i,i);
        neighborsSum = 0;
        for j = 1 : n
            if (i == j)
                continue;
            else
                neighborsSum += A(i,j);
            endif
        end
        
        if abs(mainDiagonalI) >= abs(neighborsSum)
            converge = 1;
        else
            converge = 0;
            return;
        endif
    end
end
