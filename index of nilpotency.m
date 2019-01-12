function [ X ] = nilpotent( A,n )
%UNTITLED 어떤 행렬 A에 대해 index of nilpotency를 출력한다. 범위 n안에서 찾고
%범위를 벗어날 경우 0을 출력한다.
X=0;

for i = 1:n
   if A^(i)==zeros(size(A))
       X=i;
       break
   elseif i==n
       X=0;
   end
end
end
