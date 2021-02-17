function Mapper(data, ~, intermKVStore)
% extracting the specific column and store it in the variable
a = data.HealthCondition;
% Catagorize the name of all the names under the 'HealthCondition' column
keys = categories(a);
% count the number of occurances for each of the HealthCondition tag
c = num2cell(countcats(a));
% Store the k-v pair into the intermKVStore
addmulti(intermKVStore,keys,c);
end
