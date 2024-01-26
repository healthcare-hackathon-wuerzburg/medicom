create table Grafiken
(
    GrafikID   int auto_increment
        primary key,
    GrafikName varchar(255) not null
);

INSERT INTO Fragenkatalog.Grafiken (GrafikID, GrafikName) VALUES (1, 'bodymap_template.png');
INSERT INTO Fragenkatalog.Grafiken (GrafikID, GrafikName) VALUES (2, 'pain_graphs.png');
