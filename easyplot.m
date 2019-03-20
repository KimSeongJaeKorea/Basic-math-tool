% easy plot
% put your setting
startpoint = -1
endpoint = 8
mesh = 0.001

i = 1
x = startpoint:mesh:endpoint;
for t = startpoint:mesh:endpoint
    
    % put your equation here/////////////////////////////
    y(i) = -1+5.5*t-4*t^2+0.5*t^3;
    %/////////////////////////////////////////////////////
    
    i = i+1;
end

figure(1)
plot(x,y,'r')
grid on
xlabel('x')
ylabel('y')
title('title')
