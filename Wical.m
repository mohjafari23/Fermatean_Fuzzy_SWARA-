function Wi = Wical(Qi)
%calculate the Wi of each criteria
    Wi = zeros (size(Qi));
    Wi(:,1) = Qi(:,1);
    Wi (:,2) = Qi(:,2)./sum(Qi(:,2));
% Wi is a matrix with a size number of criteria and 2 columns the first is
% the index of criteria and the second is the Wi the weight of each
% criteria
end
