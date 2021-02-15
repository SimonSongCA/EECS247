function countMapper(data, info, intermKV)
% Counts unique airline carrier names in each block.
a = data.UniqueCarrier;
c = num2cell(countcats(a));
keys = categories(a);
addmulti(intermKV, keys, c)
end