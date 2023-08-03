function Qi = Qical (Ki)
%calculate the Qi of each criteria
  [nc,~] = size(Ki);
  Qi = zeros (size(Ki));
  Qi(:,1) = Ki(:,1);
  Qi(1,2) = 1;
   for i = 2 : nc
      Qi(i,2) = Qi(i-1,2)/Ki(i);
   end
 % Qi is a matrix with a size number of criteria and 2 columns the first is
% the index of criteria and the second is the Qi
end
