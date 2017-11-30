INSERT INTO media VALUES ('S01', 'sound', 'testSound', 'sound/test.wav', "this is a test tone");
INSERT INTO media VALUES ('I02', 'image', 'testImage', 'image/test.png', "this is a test image");


--------------------------------------
-- CHOICE TABLE POPULATION (Sounds) --
--------------------------------------
-- Keyboard --
INSERT INTO choice VALUES ('CH01', 'Piano', 'sound', 'keyboard', 'S01');
INSERT INTO choice VALUES ('CH02', 'Organ', 'sound', 'keyboard', 'S01');
INSERT INTO choice VALUES ('CH03', 'Accordion', 'sound', 'keyboard', 'S01');
INSERT INTO choice VALUES ('CH04', 'Harpsicord', 'sound', 'keyboard', 'S01');
-- Woodwind --
INSERT INTO choice VALUES ('CH05', 'Flute', 'sound', 'woodwind', 'S01');
INSERT INTO choice VALUES ('CH06', 'Harmonica', 'sound', 'woodwind', 'S01');
INSERT INTO choice VALUES ('CH07', 'Piccolo', 'sound', 'woodwind', 'S01');
INSERT INTO choice VALUES ('CH08', 'Bassoon', 'sound', 'woodwind', 'S01');
INSERT INTO choice VALUES ('CH09', 'Oboe', 'sound', 'woodwind', 'S01');
INSERT INTO choice VALUES ('CH10', 'Clarinet', 'sound', 'woodwind', 'S01');
-- Brass --
INSERT INTO choice VALUES ('CH11', 'Saxophone', 'sound', 'brass', 'S01');
INSERT INTO choice VALUES ('CH12', 'Trumpet', 'sound', 'brass', 'S01');
INSERT INTO choice VALUES ('CH13', 'Trombone', 'sound', 'brass', 'S01');
INSERT INTO choice VALUES ('CH14', 'English Horn', 'sound', 'brass', 'S01');
INSERT INTO choice VALUES ('CH15', 'Tuba', 'sound', 'brass', 'S01');
-- String --
INSERT INTO choice VALUES ('CH16', 'Violin', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH17', 'Acoustic Guitar', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH18', 'Sitar', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH19', 'Bass Guitar', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH20', 'Double Bass', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH21', 'Harp', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH22', 'Electric Guitar', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH23', 'Ukulele', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH24', 'Lyre', 'sound', 'string', 'S01');
INSERT INTO choice VALUES ('CH25', 'Cello', 'sound', 'string', 'S01');
-- Percussion --
INSERT INTO choice VALUES ('CH26', 'Triangle', 'sound', 'percussion', 'S01');
INSERT INTO choice VALUES ('CH27', 'Bass Drum', 'sound', 'percussion', 'S01');
INSERT INTO choice VALUES ('CH28', 'Snare Drum', 'sound', 'percussion', 'S01');
INSERT INTO choice VALUES ('CH29', 'Djembe', 'sound', 'percussion', 'S01')
INSERT INTO choice VALUES ('CH30', 'Xylophone', 'sound', 'percussion', 'S01');
INSERT INTO choice VALUES ('CH31', 'Crash Cymbol', 'sound', 'percussion', 'S01');
INSERT INTO choice VALUES ('CH32', 'Ride Cymbol', 'sound', 'percussion', 'S01');
INSERT INTO choice VALUES ('CH33', 'Rack Tom', 'sound', 'percussion', 'S01');
INSERT INTO choice VALUES ('CH34', 'Floor Tom', 'sound', 'percussion', 'S01');

