function [A, USigmaVT] = helper(m,n)
    i = 2;
    k = 12;
    l = k + 2;
    g = 2^10;
    
    % generate matrix A
    S = zeros(m,n);
    for j = 1:1:n
       if j <= 20
           S(j,j) = 10 ^ (-4*(j-1)/19);
       else
           S(j,j) = 10 ^ (-4) / (j - 20)^0.1;
       end
    end
    E = dct2(normrnd(0,1,[m,m]));
    F = dct2(normrnd(0,1,[n,n]));
    A = E * S * F;
    
    % Matrix G
    G = normrnd(0,1,[n,l]);
    
    % Matrix H
    H = [];
    for I = 0:1:i
        % H(I)
        tempMatrix = A * G;
        % store H(I) into H
        H = horzcat(H,tempMatrix);
    end
    
    % QR decomposition --> Q,R
    [Q,R] = qr(H);
    
    % Matrix T
    T = A' * Q;
    
    % SVD --> V~,sigma~,W
    [V_tilde,S_tilde,W] = svd(T);
    
    % U tilde
    U_tilde = Q * W;
    
    % Extract V,sigma, and W from U,S,V
    U = U_tilde(1:m,1:k);
    V = V_tilde(1:n,1:k);
    S = S_tilde(1:k,1:k);
    USigmaVT = U * S * V';
end