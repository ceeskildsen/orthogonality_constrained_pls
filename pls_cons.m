% Orthogonality-Constrained Partial Least Squares Regression for enhanced selectivity against known interferents.
% Enforces weight vectors in the null-space of given interferent signals while extracting latent variables automatically.
%
% Usage:
%       [b,W,P,q,T] = pls_cons(X,y,LV,Sk)
% 
% Input:
%		X	Explanatory variables (I,J), mean centered
%		y	Response variable (I,1), mean centered
%		LV	Number of latent variables
%		Sk	Signals of interfering species (J,K)
%
% Output:	
%		b	Regression vector (J,1)
%		W	Weights (J,LV)
%		P	Loadings for X (J,LV)
%		q	Loadings for y (LV,1)
%		T	Scores (I,LV)
%
% Author:
%       Carl Emil Eskildsen (c.e.eskildsen@uva.nl), 2021
%       University of Amsterdam
%
% LICENSE:
%       Creative Commons Attribution-NonCommercial 4.0 International

function [b,W,P,q,T] = pls_cons(X,y,LV,Sk)

[I,J] = size(X);

% Preallocation
T = nan(I,LV);          			% scores    (X)
W = nan(J,LV);          			% weights   (X)
P = nan(J,LV);          			% loadings  (X)
q = nan(LV,1);          			% loadings  (y)

Proj = eye(J)-Sk/(Sk'*Sk)*Sk'; 	% projection matrix
for i = 1:LV
    v = Proj*(X'*y);
    W(:,i) = v/sqrt(v'*v);
    T(:,i) = X*W(:,i);
    tt = T(:,i)'*T(:,i);
    P(:,i) = Proj*(X'*T(:,i))/tt;
    X = X-T(:,i)*P(:,i)';
    q(i) = T(:,i)'*y/tt;
end
b = W/(P'*W)*q;				% regression vector
end