-----------------------------------------
-- CHOICE READ TABLE POPULATION (Text) --
-----------------------------------------
-- 1 --
INSERT INTO choiceRead VALUES ('CR01', 'Sounds which can be made using parts of the body, e.g. clapping, tapping knees, etc.', '1',);
INSERT INTO choiceRead VALUES ('CR02', 'Getting louder', '1',);
INSERT INTO choiceRead VALUES ('CR03', 'A piece of music for one singer or instrumentalist', '1',);
INSERT INTO choiceRead VALUES ('CR04', 'A song or piece of music for two parts of equal importance', '1',);
-- 2 --
INSERT INTO choiceRead VALUES ('CR05', 'Two or more notes played at the same time', '2',);
INSERT INTO choiceRead VALUES ('CR06', 'The person elected to lead a group of singers or instrumentalists', '2',);
INSERT INTO choiceRead VALUES ('CR07', 'The rapid repetition of notes, producing a quavering effect. It can be either be on one note or between two notes', '2',);
INSERT INTO choiceRead VALUES ('CR08', 'Getting quieter', '2',);
-- 3 --
INSERT INTO choiceRead VALUES ('CR09', 'The person elected to lead a group of singers or instrumentalists', '3',);
INSERT INTO choiceRead VALUES ('CR10', 'Sounds which can be made using parts of the body, e.g. clapping, tapping knees, etc', '3',);
INSERT INTO choiceRead VALUES ('CR11', 'A short rhythmic or melodic pattern which is repeated over and over', '3',);
INSERT INTO choiceRead VALUES ('CR12', 'Gently, soft', '3',);
-- 4 --
INSERT INTO choiceRead VALUES ('CR13', 'Getting louder', '4',);
INSERT INTO choiceRead VALUES ('CR14', 'Getting quieter', '4',);
INSERT INTO choiceRead VALUES ('CR15', 'The interval between two musical notes, the upper one of which has twice the pitch of the lower one', '4',);
INSERT INTO choiceRead VALUES ('CR16', 'The underlying sounds used to support a melody line', '4',);
-- 5 --
INSERT INTO choiceRead VALUES ('CR17', 'Getting quieter', '5');
INSERT INTO choiceRead VALUES ('CR18', 'Getting louder', '5');
INSERT INTO choiceRead VALUES ('CR19', 'A piece of music for one singer or instrumentalist', '5');
INSERT INTO choiceRead VALUES ('CR20', 'A group of pitches based on a particular tonic, and comprising a scale, regarded as forming the tonal basis of a piece or section of music', '5');
-- 6 --
INSERT INTO choiceRead VALUES ('CR21', 'A song or piece of music for two parts of equal importance', '6');
INSERT INTO choiceRead VALUES ('CR22', 'A piece of music for one singer or instrumentalist', '6');
INSERT INTO choiceRead VALUES ('CR23', 'A piece of music which is created spontaneously', '6');
INSERT INTO choiceRead VALUES ('CR24', 'The smallest interval between two notes. (E.g. C to C #)', '6');
-- 7 --
INSERT INTO choiceRead VALUES ('CR25', 'The loudness of the music, usually described in terms of loud/quiet', '7');
INSERT INTO choiceRead VALUES ('CR26', 'The speed at which music is performed, usually described in terms of fast/slow', '7');
INSERT INTO choiceRead VALUES ('CR27', 'A short rhythmic or melodic pattern which is repeated over and over', '7');
INSERT INTO choiceRead VALUES ('CR28', 'A piece of music which is created spontaneously', '7');
-- 8 --
INSERT INTO choiceRead VALUES ('CR29', 'A piece of music for one singer or instrumentalist', '8');
INSERT INTO choiceRead VALUES ('CR30', 'A song or piece of music for two parts of equal importance', '8');
INSERT INTO choiceRead VALUES ('CR31', 'Music which has no noticeable steady beat', '8');
INSERT INTO choiceRead VALUES ('CR32', 'Getting louder', '8');
-- 9 --
INSERT INTO choiceRead VALUES ('CR33', 'The speed at which music is performed, usually described in terms of fast/slow', '9');
INSERT INTO choiceRead VALUES ('CR34', 'The loudness of the music, usually described in terms of loud/quiet', '9');
INSERT INTO choiceRead VALUES ('CR35', 'An identifiable succession of musical sounds', '9');
INSERT INTO choiceRead VALUES ('CR36', 'Combination of pitches happening at the same time, especially when blended into chords that are pleasing to the ear', '9');
-- 10 --
INSERT INTO choiceRead VALUES ('CR37', 'An identifiable succession of musical sounds', '10');
INSERT INTO choiceRead VALUES ('CR38', 'Gently, soft', '10');
INSERT INTO choiceRead VALUES ('CR39', 'Getting louder', '10');
INSERT INTO choiceRead VALUES ('CR40', 'An interval of two semitones. (E.g. C to D)', '10');

---------------------------
-- GAME TABLE POPULATION --
---------------------------

INSERT INTO game (gameID, playType, difficulty, description, numQuestions, maxScore, minScore) VALUES ('SS01', 'S', 'Easy', 'Learn about instruments, in this game you will be given pictures or sounds and answer questions acordingly', 10, 1000, 400);


-------------------------------------------
-- SOUND STUDY QUESTION TABLE POPULATION --
-------------------------------------------
-- EASY --
---- Musical terminology
INSERT INTO SoundStudyquestion VALUES ('1', 'What is body precussion?', 'CR01', 'Easy', 'The clue is in the name!');
INSERT INTO SoundStudyquestion VALUES ('2', 'What is a chord?', 'CR05', 'Easy', 'This ones EAAASY!!');
INSERT INTO SoundStudyquestion VALUES ('3', 'What is a conductor?', 'CR09', 'Easy', 'Originates from the latin word conducere which means bring togehter');
INSERT INTO SoundStudyquestion VALUES ('4', 'Define crescendo.', 'CR13', 'Easy', 'E.g. the reluctant cheers began to crescendo');
INSERT INTO SoundStudyquestion VALUES ('5', 'Define diminuendo', 'CR17', 'Easy', 'It"s like dimming the lights.');
INSERT INTO SoundStudyquestion VALUES ('6', 'What is a duet?', 'CR21', 'Easy', 'Back in the day, my best buddy Cadence and I did some banging cello duos.');
INSERT INTO SoundStudyquestion VALUES ('7', 'Define dynamics.', 'CR25', 'Easy', 'Mixture of loud and quiet music is my fave.');
INSERT INTO SoundStudyquestion VALUES ('8', 'Define solo.', 'CR29', 'Easy', 'Makes me feel so lonely');
INSERT INTO SoundStudyquestion VALUES ('9', 'Define tempo.', 'CR33', 'Easy', 'How fast do you like your music?');
INSERT INTO SoundStudyquestion VALUES ('10', 'Define melody', 'CR37', 'Easy', 'Every song needs a melody...');
---- Spot the sounds
INSERT INTO SoundStudyquestion VALUES ('11', 'Which sound is the piano?', 'CH01', 'Easy', 'The first piano constructed was made in 1698 by Bartolomeo Cristofori in Italy');
INSERT INTO SoundStudyquestion VALUES ('12', 'Which sound is the trumpet?', 'CH12', 'Easy', 'The trumpet has been around since 1,500 BC');
