function countReducer(key, intermValIter, outKV)
% Combines counts from all blocks to produce final counts.
count = 0;
while hasnext(intermValIter)
    data = getnext(intermValIter);
    count = count + data;
end
add(outKV, key, count)
end