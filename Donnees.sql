-- Fichier qui peuple les tables

-- Pays
insert into pays (nom, code_pays) values ('Etats-Unis', 'USA');
insert into pays (nom, code_pays) values ('Hongrie', 'HON');
insert into pays (nom, code_pays) values ('Jamaïque', 'JAM');
insert into pays (nom, code_pays) values ('Grande-Bretagne', 'GBR');
insert into pays (nom, code_pays) values ('Russie', 'RUS');
insert into pays (nom, code_pays) values ('Japon', 'JAP');
insert into pays (nom, code_pays) values ('Italie', 'ITA');
insert into pays (nom, code_pays) values ('Allemagne', 'ALL');
insert into pays (nom, code_pays) values ('Corée du Sud', 'CDS');
insert into pays (nom, code_pays) values ('Chine', 'CHN');
insert into pays (nom, code_pays) values ('France', 'FRA');
insert into pays (nom, code_pays) values ('Canada', 'CAN');
insert into pays (nom, code_pays) values ('Afrique Du Sud', 'AFS');
insert into pays (nom, code_pays) values ('Grenada', 'GRD');
insert into pays (nom, code_pays) values ('Kenya', 'KEN');
insert into pays (nom, code_pays) values ('Ethiopie', 'ETH');

-- Athlete
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Michael Phelps','USA',5,1,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Kathleen Ledecky','USA',4,1,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Simone Biles','USA',4,0,1, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Katinka Hosszu','HON',3,1,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Ryan Murphy','USA',3,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Danuta Kozak','HON',3,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Usain Bolt','JAM',3,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Jason Kenny','GBR',3,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Simone Manuel','USA',2,2,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Madeline (Maya) Dirado','USA',2,1,1, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Elaine Thompson','JAM',2,1,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Allyson Felix','USA',2,1,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Nathan Adrian','USA',2,0,2, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Max Whitlock','GBR',2,0,1, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Anthony Ervin','USA',2,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Lilly King','USA',2,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Yana Egorian','RUS',2,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Kohei Uchimura','JAP',2,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Niccolo Campriani','ITA',2,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Sebastian Brendel','ALL',2,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Gabriella Szabo','HON',2,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Marcus Gross','ALL',2,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Max Rendschmidt','ALL',2,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Hye-jin Chang','CDS',2,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Bon-chan Ku','CDS',2,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Long Ma','CHN',2,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Ning Ding','CHN',2,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Justin Gatlin','USA',0,1,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Andre De Grasse','CAN',0,1,2, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Christophe Lemaitre','FRA',0,0,1, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Wayde Von Niekerk','AFS',1,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Kirani James','GRD',0,1,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('LaShawn Merritt','USA',1,0,1, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Eliud Kipchoge','KEN',1,0,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Feyisa Lilesa','ETH',0,1,0, 1);
insert into Athlete(nom, code_pays,  nb_medailles_or, nb_medailles_argent, nb_medailles_bronze, id_sport) values('Galen Rupp','USA',0,0,1, 1);

-- EpreuveIndividuelle
insert into epreuveindividuelle (nom_epreuve, id_sport) values('100m', 1);
insert into epreuveindividuelle (nom_epreuve, id_sport) values('200m', 1);
insert into epreuveindividuelle (nom_epreuve, id_sport) values('400m', 1);
insert into epreuveindividuelle (nom_epreuve, id_sport) values('marathon', 1);

-- Athlete_EpreuveIndividuelle
insert into athlete_epreuveindividuelle (id_athlete, id_epreuve, prix, performance) values(7,1,'or','9mn81"');
insert into athlete_epreuveindividuelle (id_athlete, id_epreuve, prix, performance) values(28,1,'argent','9mn89"');
insert into athlete_epreuveindividuelle (id_athlete, id_epreuve, prix, performance) values(29,1,'bronze','9mn91"');
insert into athlete_epreuveindividuelle (id_athlete, id_epreuve, prix, performance) values(7,2,'or','19mn78"');
insert into athlete_epreuveindividuelle (id_athlete, id_epreuve, prix, performance) values(29,2,'argent','20mn02"');
insert into athlete_epreuveindividuelle (id_athlete, id_epreuve, prix, performance) values(30,2,'bronze','20mn12"');
insert into athlete_epreuveindividuelle (id_athlete, id_epreuve, prix, performance) values(31,3,'or','43mn03"');
insert into athlete_epreuveindividuelle (id_athlete, id_epreuve, prix, performance) values(32,3,'argent','43mn76"');
insert into athlete_epreuveindividuelle (id_athlete, id_epreuve, prix, performance) values(33,3,'bronze','43mn85"');
insert into athlete_epreuveindividuelle (id_athlete, id_epreuve, prix, performance) values(34,4,'or','2h08mn44"');
insert into athlete_epreuveindividuelle (id_athlete, id_epreuve, prix, performance) values(35,4,'argent','2h09mn54"');
insert into athlete_epreuveindividuelle (id_athlete, id_epreuve, prix, performance) values(36,4,'bronze','2h10mn05"');
