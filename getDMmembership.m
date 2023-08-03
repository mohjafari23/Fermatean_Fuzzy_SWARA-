function FDMn=getDMmembership(EY)
% EY is the year experience of the DMs in 10 years.
%EY be a Vector.
  if ~isrow(EY)
      EY=EY';
  end
% The membership is calculated by the sigmoidal membership function
    MD = sigmf(EY,[3,1.7]);
    NMD = sigmf(EY,[-3,1.3]);
    FDMn=[MD;NMD];

end
