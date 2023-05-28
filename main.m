clear; clc;

% Sekant Yöntemi girdileri
func = @(x) (x^2)/2 - sin(x);
x0 = 1.5;
x1 = 2;
tolerance = 0.05;
max_iterations = 100;

root = sekant(func, x0, x1, tolerance, max_iterations);
disp(root);


% newtonRaphson yöntemi girdileri
func = @(x) x^2 - 4;
derivative = @(x) 2 * x;
initial_guess = 1.5;
tolerance = 1e-6;
max_iterations = 100;

root = newtonRaphson(func, derivative, initial_guess, tolerance, max_iterations);
disp(root);

%Gaus Eliminasyon Yöntemi
A = [2, -3, -4, 5; -1, -5, 2 -10; 1, 4, -3, -1; -1, 1, 5, -2];
b = [4; -29; 16; -6];

x = gaussElimination(A, b);
disp(x);



