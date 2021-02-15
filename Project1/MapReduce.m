
%% Importing the original data
clearvars
clc
ds = tabularTextDatastore('data_CA.csv','TreatAsMissing','NA',...
    'MissingValue',0);
dsPreview = preview(ds);
dsPreview(:,1:4)
% reset(ds);
ds.SelectedVariableNames = 'HealthCondition';
ds.SelectedFormats = '%C';
result = mapreduce(ds, @Mapper, @Reducer);
readall(result)


