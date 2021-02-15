function Mapper(data, ~, intermKVStore)
a = data.HealthCondition;
keys = categories(a);
c = num2cell(countcats(a));
addmulti(intermKVStore,keys,c);
% data.HealthCondition
% if data.HealthCondition == "Healthy"
%     Healthy = Healthy + 1;
% elseif data{:,:} == "Dead"
%     Dead = Dead + 1;
% else
%     Vaccinated = Vaccinated + 1;
% end

% Dead += if data{:,:} =='Dead';
% Daccinated += if data{:,:} =='Vaccinated';

% add the k-v pair into the intermKVStore
% add(intermKVStore,"Healthy",Healthy);
% add(intermKVStore,"Dead",Dead);
% add(intermKVStore,"Vaccinated",Vaccinated);
end
