function S = GaussSeidel(n,Si,maxDiff,lambda, A,b)
    diff = 9999;
    k = 0;
    
    x = Si;
    k = 0;
    while diff > maxDiff && k < 20
        k
        x(1) = (1-lambda) * x(1) + lambda * (1.5 - x(2));
        for i = 2 : n/2
            x(i) = (1-lambda) * x(i) + lambda * ((1 - x(i-1) - x(i+1) - x(i+25)) / 4);
        end
        
        for i = (n/2) + 1 : n-1
            x(i) = (1-lambda) * x(i) + lambda * ((2 - x(i-25) - x(i-1) - x(i+1)) / 5);
        end
        
        x(n) = (1-lambda) * x(n) + lambda * (3 - x(n-1));
        x
        r = Residue(A,b,x)
        diff = max(abs(x - Si));
        k++;
    end
    S = x;
end
