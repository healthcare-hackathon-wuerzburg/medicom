create table Themenbereiche
(
    ThemenbereichID   int auto_increment
        primary key,
    ThemenbereichName varchar(500) not null
);

INSERT INTO Fragenkatalog.Themenbereiche (ThemenbereichID, ThemenbereichName) VALUES (1, 'Schmerzklinik');
INSERT INTO Fragenkatalog.Themenbereiche (ThemenbereichID, ThemenbereichName) VALUES (2, 'Rheumatologie');
INSERT INTO Fragenkatalog.Themenbereiche (ThemenbereichID, ThemenbereichName) VALUES (3, 'Kardiologie');
INSERT INTO Fragenkatalog.Themenbereiche (ThemenbereichID, ThemenbereichName) VALUES (4, 'Gastroenterologie');
INSERT INTO Fragenkatalog.Themenbereiche (ThemenbereichID, ThemenbereichName) VALUES (5, 'Onkologie');
