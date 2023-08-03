function Ci = Cical(fscore)
%calculate the Ci of each criteria
  [nc,~]=size(fscore);
  Ci=zeros([nc,2]);
  [sfscore,Ci(:,1)] = sort(fscore);
  Ci(:,2)=sfscore-[sfscore(1);sfscore(1:end-1)];
% Ci is a matrix with size number of criteria and 2 columns the first is
% the index of criteria and the second is the Ci
end
