r = input('Enter row: ');
c = input('Enter column: ');

disp('Enter Matrix A:');
A = zeros(r,c);
for i = 1:r
    for j = 1:c
        A(i,j) = input('');
    end
end

disp('Enter Matrix B:');
B = zeros(r,c);
for i = 1:r
    for j = 1:c
        B(i,j) = input('');
    end
end

disp("A=")
disp(A)
disp("B=")
disp(B)
add_result = A + B;

sub_result = A - B;

mul_result = A .* B;

div_result = A ./ B;

disp("A+B=")
disp(add_result);
disp("A-B=")
disp(sub_result);
disp("A .*B=")
disp(mul_result);
disp("A ./B=")
disp(div_result);