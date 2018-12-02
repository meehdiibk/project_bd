DROP TABLE IF EXISTS Pays cascade;
DROP TABLE IF EXISTS Athlete cascade;
DROP TABLE IF EXISTS Equipe cascade;
DROP TABLE IF EXISTS Sport cascade;
DROP TABLE IF EXISTS EpreuveCollective cascade;
DROP TABLE IF EXISTS EpreuveIndividuelle cascade;
DROP TABLE IF EXISTS Athlete_EpreuveIndividuelle cascade;
DROP TABLE IF EXISTS Equipe_EpreuveCollective cascade;


CREATE TABLE Pays (
  id_pays serial,
  nom text not null,
  nb_medailles_or integer,
  nb_medailles_bronze integer,
  nb_medailles_argent integer,
  rang integer,
  PRIMARY KEY(nom)
);

CREATE TABLE Athlete (
  id_athlete serial,
  nom text not null,
  sexe varchar(10),
  nom_pays text not null,
  nom_sport text not null,
  nb_medailles_or integer,
  nb_medailles_argent integer,
  nb_medailles_bronze integer,
  rang integer,
  PRIMARY KEY(id_athlete),
  FOREIGN KEY(nom_pays) REFERENCES Pays(nom),
  FOREIGN KEY(nom_sport) REFERENCES Sport(nom_sport)
);

CREATE TABLE Equipe (
  id_equipe serial,
  nom_pays text not null,
  nom_sport text not null,
  PRIMARY KEY(id_equipe),
  FOREIGN KEY(nom_pays) REFERENCES Pays(nom),
  FOREIGN KEY(nom_sport) REFERENCES Sport(nom_sport)
);


CREATE TABLE Sport (
  id_sport serial PRIMARY KEY,
  nom_sport text not null,
<<<<<<< HEAD
  type text,
  
);
DROP TABLE IF EXISTS EpreuveCollective;
=======
  type text);
>>>>>>> fe7b91a60a9b075be7e73a505ce40e77845778d9

CREATE TABLE EpreuveCollective (
  id_epreuve serial PRIMARY KEY,
  nom_epreuve text not null,
  id_sport integer not null,
  FOREIGN KEY(id_sport) REFERENCES Sport(id_sport));



CREATE TABLE EpreuveIndividuelle (
  id_epreuve serial PRIMARY KEY,
  nom_epreuve text not null,
  id_sport integer not null,
  FOREIGN KEY(id_sport) REFERENCES Sport(id_sport));



CREATE TABLE Athlete_EpreuveIndividuelle (
  id_athlete integer not null,
  id_epreuve integer not null,
  performance text,
  FOREIGN KEY(id_athlete) REFERENCES Athlete(id_athlete),
  FOREIGN KEY(id_epreuve) REFERENCES EpreuveIndividuelle(id_epreuve));


CREATE TABLE Equipe_EpreuveCollective (
  id_epreuve integer not null,
  id_gagnant integer not null,
  id_perdant integer not null,
  score text,
  FOREIGN KEY(id_epreuve) REFERENCES EpreuveCollective(id_epreuve),
<<<<<<< HEAD
  FOREIGN KEY(id_gagnant, id_perdant) REFERENCES Equipe(id_equipe),
);

insert into Pays values(USA);
  SELECT * from Pays;
=======
  FOREIGN KEY(id_gagnant, id_perdant) REFERENCES Equipe(id_equipe));
>>>>>>> fe7b91a60a9b075be7e73a505ce40e77845778d9
