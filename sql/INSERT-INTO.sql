INSERT INTO media VALUES ('S01', 'sound', 'testSound', 'sound/test.wav', "this is a test tone");
INSERT INTO media VALUES ('I02', 'image', 'testImage', 'image/test.png', "this is a test image");

-- CHOICE TABLE POPULATION (Sounds) --
INSERT INTO choice VALUES ('CH01', 'Paino', 'sound', 'keyboard', 'S01');
INSERT INTO choice VALUES ('CH02', 'Acoustic Guitar', 'string', 'keyboard', 'S01');
INSERT INTO choice VALUES ('CH03', 'Flute', 'sound', 'woodwind', 'S01');
INSERT INTO choice VALUES ('CH04', 'Saxophone', 'sound', 'brass', 'S01');
INSERT INTO choice VALUES ('CH05', 'Violin', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH06', 'Trumpet', 'sound', 'brass', 'S01');
INSERT INTO choice VALUES ('CH07', 'Oboe', 'sound', 'woodwind', 'S01');
INSERT INTO choice VALUES ('CH08', 'Trombone', 'sound', 'brass', 'S01');
INSERT INTO choice VALUES ('CH09', 'Organ', 'sound', 'keyboard', 'S01');
INSERT INTO choice VALUES ('CH10', 'Sitar', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH11', 'English Horn', 'sound', 'brass', 'S01');
INSERT INTO choice VALUES ('CH12', 'Accordion', 'sound', 'keyboard', 'S01');
INSERT INTO choice VALUES ('CH13', 'Harmonica', 'sound', 'woodwind', 'S01');
INSERT INTO choice VALUES ('CH14', 'Bass Guitar', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH15', 'Double Bass', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH16', 'Tuba', 'sound', 'brass', 'S01');
INSERT INTO choice VALUES ('CH17', 'Harp', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH18', 'Piccolo', 'sound', 'woodwind', 'S01');
INSERT INTO choice VALUES ('CH19', 'Bassoon', 'sound', 'woodwind', 'S01');
INSERT INTO choice VALUES ('CH20', 'Electric Guitar', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH21', 'Clarinet', 'sound', 'woodwind', 'S01');
INSERT INTO choice VALUES ('CH22', 'Triangle', 'sound', 'precussion', 'S01');
INSERT INTO choice VALUES ('CH23', 'Bass Drum', 'sound', 'precussion', 'S01');
INSERT INTO choice VALUES ('CH24', 'Snare Drum', 'sound', 'precussion', 'S01');
INSERT INTO choice VALUES ('CH25', 'Djembe', 'sound', 'precussion', 'S01');
INSERT INTO choice VALUES ('CH26', 'Harpsicord', 'sound', 'keyboard', 'S01');
INSERT INTO choice VALUES ('CH27', 'Ukulele', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH28', 'Lyre', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH29', 'Xylophone', 'sound', 'precussion', 'S01');
INSERT INTO choice VALUES ('CH30', 'Cello', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH31', 'Crash Cymbol', 'sound', 'precussion', 'S01');
INSERT INTO choice VALUES ('CH32', 'Ride Cymbol', 'sound', 'precussion', 'S01');
INSERT INTO choice VALUES ('CH33', 'Rack Tom', 'sound', 'precussion', 'S01');
INSERT INTO choice VALUES ('CH34', 'Floor Tom', 'sound', 'precussion', 'S01');

-- CHOICE READ TABLE POPULATION (Text) --
INSERT INTO choiceRead VALUES ('CR01', 'Sounds which can be made using parts of the body, e.g. clapping, tapping knees, etc.', '1',);
INSERT INTO choiceRead VALUES ('CR04', 'Getting louder', '1',);
INSERT INTO choiceRead VALUES ('CR03', 'A piece of music for one singer or instrumentalist', '1',);
INSERT INTO choiceRead VALUES ('CR02', 'A song or piece of music for two parts of equal importance', '1',);

INSERT INTO choiceRead VALUES ('CR05', 'Two or more notes played at the same time', '2',);
INSERT INTO choiceRead VALUES ('CR06', 'The person elected to lead a group of singers or instrumentalists', '2',);
INSERT INTO choiceRead VALUES ('CR07', 'The rapid repetition of notes, producing a quavering effect. It can be either be on one note or between two notes', '2',);
INSERT INTO choiceRead VALUES ('CR08', 'Getting quieter', '2',);

INSERT INTO choiceRead VALUES ('CR09', 'The person elected to lead a group of singers or instrumentalists', '3',);
INSERT INTO choiceRead VALUES ('CR10', 'Sounds which can be made using parts of the body, e.g. clapping, tapping knees, etc', '3',);
INSERT INTO choiceRead VALUES ('CR11', 'A short rhythmic or melodic pattern which is repeated over and over', '3',);
INSERT INTO choiceRead VALUES ('CR12', 'Gently, soft', '3',);

INSERT INTO choiceRead VALUES ('CR13', 'Getting louder', '4',);
INSERT INTO choiceRead VALUES ('CR14', 'Getting quieter', '4',);
INSERT INTO choiceRead VALUES ('CR15', 'The interval between two musical notes, the upper one of which has twice the pitch of the lower one', '4',);
INSERT INTO choiceRead VALUES ('CR16', 'The underlying sounds used to support a melody line', '4',);

-- GAME TABLE POPULATION --

INSERT INTO game (gameID, playType, difficulty, description, numQuestions, maxScore, minScore) VALUES ('SS01', 'S', 'Easy', 'Learn about instruments, in this game you will be given pictures or sounds and answer questions acordingly', 10, 1000, 400);

-- SOUND STUDY QUESTION TABLE POPULATION --
INSERT INTO SoundStudyquestion VALUES ('1', 'What is body precussion', 'CR01', 'Easy', 'The clue is in the name!');
INSERT INTO SoundStudyquestion VALUES ('2', 'What is a chord', 'CR05', 'Easy', 'This ones EAAASY!!');
INSERT INTO SoundStudyquestion VALUES ('3', 'What is a conductor', 'CR09', 'Easy', 'Originates from the latin word conducere which means bring togehter ');
INSERT INTO SoundStudyquestion VALUES ('4', 'Define crescendo', 'CR13', 'Easy', 'E.g. the reluctant cheers began to crescendo');
