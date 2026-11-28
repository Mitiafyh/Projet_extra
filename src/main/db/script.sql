CREATE DATABASE IF NOT EXISTS sante;
USE sante;
CREATE TABLE sexe(
    id INT PRIMARY KEY AUTO_INCREMENT,
    libelle VARCHAR(5) NOT NULL UNIQUE
);

CREATE TABLE patients(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    date_de_naissance DATE,
    lieu_de_naissance VARCHAR(150),
    id_sexe INT,
    nationalite VARCHAR(100),
    telephone VARCHAR(30),
    adresse VARCHAR(255),
    FOREIGN KEY (id_sexe) REFERENCES sexe(id)
);
