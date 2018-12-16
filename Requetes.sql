-- Requetes SQL demandées

-- Difficulté *
 -- 1
select * from athlete where code_pays='ITA' and nb_medailles_total<>0;
-- 2
SELECT A.nom, A.code_pays, medaille FROM Athlete A, EpreuveIndividuelle EI, Athlete_EpreuveIndividuelle AEI WHERE (nom_epreuve like '100m%' or nom_epreuve like '200m%' or nom_epreuve like '400m%') and EI.id_epreuve=AEI.id_epreuve and A.id_athlete=AEI.id_athlete;
-- 3
SELECT a.* FROM Athlete a, Sport s WHERE s.nom_sport='Handball' and s.categorie='Femmes' and  a.id_sport=s.id_sport and (DATE_PART('year', '2016-01-01'::date) - DATE_PART('year', a.age::date)<25);
-- 4
select a.nom, e.nom_epreuve, ae.medaille, ae.performance from athlete a, sport s, athlete_epreuveindividuelle ae, epreuveindividuelle e where a.nom like '%Phelps' and a.id_athlete=ae.id_athlete and ae.id_epreuve=e.id_epreuve and e.id_sport=s.id_sport;
-- 5
select e.id_epreuve, s.nom_sport, s.categorie from epreuvecollective e, sport s where e.id_sport=s.id_sport;
-- 6
select nom_epreuve as epreuve, min(performance) as meilleur_temps from athlete_epreuveindividuelle ae, epreuveindividuelle e, athlete where e.nom_epreuve like 'marathon%' and e.id_epreuve=ae.id_epreuve and athlete.id_athlete=ae.id_athlete group by nom_epreuve;

--Difficulte **
-- 1
select e.nom_epreuve, a.code_pays, avg(performance) from athlete a, athlete_epreuveindividuelle ae, epreuveindividuelle e where e.nom_epreuve like '200m nage libre%' and e.id_epreuve=ae.id_epreuve and a.id_athlete=ae.id_athlete group by e.id_epreuve, a.code_pays;
-- 2
select rang, nom, nb_medailles_total from pays;
-- 3
create view medaille_or as select id_epreuve, nom as gagnant_or, a.code_pays from athlete a, athlete_epreuveindividuelle ae where medaille='or' and ae.id_athlete=a.id_athlete;
create view medaille_argent as select id_epreuve, nom as gagnant_argent, a.code_pays from athlete a, athlete_epreuveindividuelle ae where medaille='argent' and ae.id_athlete=a.id_athlete;
select * from medaille_or o left join medaille_argent a on a.id_epreuve=o.id_epreuve;
drop view medaille_or;
drop view medaille_argent;
-- 4
select * from athlete where nb_medailles_or=0;
-- 5
select distinct e.* from epreuveindividuelle e, athlete a, athlete_epreuveindividuelle ae where a.code_pays<>'FRA' and a.id_athlete=ae.id_athlete and ae.id_epreuve=e.id_epreuve;
-- 6
select a.nom, a.code_pays, ae.performance from athlete a, athlete_epreuveindividuelle ae, epreuveindividuelle e where e.nom_epreuve like '100m%' and e.id_epreuve=ae.id_epreuve and a.id_athlete=ae.id_athlete and  performance<'00:00:10';

--Difficulte ***
-- 2
create view id as select distinct e.id_sport from epreuveindividuelle e;
select count(*) from id;
select distinct code_pays
from athlete a, id i
where i.id_sport=a.id_sport
group by code_pays
having count(distinct i.id_sport)=(select count(*) from id);
drop view id;
-- 4
create view tout as select count(*) as total from athlete where nb_medailles_total<>0;
create view femmes as select count(*) as nb_femmes from athlete a, sport s where categorie='Femmes' and s.id_sport=a.id_sport and nb_medailles_total<>0;
select  nb_femmes*100/total as pourcentage from tout, femmes;
drop view tout;
drop view femmes;

-- Requêtes supplémentaires
-- 1
select x.nom, x.code_pays from athlete x
where x.id_athlete in(
select a.id_athlete from athlete a
except
select ae.id_athlete from athlete_epreuveindividuelle ae);

-- 2
select a.nom, a.code_pays, count(ae.id_epreuve) from athlete a, athlete_epreuveindividuelle
ae where a.id_athlete=ae.id_athlete and a.id_athlete in (select x.id_athlete from athlete_epreuveindividuelle x where x.medaille is not null)group by a.nom, a.code_pays;
  -- Autre manière de faire la même requête
select a.nom, a.code_pays,count(ae.id_epreuve) from athlete a, athlete_epreuveindividuelle ae where a.id_athlete = ae.id_athlete and exists (select * from athlete_epreuveindividuelle x where x.id_athlete=a.id_athlete and x.medaille is not null) group by a.nom, a.code_pays;

--3
select p.nom, avg((DATE_PART('year', '2016-01-01'::date) - DATE_PART('year', a.age::date))) from pays p, athlete a group by a.code_pays;
