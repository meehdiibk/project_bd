-- Requetes SQL demandées

-- Difficulté *

-- 1
SELECT nom, code_pays FROM Athlete WHERE nb_medailles_total <> 0;

-- 2
SELECT nom, code_pays, medaille FROM Athlete A, EpreuveIndividuelle EI, Athlete_EpreuveIndividuelle AEI WHERE (nom_epreuve = '100m' or nom_epreuve = '200m' or nom_epreuve = '400m') and AEI.medaille <> null;

-- 3
SELECT nom, code_pays FROM Athlete WHERE
