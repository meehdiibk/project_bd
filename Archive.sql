-- Création des tables

DROP TABLE IF EXISTS Pays;

CREATE TABLE Pays (
  id_pays serial PRIMARY KEY,
  nom text not null,
  nb_medailles_or integer,
  nb_medailles_bronze integer,
  nb_medailles_argent integer,
  rang integer,
)

DROP TABLE IF EXISTS Athlete;

CREATE TABLE Athlete (
  id_athlete serial PRIMARY KEY,
  nom text not null,
  sexe varchar(10),
  nom_pays text not null,
  nom_sport text not null,
  nb_medailles_or integer,
  nb_medailles_argent integer,
  nb_medailles_bronze integer,
  rang integer,
  FOREIGN KEY(nom_pays) REFERENCES Pays(nom_pays),
  FOREIGN KEY(nom_sport) REFERENCES Sport(nom_sport),
);

DROP TABLE IF EXISTS Equipe;

CREATE TABLE Equipe (
  id_equipe serial PRIMARY KEY,
  nom_pays text not null,
  nom_sport text not null,
  FOREIGN KEY(nom_pays) REFERENCES Pays(nom_pays),
  FOREIGN KEY(nom_sport) REFERENCES Sport(nom_sport),
);

DROP TABLE IF EXISTS Sport;

CREATE TABLE Sport (
  id_sport serial PRIMARY KEY,
  nom_sport text not null,
  type text,
);

DROP TABLE IF EXISTS EpreuveCollective;

CREATE TABLE EpreuveCollective (
  id_epreuve serial PRIMARY KEY,
  nom_epreuve text not null,
  id_sport integer not null,
  FOREIGN KEY(id_sport) REFERENCES Sport(id_sport),
);

DROP TABLE IF EXISTS EpreuveIndividuelle;

CREATE TABLE EpreuveIndividuelle (
  id_epreuve serial PRIMARY KEY,
  nom_epreuve text not null,
  id_sport integer not null,
  FOREIGN KEY(id_sport) REFERENCES Sport(id_sport),
);

DROP TABLE IF EXISTS Athlete_EpreuveIndividuelle;

CREATE TABLE Athlete_EpreuveIndividuelle (
  id_athlete integer not null,
  id_epreuve integer not null,
  performance text,
  FOREIGN KEY(id_athlete) REFERENCES Athlete(id_athlete),
  FOREIGN KEY(id_epreuve) REFERENCES EpreuveIndividuelle(id_epreuve),
);

DROP TABLE IF EXISTS Equipe_EpreuveCollective;

CREATE TABLE Equipe_EpreuveCollective (
  id_epreuve integer not null,
  id_gagnant integer not null,
  id_perdant integer not null,
  score text,
  FOREIGN KEY(id_epreuve) REFERENCES EpreuveCollective(id_epreuve),
  FOREIGN KEY(id_gagnant, id_perdant) REFERENCES Equipe(id_equipe),
);
