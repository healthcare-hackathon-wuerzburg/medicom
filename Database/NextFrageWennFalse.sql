create table NextFrageWennFalse
(
    NFWFalseID int auto_increment
        primary key,
    FID        int                    null,
    NextFID    int                    null,
    SkipIf     enum ('True', 'False') null,
    constraint nextfragewennfalse_ibfk_1
        foreign key (FID) references fragenkatalog.Fragen (FrageID),
    constraint nextfragewennfalse_ibfk_2
        foreign key (NextFID) references fragenkatalog.Fragen (FrageID)
);

create index FID
    on NextFrageWennFalse (FID);

create index NextFID
    on NextFrageWennFalse (NextFID);

INSERT INTO Fragenkatalog.NextFrageWennFalse (NFWFalseID, FID, NextFID, SkipIf) VALUES (1, 15, 17, 'False');
INSERT INTO Fragenkatalog.NextFrageWennFalse (NFWFalseID, FID, NextFID, SkipIf) VALUES (2, 58, 61, 'False');
