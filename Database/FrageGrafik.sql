create table FrageGrafik
(
    FrageGrafikID int auto_increment
        primary key,
    FID           int null,
    GID           int null,
    constraint fragegrafik_ibfk_1
        foreign key (FID) references fragenkatalog.Fragen (FrageID),
    constraint fragegrafik_ibfk_2
        foreign key (GID) references fragenkatalog.Grafiken (GrafikID)
);

create index FID
    on FrageGrafik (FID);

create index GID
    on FrageGrafik (GID);

INSERT INTO Fragenkatalog.FrageGrafik (FrageGrafikID, FID, GID) VALUES (1, 11, 1);
INSERT INTO Fragenkatalog.FrageGrafik (FrageGrafikID, FID, GID) VALUES (2, 15, 2);
