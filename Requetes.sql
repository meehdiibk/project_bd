-- Requetes SQL demandées

-- Difficulté *
 -- 1
select * from athlete where code_pays='ITA' and nb_medailles_total<>0;
-- 2
SELECT A.nom, A.code_pays, medaille FROM Athlete A, EpreuveIndividuelle EI, Athlete_EpreuveIndividuelle AEI WHERE (nom_epreuve like '100m%' or nom_epreuve like '200m%' or nom_epreuve like '400m%') and EI.id_epreuve=AEI.id_epreuve and A.id_athlete=AEI.id_athlete;
-- 3
SELECT a.* FROM Athlete a, Sport s WHERE s.nom_sport='Handball' and a.id_sport=s.id_sport and (DATE_PART('year', '2016-01-01'::date) - DATE_PART('year', a.age::date)<25);
-- 4
select * from athlete a, sport s, athlete_epreuveindividuelle ae, epreuveindividuelle e where a.nom like '%Phelps' and a.id_athlete=ae.id_athlete and ae.id_epreuve=e.id_epreuve and e.id_sport=s.id_sport;
-- 5
select * from epreuvecollective e, sport s where e.id_sport=s.id_sport;
-- 6
select nom_epreuve as epreuve, min(performance) as meilleur_temps from athlete_epreuveindividuelle ae, epreuveindividuelle e, athlete where e.nom_epreuve like 'marathon%' and e.id_epreuve=ae.id_epreuve and athlete.id_athlete=ae.id_athlete group by nom_epreuve;

--Difficulte **
-- 4
select * from athlete where nb_medailles_or=0;
-- 5
select distinct e.* from epreuveindividuelle e, athlete a, athlete_epreuveindividuelle ae where a.code_pays<>'FRA' and a.id_athlete=ae.id_athlete and ae.id_epreuve=e.id_epreuve;
-- 6
select nom_epreuve as epreuve, min(performance) as meilleur_temps from athlete_epreuveindividuelle ae, epreuveindividuelle e, athlete where e.nom_epreuve like 'marathon%' and e.id_epreuve=ae.id_epreuve and athlete.id_athlete=ae.id_athlete group by nom_epreuve;
