function x = sqrtHeron(S)
    % Choose a suitable initial guess
    xold = S/2;
    x = mean([xold S/xold]);
    
    % Repeat until you obtain a good enough root
    while abs(x - xold) > 0.01
        xold = x;
        x = mean([x S/x]);
    end
end
