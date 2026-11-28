-- Active: 1795768088011@@127.0.0.1@3306@sante

insert into sexe (libelle) values ('M'), ('F');
INSERT INTO patients (nom, prenom, dateDeNaissance, lieuDeNaissance, idSexe, nationalite, telephone, adresse)
VALUES 
    ('Rakoto', 'Jean-Baptiste', '1985-04-12', 'Antananarivo', (SELECT id FROM sexe WHERE libelle = 'M'), 'Malgache', '+261 34 12 345 67', 'Lot II M 45 Ter, Antananarivo 101'),
    ('Rasoamanana', 'Vololona', '1992-11-28', 'Toamasina', (SELECT id FROM sexe WHERE libelle = 'F'), 'Malgache', '+261 32 98 765 43', 'Boulevard Joffre, Toamasina 501'),
    ('Andrianasolo', 'Faly', '2001-07-03', 'Fianarantsoa', (SELECT id FROM sexe WHERE libelle = 'M'), 'Malgache', '+261 33 45 678 90', 'Rue du Général Leclerc, Fianarantsoa 301');
