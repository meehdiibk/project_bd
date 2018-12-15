-- Fichier temporaire :
-- Tester les tables et les afficher

select nom_epreuve, nom_sport from EpreuveIndividuelle a Natural join Sport s where a.id_sport = s.id_sport;
