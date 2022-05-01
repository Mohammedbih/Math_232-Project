% specify the variable a, t and s
% as symbolic ones
syms a t s

% define function F(s)
F = s/(a^2 + s^2);

% ilaplace command to transform into time
% domain function f(t)
% Inverse Laplace Function
f1=ilaplace(F,s,t);

% Display the output value
disp('Inverse for Laplace Transform :')
disp(f1);

% Output can be verified by transforming
% function f1 into Laplace Domain F(s)
f=laplace(f1,t,s); % Laplace Function
disp('Laplace Transform :')
disp(f);
