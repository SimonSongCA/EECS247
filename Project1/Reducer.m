function Reducer(~, intermValsIter, outKVStore)
%   maxElapsedTime = -Inf;
%   while(hasnext(intermValsIter))
%     maxElapsedTime = max(maxElapsedTime, getnext(intermValsIter));
%   end
%   add(outKVStore, "MaxElapsedTime", maxElapsedTime);
% Iterating the k-v of the intermKVStore
while(hasnext(intermValsIter))
end
end

% function Reducer(key, intermValIter, outKV)
% % Combines counts from all blocks to produce final counts.
% count = 0;
% while hasnext(intermValIter)
%     data = getnext(intermValIter);
%     count = count + data;
% end
% add(outKV, key, count)
% end