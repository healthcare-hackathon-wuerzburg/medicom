create table FragenChoices
(
    FragenChoicesID int auto_increment
        primary key,
    FID             int                          null,
    NrOfOptions     int                          null,
    Format          enum ('Nummer', 'Buchstabe') not null,
    constraint fragenchoices_ibfk_1
        foreign key (FID) references fragenkatalog.Fragen (FrageID)
);

create index FID
    on FragenChoices (FID);

INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (1, 15, 4, 'Buchstabe');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (2, 19, 10, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (3, 20, 10, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (4, 21, 10, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (5, 22, 10, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (6, 24, 10, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (7, 25, 10, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (8, 26, 10, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (9, 42, 4, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (10, 43, 4, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (11, 44, 4, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (12, 45, 4, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (13, 46, 4, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (14, 47, 4, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (15, 48, 4, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (16, 49, 4, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (17, 50, 4, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (18, 51, 4, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (19, 52, 4, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (20, 53, 4, 'Nummer');
INSERT INTO Fragenkatalog.FragenChoices (FragenChoicesID, FID, NrOfOptions, Format) VALUES (21, 54, 4, 'Nummer');
