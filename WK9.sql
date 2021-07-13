SHOW DATABASES;

CREATE DATABASE cats;
USE cats;


CREATE TABLE cats_details (
    Cat_ID INT NOT NULL,
    Cat_Name VARCHAR(20) NOT NULL,
    Breed VARCHAR(20) NOT NULL,
    Age INT NOT NULL,
    Colour_Coat VARCHAR(20) NOT NULL,
    PRIMARY KEY (Cat_ID),
    UNIQUE (Cat_Name)
);

EXPLAIN cats_details;
INSERT INTO cats_details (Cat_id, Cat_Name, Breed, Age, Colour_Coat)
VALUES ('1','Oliver',' Tabbycat', '10', 'Ginger'),
('2', 'Mimi','Turkish Angora', '6', 'Black'),
('3', 'MoMo','Turkish Angora', '6', 'Black'),
('4', 'Ava','Mixed', '9', 'Calico'),
('5', 'Mushu','Turkish Angota', '3', 'Black & White'),
('6', 'Milan','Bengal','3','Stripped');

SELECT 
    *
FROM
    cats_details;
    
    
CREATE DATABASE dogs;
USE dogs;
CREATE DATABASE cats;
USE cats;


CREATE TABLE Dogs_details (
    Dogs_ID INT NOT NULL,
    Dogs_Name VARCHAR(20) NOT NULL,
    Breed VARCHAR(20) NOT NULL,
    Age INT NOT NULL,
    Colour_Coat VARCHAR(20) NOT NULL,
    PRIMARY KEY (Dogs_ID),
    UNIQUE (Dogs_Name));

EXPLAIN dogs_details;
INSERT INTO dogs_details (Dog_id, Dog_Name, Breed, Age, Colour_Coat)
VALUES ('1','Bob',' Husky', '12', 'Silver'),
('2', 'Oscar','Pug', '5', 'White'),
('3', 'Titus','German Shepard', '7', 'Black'),
('4', 'Octavia','Doberman', '2', 'Calico'),
('5', 'Saint','Bully XL', '4', 'Brown'),
('6', 'Ceasar','Golden Retreiver','5','Blonde');

SELECT 
    *
FROM
    dogs_details;
    





