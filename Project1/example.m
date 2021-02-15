% Example
clc
ds = tabularTextDatastore('airlinesmall.csv','TreatAsMissing','NA',...
    'MissingValue',0);
ds.SelectedVariableNames = 'UniqueCarrier';
ds.SelectedFormats = '%C';
preview(ds)
outds = mapreduce(ds, @countMapper, @countReducer);
readall(outds)