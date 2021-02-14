function Mapper(data, ~, intermKVStore)
%   maxElapsedTime = max(data{:,:});
%   add(intermKVStore, "MaxElapsedTime", maxElapsedTime)

% Extract the content of the column
Healthy = 0;
Dead = 0;
Vaccinated = 0;
if data{:,:} == "Healthy"
    Healthy = Healthy + 1;
elseif data{:,:} == "Dead"
    Dead = Dead + 1;
else
    Vaccinated = Vaccinated + 1;
end

% Dead += if data{:,:} =='Dead';
% Daccinated += if data{:,:} =='Vaccinated';

% add the k-v pair into the intermKVStore
add(intermKVStore,"Healthy",Healthy);
add(intermKVStore,"Dead",Dead);
add(intermKVStore,"Vaccinated",Vaccinated);
end

