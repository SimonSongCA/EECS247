clc
clearvars
n = 2^13;
m = 2^11;
% record a cpu time
tic
result = dct(m,n);
toc
% SpectralNorm
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

































