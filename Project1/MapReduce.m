clc
%% Importing the original data
ds = tabularTextDatastore('data_CA.csv');
% ds = tabularTextDatastore('data_CA.csv', 'TreatAsMissing', 'NA');
dsPreview = preview(ds);
dsPreview(:,1:4)
%%
reset(ds);
ds.SelectedVariableNames = {'HealthCondition'};
result = mapreduce(ds, @Mapper, @Reducer);