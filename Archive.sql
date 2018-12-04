-- Fichier qui crée les tables

DROP TABLE IF EXISTS Pays cascade;
DROP TABLE IF EXISTS Athlete cascade;
DROP TABLE IF EXISTS Equipe cascade;
DROP TABLE IF EXISTS Sport cascade;
DROP TABLE IF EXISTS EpreuveCollective cascade;
DROP TABLE IF EXISTS EpreuveIndividuelle cascade;
DROP TABLE IF EXISTS Athlete_EpreuveIndividuelle cascade;
DROP TABLE IF EXISTS Equipe_EpreuveCollective cascade;
DROP TABLE IF EXISTS Resultats_Equipe cascade;

CREATE TABLE Pays (
  id_pays serial,
  nom text not null,
  code_pays text not null unique,
  nb_medailles_or integer default 0,
  nb_medailles_argent integer default 0,
  nb_medailles_bronze integer default 0,
  nb_medailles_total integer default 0,
  rang integer default 0,
  PRIMARY KEY(id_pays)
);

CREATE TABLE Sport (
  id_sport serial,
  nom_sport text not null,
  categorie text,
  PRIMARY KEY(id_sport)
);

CREATE TABLE Athlete (
    id_athlete serial,
    nom text not null,
    code_pays text not null,
    id_sport integer not null,
    nb_medailles_or integer,
    nb_medailles_argent integer,
    nb_medailles_bronze integer,
    rang integer default 0,
    PRIMARY KEY(id_athlete),
    FOREIGN KEY(code_pays) REFERENCES Pays(code_pays),
    FOREIGN KEY(id_sport) REFERENCES Sport(id_sport)
  );

  CREATE TABLE Equipe (
    id_equipe serial,
    code_pays text not null,
    id_sport integer not null,
    PRIMARY KEY(id_equipe),
    FOREIGN KEY(code_pays) REFERENCES Pays(code_pays),
    FOREIGN KEY(id_sport) REFERENCES Sport(id_sport)
  );

CREATE TABLE EpreuveCollective (
  id_epreuve serial PRIMARY KEY,
  id_sport integer not null,
  FOREIGN KEY(id_sport) REFERENCES Sport(id_sport)
);

CREATE TABLE EpreuveIndividuelle (
  id_epreuve serial PRIMARY KEY,
  nom_epreuve text not null,
  id_sport integer not null,
  FOREIGN KEY(id_sport) REFERENCES Sport(id_sport)
);

CREATE TABLE Athlete_EpreuveIndividuelle (
  id_athlete integer not null,
  id_epreuve integer not null,
  medaille text not null,
  performance text,
  FOREIGN KEY(id_athlete) REFERENCES Athlete(id_athlete),
  FOREIGN KEY(id_epreuve) REFERENCES EpreuveIndividuelle(id_epreuve)
);

CREATE TABLE Equipe_EpreuveCollective (
  id_epreuve integer not null,
  id_equipe integer not null,
  medaille text not null,
  FOREIGN KEY(id_epreuve) REFERENCES EpreuveCollective(id_epreuve),
  FOREIGN KEY(id_equipe) REFERENCES Equipe(id_equipe)
);

CREATE TABLE Resultats_Equipe(
	id_epreuve integer not null,
	id_gagnant integer not null,
	id_perdant integer not null,
	FOREIGN KEY(id_epreuve) REFERENCES EpreuveCollective(id_epreuve),
  score text,
	FOREIGN KEY(id_perdant) REFERENCES Equipe(id_equipe),
  FOREIGN KEY(id_gagnant) REFERENCES Equipe(id_equipe)
);
