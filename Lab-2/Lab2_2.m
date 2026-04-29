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

[r1, c1] = size(A);
[r2, c2] = size(B);

if isequal(size(A), size(B))
    add_res = A + B;
    sub_res = A - B;
    disp('Addition and Subtraction successful.');
else
    disp('!!Addition and Subtraction unsuccessful!!');
end

if c1 == r2
    mul_res = A * B;
    disp('Matrix Multiplication successful.');
else
    disp('!!Matrix Multiplication successful!!');
end