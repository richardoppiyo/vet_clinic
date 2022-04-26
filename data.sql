
INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg)
VALUES('Agumon','3-Feb-2020',0,false,10.23),
('Gabumon','15-Nov-2018',2,true,8),
('Pikachu','7-Jan-2021',1,false,15.04),
('Devimon','12-May-2017',5,true,11.0);


INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg)
VALUES('Charmander','8-Feb-2020',0,false,-11.0),
('Plantmon','15-Nov-2021',2,true,-5.7),
('Squirtle','2-Apr-1993',3,false,-12.13),
('Angemon','12-Jun-2005',1,true,-45.0),
('Boarmon','7-Jun-2005',7,true,20.4),
('Blossom','13-Oct-1998',3,true,17.0),
('Ditto','14-May-2022',4,true,22.0);


INSERT INTO owners(full_name,age)
VALUES ('Sam Smith', 34),
('Jennifer Orwell',19 ),
('Bob',45),
('Melody Pond',77),
('Dean Winchester',14),
('Jodie Whittaker',38);


INSERT INTO species(name)
VALUES('Pokemon'),
('Digimon');


UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';

UPDATE animals
SET species_id = 1
WHERE species_id IS NULL;


UPDATE animals
SET owner_id = 1
WHERE id = 1;

UPDATE animals
SET owner_id = 2
WHERE id IN (2,3);

UPDATE animals
SET owner_id = 3
WHERE id IN (4,6);

UPDATE animals
SET owner_id = 4
WHERE id IN (5,7,10);

UPDATE animals
SET owner_id = 5
WHERE id IN (8,9);


INSERT INTO vets(name,age,date_of_graduation)
VALUES ('William Tatcher',45,'23-Apr-2000'),
('Maisy Smith',26,'17-Jan-2019'),
('Stephanie Mendez',64,'4-May-1981'),
('Jack Harkness',38,'8-Jun-2008');


INSERT INTO specializations (species_id,species_name,vet_name,vet_id)
VALUES (1,'Pokemon','William Tatcher',1),
(1,'Pokemon','Stephanie Mendez',3),
(2,'Digimon','Stephanie Mendez',3),
(2,'Digimon','Jack Harkness',4);