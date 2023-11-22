function Wi=FFSWARA(EY,Dm)
FDMn=getDMmembership(EY);
wdm = weightDM (FDMn);
Adm = aggregated_decision_matrix (Dm,wdm);
fscorem = fscore(Adm);
Ci = Cical(fscorem);
Ki = Kical(Ci);
Qi = Qical (Ki);
Wi = Wical(Qi);
end