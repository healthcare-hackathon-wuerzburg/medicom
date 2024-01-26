create table Fragen
(
    FrageID     int auto_increment
        primary key,
    FrageText   varchar(1000)                                                                 not null,
    AntwortText varchar(1000)                                                                 not null,
    Eingabetyp  enum ('Speech', 'Single Choice', 'Multiple Choice', 'Drawing', 'Y/N', 'Text') not null
);

INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (1, 'Wie heißen Sie?', 'P heißt %s.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (2, 'Sind Sie männlich, weiblich oder divers?', 'P identifiziert sich als %s.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (3, 'Wie alt sind Sie?', 'P ist %s Jahre alt.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (4, 'Sind Sie ledig, verheiratet oder verwitwet?', 'P ist %s.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (5, 'Wie viele Kinder haben Sie?', 'P hat %s Kinder.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (6, 'Wie groß sind Sie?', 'P ist %s cm groß.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (7, 'Wieviel wiegen Sie?', 'P wiegt %s kg.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (8, 'Wann waren Sie das letzte Mal bei uns?', 'P ist das erste Mal da./P war das letzte mal vor %s da/P war das letzte Mal am %s da.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (9, 'Bitte fassen Sie in einem Satz zusammen, was ihr aktuelles Hauptproblem ist.', 'P gibt als aktuelles hauptproblem %s an.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (10, 'Wo haben Sie aktuell vor allem Schmerzen?', 'P hat vor allem %s Schmerzen.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (11, 'Bitte zeichnen Sie ihre Schmerzen ein!', '', 'Drawing');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (12, 'Wegen welcher Schmerzen sind Sie heute da?', 'P kommt wegen %s Schmerzen.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (13, 'Seit wie vielen Wochen bestehen die Schmerzen?', 'Die Schmerzen bestehen seit %s Wochen.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (14, 'Gibt es ein genaues Datum oder ein konkretes Ereignis, ab dem die Schmerzen aufgetreten sind?', '{P kann sich an den genauen Beginn nicht erinnern., P gibt an, dass die Schmerzen seit %s bestehen.}', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (15, 'Wählen Sie den Graphen aus aus, der den Verlauf der Schmerzen die letzten vier Wochen am ehesten beschreibt.', 'P beschreibt den Verlauf der Schmerzen der letzten Wochen als %s.', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (16, 'Wie oft treten die Schmerzattacken durchschnittlich auf und wie lange dauern sie?', 'P gibt an, dass die Schmerzattacken %s auftreten und durchschnittlich %s dauern.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (17, 'Sind Ihre Schmerzen zu einer bestimmten Tageszeit besonders stark?', 'P gibt an, dass die Schmerzen %s besonders stark sind.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (18, 'Tabelle 1', 'highest rating', 'Multiple Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (19, 'Wie stark sind ihre Schmerzen aktuell?', 'P gibt die aktuellen Schmerzen als %s an.', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (20, 'Wie stark waren Ihre Schmerzen in den letzten 4 Wochen durchschnittlich?', 'P gibt die durchschnittlichen Schmerzen der letzten 4 Wochen als %s an.', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (21, 'Wie stark waren Ihre Schmerzen in den letzten 4 Wochen maximal?', 'P gibt die maximalen Schmerzen der letzten 4 Wochen als x an.', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (22, 'Welche Schmerzen wären für Sie nach erfolgreicher Behandlung erträglich?', 'P gibt %s als nach der Behandlung erträgliches Schmerzniveau an.', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (23, 'An wievielen Tagem konnten Sie in den letzten 3 Monaten aufgrund von Schmerzen nicht ihren üblichen Aktivitäten nachgehen (z.B. Beruf, Schule, Haushalt)?', 'P gibt an, in den letzten drei Monaten an %s Tagen durch Schmerzen im Alltag behindert worden zu sein.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (24, 'In welchem Maße haben die Schmerzen in den letzten 3 Monaten ihgren Alltag beeinträchtigt (z.B. Ankleiden, Waschen, Essen, Einkaufen)?', 'P schätzt die Beeinträchtigung im Alltag als %s ein.', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (25, 'In welchem Maße haben die Schmerzen in den letzten 3 Monaten ihre Freizeitaktivitäten oder Unternehmungen im Familien- oder Freundeskreis beeinträchtigt?', 'P schätzt die Beeinträchtigung bei Freizeit- oder Familienaktivitäten als x ein.', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (26, 'In welchem Maße haben die Schmerzen in den letzten 3 MOnaten Ihre Arbeitsfähigkeit (einschließlich Hausarbeit) beeinträchtigt?', 'P schätzt die Beeinträchtigung der Arbeitsfähigkeit als %s ein.', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (27, 'Führen Sie Ihre Schmerzen auf eine bestimmte Krankheit zurück? Wenn ja auf welche?', '{Nein.,P führt die Schmerzen auf %s zurück.}', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (28, 'Führen Sie Ihre Schmerzen aif eine Operation zurück? Wenn ja, auf welche und wann war diese?', '{Nein.,P führt die Schmerzen auf %s {vor %s monaten,am %s} zurück.}', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (29, 'Führen Sie Ihre Schmerzen auf einen Unfall zurück? Wenn ja, was und wann ist es passiert?', '{Nein.,P führt die Schmerzen auf %s am %s zurück.}', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (30, 'Führen Sie Ihre Schmerzen auf körperliche Belastung zurück?', '{Nein.,Pführt die Schmerzen auf körperliche Belastung zurück.}', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (31, 'Führen Sie Ihre Schmerzen auf seelische Belastung zurück?', '{Nein.,P führt die Schmerzen auf seelische Belastung zurück.}', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (32, 'Führen Sie Ihre Schmerzen auf eine bisher noch nicht genannte Ursache zurück?', '{Nein.,P führt die Schmerzen auf %s zurück.}', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (33, 'Sind alle rechtlichen oder versicherungsrechtlichen Fragen im Zusammenhang mit Ihren Schmerzen geklärt?', '{Ja/ Nein}', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (34, 'Können Sie Ihre Schmerzen günstig beeinflussen? Wenn ja, wie?', 'P gibt an, die Schmerzen {nicht, durch %s} beeinflussen zu können.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (35, 'Was löst Ihrer Erfahrung nach die Schmerzen aus oder verschlimmert sie?', 'P gibt an, dass die Schmerzen oft durch %s ausgelöst oder verschklimmert werden.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (36, 'Tabelle 2', 'highest/lowest rating', 'Multiple Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (37, 'Tabelle 3', 'Scores', 'Multiple Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (38, 'Von welchen Ärtzten wurden Sie bisher behandelt? Bitte nennen Sie auch Fachrichtungen', '#Antwort Wort für Wort kopieren#', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (39, 'Wurde bereits eine Diagnose bezüglich Ihrer Schmerzen gestellt?', '#Antwort Wort für Wort kopieren#', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (40, 'Mit welchem Verfahren wurden Sie bisher wegen Ihrer Schmerzen behandelt?', '#Antwort Wort für Wort kopieren#', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (41, 'Bitte nennen Sie alle bisher bei Ihnen durchgeführten Operationen mit jeweiligem Datum', '#Antwort Wort für Wort kopieren#', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (42, 'Leiden Sie unter Tumoren oder Krebs?', 'Beeinträchtigung durch Tumor/Krebs: %s', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (43, 'Leiden Sie unter Erkrankungen des Nervensystems?', 'Beeinträchtigung durch Erkrankung Nervensystem: %s', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (44, 'Leiden Sie unter Erkrankungen der Atemwege?', 'Beeinträchtigung durch Erkrankung Atemwege: %s', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (45, 'Leiden Sie unter Erkrankungen von Herz oder Kreislauf?', 'Beeinträchtigung durch Erkrankung Herz/kreislauf: %s', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (46, 'Leiden Sie unter Magen- oder Darmerkrankungen?', 'Beeinträchtigung Magen/Darmerkrankung: %s', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (47, 'Leiden Sie unter Erkrankungen der Leber, Galle oder Bauchspeicheldrüse?', 'Beeinträchtigung Erkrankung Leber/Galle/Bauchspeicheldrüse: %s', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (48, 'Leiden Sie unter Erkrankungen der Nieren, Harnwege oder Geschlechtsorgane?', 'Beeinträchtigung Erkrankung Niere/harnwege/Geschlechtsorgane: %s', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (49, 'Leiden Sie unter Stoffwechselerkrankungen?', 'Beeinträchtigung Stoffwechselerkrankungen: %s', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (50, 'Leiden Sie unter Hauterkrankungen?', 'Beeinträchtigung Hauterkrankungen: %s', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (51, 'Leiden Sie unter Erkrankungen des Muskel-Skelett-Systems oder des Bindegewebes?', 'Beeinträchtigung Erkrankung Muskel-Skelett-System/Bindegewebe: %s', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (52, 'Leiden Sie unter seelischen Leiden?', 'Beeinträchtigung durch seelisches Leiden: %s', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (53, 'Liegen Allergien bei Ihnen vor?', 'Beeinträchtigung durch Allergien: %s', 'Single Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (54, 'Liegen andere Erkrankungen bei Ihnen vor?', '#Antwort Wort für Wort kopieren#', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (55, 'Tabelle 4', 'Medikamente', 'Text');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (56, 'Tabelle 5', 'PCS Score', 'Multiple Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (57, 'Tabelle 6', 'Gesundheitsbezogene Lebensqualität Score', 'Multiple Choice');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (58, 'Sind Sie derzeit berufstätig, und wenn ja welche Tätigkeit üben Sie aus?', '{P ist derzeit nicht berufstätig., P arbeitet als %s.}', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (59, 'Sind Sie zur Zeit arbeitsfähig? Falls nicht, wann glauben Sie, wieder an Ihren Arbeitsplatz zurückkehren zu können?', '{P ist arbeitsfähig., P ist arbeitsunfähug. Nach eigener Einschätzung bis %s.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (60, 'Wie viele Tage waren Sie in den letzten 3 Monaten arbeitsunfähig?', 'P war in den letzten 3 Monaten %s Tage arbeitsunfähig.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (61, 'Sind Sie Schüler, Student, berentet oder arbeitssuchend?', 'P ist {Schüler*in,Student,berentet,arbeitssuchend}.', 'Speech');
INSERT INTO Fragenkatalog.Fragen (FrageID, FrageText, AntwortText, Eingabetyp) VALUES (62, 'Haben Sie einen anerkannten Grad der Behinderung (GdB)?', 'P hat {keinen, %s} GdB.', 'Speech');
