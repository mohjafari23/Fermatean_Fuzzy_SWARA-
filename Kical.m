function Ki = Kical(Ci)
%calculate the Ki of each criteria
  Ki = zeros (size(Ci));
  Ki(:,1) = Ci(:,1);
  Ki(:,2) = Ci(:,2)+1;
% Ki is a matrix with size number of criteria and 2 columns the first is
% the index of criteria and the second is the Ki
end
