function Reducer(key, intermValIter, outKV)
count = 0;
% The reducer function counts the occurances of all the keywords
% from intermKVStore object
while hasnext(intermValIter)
    data = getnext(intermValIter);
    count = count + data;
end
% add the frequency for each of the keywords
add(outKV, key, count)
end