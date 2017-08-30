function rmax = Residue(A, b, x)

    n = length(A);

    for i = 1 : n
        r(i) = abs(sum(A(i,:)*x(:)) - b(i));
    end

    rmax = max(r);

end