
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
