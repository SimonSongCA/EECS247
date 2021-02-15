
%% Importing the original data
clearvars
clc
ds = tabularTextDatastore('data_CA.csv','TreatAsMissing','NA',...
    'MissingValue',0);
% ds = tabularTextDatastore('data_CA.csv', 'TreatAsMissing', 'NA');
dsPreview = preview(ds);
dsPreview(:,1:4)
% reset(ds);
ds.SelectedVariableNames = 'HealthCondition';
result = mapreduce(ds, @Mapper, @Reducer);


% % Example
% clc
% ds = tabularTextDatastore('airlinesmall.csv','TreatAsMissing','NA',...
%     'MissingValue',0);
% ds.SelectedVariableNames = 'FlightNum';
% ds.SelectedFormats = '%C';
% preview(ds)
% outds = mapreduce(ds, @Mapper, @Reducer);
% readall(outds)
