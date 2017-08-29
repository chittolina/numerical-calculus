function [A x] = MatrixGen(n)
    % Create an empty matrix
    A = zeros(n,n);
    
    % Populate matrix
    A(1, 1) = 1;
    A(1, 2) = 1;
    x(1, 1) = 1.5;
    
    for i = 2 : n/2
        A(i, i) = 4;
        A(i, i-1) = 1;
        A(i, i+1) = 1;
        A(i, i+25) = 1;
        x(i, 1) = 1;
    end
    
    for i = (n/2) + 1 : n-1
        A(i, i) = 5;
        A(i, i-25) = 1;
        A(i, i-1) = 1;
        A(i, i+1) = 1;
        x(i, 1) = 2;
    end
    
    A(n,n) = 1;
    A(n, n-1) = 1;
    x(n, 1) = 3;
end
