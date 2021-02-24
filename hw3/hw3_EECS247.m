clc
clearvars
n = 2^5;
m = 2^5;
% record a cpu time
tic
[A,USigmaVT] = helper(m,n);
result = USigmaVT;
toc
%%
clearvars
clc
tic
n = 2^13;
sum = 0;
for i = 1:1:10
    sum = sum + dct(1000,n);
end
avg = sum / 10;
toc
%% problem
clc
clearvars
n = 2^5;
m = 2^5;
tic
matrix = zeros(1,1000);
[A,USigmaVT] = helper(m,n);
for i = 1:1:1000
    x = normrnd(0,1,[n,1]);
    result = norm(((A - USigmaVT) * x),2) / norm(x,2);
    matrix(i) = result;
end
average = sum(matrix)/1000;
toc
fprintf("The error value is: " + average);






























