n=500;
m=1000; % calculation number
A=[ 0 1/4 1/8; 1/4 1/5 1/6; 1/7 1/8 1/9 ]; % an example
num_invA = eye(3);
X = nilpotent(A,n);

if X ==0 
    for i = 1:n
        num_invA = num_invA + A^(i);
    end
else
    for i = 1:X-1
        num_invA = num_invA + A^(i);
    end
end

num_invA % find inv matrix with numerical method(power series method)
real_inv = mldivide(eye(3)-A,eye(3)) % inv matrix with Gauss-Jordan method
error = num_invA - real_inv
