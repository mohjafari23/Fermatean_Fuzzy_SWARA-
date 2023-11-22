function Adm = aggregated_decision_matrix (Dm,wdm)
% Dm is the decision matrix the rows are the criteria and the columns are
% The DM for each DM is a two Columes one for the membership and one for
% the none membership the if there is 'i' DM the 2(i-1)+1 columns is the
% membership he evaluate the criteria and the 2(i) columns is the
% membership grade that he evaluates the criteria with.
  [nc,~] = size(Dm);
  Adm = zeros([nc,2]);
  MDMm = Dm(:,1:2:end);
  NMDMm = Dm(:,2:2:end);
  Adm(:,1) = prod((MDMm .^ repmat(wdm,[nc,1])),2);
  Adm(:,2) = power((1-prod(((1 - NMDMm.^3).^repmat(wdm,[nc,1])),2)),1/3);
  % The Adm is an aggregated decision matrix with rows of number of criteria and columns
  % of 2 first for the membership and second of membership grade
end
