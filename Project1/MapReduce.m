clc
clearvars
[num,txt,raw] = xlsread('states.xlsx');
x = input('Please select the abbreviated name of the state(CA for California):\n','s');
fileName = strcat('data_',x,'.csv');
%% Importing the original data
ds = tabularTextDatastore(fileName,'TreatAsMissing','NA',...
    'MissingValue',0);
dsPreview = preview(ds);
dsPreview(:,1:4)
ds.SelectedVariableNames = 'HealthCondition';
ds.SelectedFormats = '%C';
result = mapreduce(ds, @Mapper, @Reducer);
readall(result)


