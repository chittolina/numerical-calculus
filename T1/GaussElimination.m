function x = GaussElimination(A,b)

    n = length(A);

    % A = Coefficient matrix
    % b = Constants
    A = [A b];

    % Gauss elimination

    for k = 1 : n-1

      for i = k+1 : n

        aux = A(i,k) / A(k,k);

        for j = k+1 : n+1
          A(i,j) = A(i,j) - aux * A(k,j);
        end

        A(i,k) = 0;

      end

    end

    % Retrosubstitution
    x(n) = A(n,n+1) / A(n,n);

    for i = n-1 : -1 : 1
      sum = 0;
      for j = i+1 : n
        sum += A(i,j) * x(j);
      end
      x(i) = (A(i,n+1) - sum) / A(i,i);
    end

end	 	  	 	   	      	    		  	  	      	 	
