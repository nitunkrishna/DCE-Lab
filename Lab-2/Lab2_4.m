syms x

eqn = x^2 - 5*x + 6 == 0;

sol = solve(eqn, x);

disp('The solutions are:');
disp(sol);