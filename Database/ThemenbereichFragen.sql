create table ThemenbereichFragen
(
    ThemenbereichFrageID int auto_increment
        primary key,
    TID                  int null,
    FID                  int null,
    constraint themenbereichfragen_ibfk_1
        foreign key (TID) references fragenkatalog.themenbereiche (ThemenbereichID),
    constraint themenbereichfragen_ibfk_2
        foreign key (FID) references fragenkatalog.Fragen (FrageID)
);

create index FID
    on ThemenbereichFragen (FID);

create index KID
    on ThemenbereichFragen (TID);

INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (1, 1, 1);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (2, 1, 2);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (3, 1, 3);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (4, 1, 4);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (5, 1, 5);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (6, 1, 6);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (7, 1, 7);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (8, 1, 8);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (9, 1, 9);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (10, 1, 10);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (11, 1, 11);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (12, 1, 12);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (13, 1, 13);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (14, 1, 14);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (15, 1, 15);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (16, 1, 16);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (17, 1, 17);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (18, 1, 18);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (19, 1, 19);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (20, 1, 20);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (21, 1, 21);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (22, 1, 22);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (23, 1, 23);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (24, 1, 24);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (25, 1, 25);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (26, 1, 26);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (27, 1, 27);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (28, 1, 28);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (29, 1, 29);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (30, 1, 30);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (31, 1, 31);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (32, 1, 32);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (33, 1, 33);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (34, 1, 34);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (35, 1, 35);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (36, 1, 36);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (37, 1, 37);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (38, 1, 38);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (39, 1, 39);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (40, 1, 40);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (41, 1, 41);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (42, 1, 42);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (43, 1, 43);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (44, 1, 44);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (45, 1, 45);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (46, 1, 46);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (47, 1, 47);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (48, 1, 48);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (49, 1, 49);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (50, 1, 50);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (51, 1, 51);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (52, 1, 52);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (53, 1, 53);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (54, 1, 54);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (55, 1, 55);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (56, 1, 56);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (57, 1, 57);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (58, 1, 58);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (59, 1, 59);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (60, 1, 60);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (61, 1, 61);
INSERT INTO Fragenkatalog.ThemenbereichFragen (ThemenbereichFrageID, TID, FID) VALUES (62, 1, 62);
