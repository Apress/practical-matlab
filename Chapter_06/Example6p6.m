%Example6p6
%This code finds data
load hospital
IsThere=ismember(hospital.LastName,'DIAZ');
index = find(IsThere);
fprintf('The person last name DIAZ is\n')
hospital(index,:)
fprintf('Information having age 50:\n')
hospital(find(hospital.Age==50),:)
