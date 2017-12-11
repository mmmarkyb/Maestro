------------------------------
-- MEMBERS TABLE POPULATION --
------------------------------
INSERT INTO member VALUES ("ellieTheFlower", "flowerPower@gmail.com", "password", 0, now());
INSERT INTO member VALUES ("musicMan123", "davidDonald75@hotmail.com", "password", 200, now());
INSERT INTO member VALUES ("MTDBTC", "markbrownspace@googlemai.com", "password", 0, now());
INSERT INTO member VALUES ("mrsMayhem", "wonderlust1208@live.co.uk", "password", 2000, now());

------------------------------
-- LEVELS TABLE POPULATION --
------------------------------
INSERT INTO level VALUES (0, 0, 500);
INSERT INTO level VALUES (1, 501, 1500);
INSERT INTO level VALUES (2, 1501, 3000);
INSERT INTO level VALUES (3, 3001, 4500);
INSERT INTO level VALUES (4, 4501, 6000);

------------------------------
-- MEDIA TABLE POPULATION --
------------------------------
INSERT INTO media VALUES ('S01','testSound', 'sound/test.wav', "this is a test tone");
INSERT INTO media VALUES ('S02', 'Bass Drum', 'sound/bass-drum.mp3', "Bass drum sound");
INSERT INTO media VALUES ('S03', 'Bassoon', 'sound/bassoon.mp3', "Bassoon sound");
INSERT INTO media VALUES ('S04', 'Cello', 'sound/cello.mp3', "Cello sound");
INSERT INTO media VALUES ('S05', 'Crash Symbal', 'sound/crash-cymbals.mp3', "Crahs cymbal sound");
INSERT INTO media VALUES ('S06', 'Djembe', 'sound/djembe.mp3', "Djembe sound");
INSERT INTO media VALUES ('S07', 'Double bass', 'sound/double-bass.mp3', "Double bass sound");
INSERT INTO media VALUES ('S08', 'Flute', 'sound/flue.mp3', "Flute sound");
INSERT INTO media VALUES ('S09', 'French Horn', 'sound/french-horn.mp3', "French horn sound");
INSERT INTO media VALUES ('S10', 'Guitar', 'sound/guitar.mp3', "Acoustic guitar sound");
INSERT INTO media VALUES ('S11', 'Oboe', 'sound/oboe.mp3', "Oboe sound");
INSERT INTO media VALUES ('S12', 'Saxophone', 'sound/saxophone.mp3', "Saxophone sound");
INSERT INTO media VALUES ('S13', 'Snare Drum', 'sound/snare-drum.mp3', "Snare drum sound");
INSERT INTO media VALUES ('S14', 'Triangle', 'sound/triangle.mp3', "Triangle sound");
INSERT INTO media VALUES ('S15', 'Trombone', 'sound/trombone.mp3', "Trombone sound");
INSERT INTO media VALUES ('S16', 'Trumpet', 'sound/trumpet.mp3', "Trumpet sound");
INSERT INTO media VALUES ('S17', 'Tuba', 'sound/tuba.mp3', "Tuba sound");
INSERT INTO media VALUES ('S18', 'Violin', 'sound/violin.mp3', "Violin sound");
INSERT INTO media VALUES ('S19', 'Woodblock', 'sound/woodblock.mp3', "Woodblock sound");
INSERT INTO media VALUES ('S20', 'Clarinet', 'sound/clarinet.mp3', "Clarinet sound");

--------------------------------------
-- CHOICE TABLE POPULATION (Sounds) --
--------------------------------------
-- Woodwind --
INSERT INTO choice VALUES ('CH005', 'Flute', 'sound', 'woodwind', 'S08');

INSERT INTO choice VALUES ('CH008', 'Bassoon', 'sound', 'woodwind', 'S03');
INSERT INTO choice VALUES ('CH009', 'Oboe', 'sound', 'woodwind', 'S11');
INSERT INTO choice VALUES ('CH010', 'Clarinet', 'sound', 'woodwind', 'S20');
-- Brass --
INSERT INTO choice VALUES ('CH011', 'Saxophone', 'sound', 'brass', 'S12');
INSERT INTO choice VALUES ('CH012', 'Trumpet', 'sound', 'brass', 'S16');
INSERT INTO choice VALUES ('CH013', 'Trombone', 'sound', 'brass', 'S15');
INSERT INTO choice VALUES ('CH014', 'French Horn', 'sound', 'brass', 'S09');
INSERT INTO choice VALUES ('CH015', 'Tuba', 'sound', 'brass', 'S17');
-- String --
INSERT INTO choice VALUES ('CH016', 'Violin', 'sound', 'string', 'S18');
INSERT INTO choice VALUES ('CH017', 'Acoustic Guitar', 'sound', 'string', 'S10');

INSERT INTO choice VALUES ('CH020', 'Double Bass', 'sound', 'string', 'S07');

INSERT INTO choice VALUES ('CH025', 'Cello', 'sound', 'string', 'S04');
-- Percussion --
INSERT INTO choice VALUES ('CH026', 'Triangle', 'sound', 'percussion', 'S14');
INSERT INTO choice VALUES ('CH027', 'Woodblock', 'sound', 'percussion', 'S19');
INSERT INTO choice VALUES ('CH028', 'Bass Drum', 'sound', 'percussion', 'S02');
INSERT INTO choice VALUES ('CH029', 'Snare Drum', 'sound', 'percussion', 'S13');
INSERT INTO choice VALUES ('CH030', 'Djembe', 'sound', 'percussion', 'S06');

INSERT INTO choice VALUES ('CH032', 'Crash Cymbol', 'sound', 'percussion', 'S05');



-- CHOICE READ TABLE POPULATION (Text) --


-- 1 --
INSERT INTO choiceRead VALUES ('CR001', 'Sounds which can be made using parts of the body, e.g. clapping, tapping knees, etc.', 1);
INSERT INTO choiceRead VALUES ('CR002', 'Getting louder', 1);
INSERT INTO choiceRead VALUES ('CR003', 'A piece of music for one singer or instrumentalist', 1);
INSERT INTO choiceRead VALUES ('CR004', 'A song or piece of music for two parts of equal importance', 1);
-- 2 --
INSERT INTO choiceRead VALUES ('CR005', 'Two or more notes played at the same time', 2);
INSERT INTO choiceRead VALUES ('CR006', 'The person elected to lead a group of singers or instrumentalists', 2);
INSERT INTO choiceRead VALUES ('CR007', 'The rapid repetition of notes, producing a quavering effect. It can be either be on one note or between two notes', 2);
INSERT INTO choiceRead VALUES ('CR008', 'Getting quieter', 2);
-- 3 --
INSERT INTO choiceRead VALUES ('CR009', 'The person elected to lead a group of singers or instrumentalists', 3);
INSERT INTO choiceRead VALUES ('CR010', 'Sounds which can be made using parts of the body, e.g. clapping, tapping knees, etc', 3);
INSERT INTO choiceRead VALUES ('CR011', 'A short rhythmic or melodic pattern which is repeated over and over', 3);
INSERT INTO choiceRead VALUES ('CR012', 'Gently, soft', 3);
-- 4 --
INSERT INTO choiceRead VALUES ('CR013', 'Getting louder', 4);
INSERT INTO choiceRead VALUES ('CR014', 'Getting quieter', 4);
INSERT INTO choiceRead VALUES ('CR015', 'The interval between two musical notes, the upper one of which has twice the pitch of the lower one', 4);
INSERT INTO choiceRead VALUES ('CR016', 'The underlying sounds used to support a melody line', 4);
-- 5 --
INSERT INTO choiceRead VALUES ('CR017', 'Getting quieter', 5);
INSERT INTO choiceRead VALUES ('CR018', 'Getting louder', 5);
INSERT INTO choiceRead VALUES ('CR019', 'A piece of music for one singer or instrumentalist', 5);
INSERT INTO choiceRead VALUES ('CR020', 'A group of pitches based on a particular tonic, and comprising a scale, regarded as forming the tonal basis of a piece or section of music', 5);
-- 6 --
INSERT INTO choiceRead VALUES ('CR021', 'A song or piece of music for two parts of equal importance', 6);
INSERT INTO choiceRead VALUES ('CR022', 'A piece of music for one singer or instrumentalist', 6);
INSERT INTO choiceRead VALUES ('CR023', 'A piece of music which is created spontaneously', 6);
INSERT INTO choiceRead VALUES ('CR024', 'The smallest interval between two notes. (E.g. C to C #)', 6);
-- 7 --
INSERT INTO choiceRead VALUES ('CR025', 'The loudness of the music, usually described in terms of loud/quiet', 7);
INSERT INTO choiceRead VALUES ('CR026', 'The speed at which music is performed, usually described in terms of fast/slow', 7);
INSERT INTO choiceRead VALUES ('CR027', 'A short rhythmic or melodic pattern which is repeated over and over', 7);
INSERT INTO choiceRead VALUES ('CR028', 'A piece of music which is created spontaneously', 7);
-- 8 --
INSERT INTO choiceRead VALUES ('CR029', 'A piece of music for one singer or instrumentalist', 8);
INSERT INTO choiceRead VALUES ('CR030', 'A song or piece of music for two parts of equal importance', 8);
INSERT INTO choiceRead VALUES ('CR031', 'Music which has no noticeable steady beat', 8);
INSERT INTO choiceRead VALUES ('CR032', 'Getting louder', 8);
-- 9 --
INSERT INTO choiceRead VALUES ('CR033', 'The speed at which music is performed, usually described in terms of fast/slow', 9);
INSERT INTO choiceRead VALUES ('CR034', 'The loudness of the music, usually described in terms of loud/quiet', 9);
INSERT INTO choiceRead VALUES ('CR035', 'An identifiable succession of musical sounds', 9);
INSERT INTO choiceRead VALUES ('CR036', 'Combination of pitches happening at the same time, especially when blended into chords that are pleasing to the ear', 9);
-- 10 --
INSERT INTO choiceRead VALUES ('CR037', 'An identifiable succession of musical sounds', 10);
INSERT INTO choiceRead VALUES ('CR038', 'Gently, soft', 10);
INSERT INTO choiceRead VALUES ('CR039', 'Getting louder', 10);
INSERT INTO choiceRead VALUES ('CR040', 'An interval of two semitones. (E.g. C to D)', 10);


-- 22 --
INSERT INTO choiceRead VALUES ('CR041', 'The underlying sounds used to support a melody line', 11);
INSERT INTO choiceRead VALUES ('CR042', 'An identifiable succession of musical sounds', 11);
INSERT INTO choiceRead VALUES ('CR043', 'A style of music in which a leader sings or plays a short melody (the call) and a chorus of singers/players respond with an answering short melody (the response)', 11);
INSERT INTO choiceRead VALUES ('CR044', 'The simultaneous combination of pitches, especially when blended into chords that are pleasing to the ear', 11);
-- 23 --
INSERT INTO choiceRead VALUES ('CR045', 'A style of music in which a leader sings or plays a short melody (the call) and a chorus of singers/players respond with an answering short melody (the response) ', 12);
INSERT INTO choiceRead VALUES ('CR046', 'The rapid repetition of notes, producing a quavering effect. It can be either be on one note or between two notes', 12);
INSERT INTO choiceRead VALUES ('CR047', 'A song or piece of music for two parts of equal importance', 12);
INSERT INTO choiceRead VALUES ('CR048', 'The interval between two musical notes, the upper one of which has twice the pitch of the lower one', 12);
-- 24 --
INSERT INTO choiceRead VALUES ('CR049', 'A slide up or down from one musical note to another, in the manner of a rapid, sliding scale', 13);
INSERT INTO choiceRead VALUES ('CR050', 'The rapid repetition of notes, producing a quavering effect. It can be either be on one note or between two notes', 13);
INSERT INTO choiceRead VALUES ('CR051', 'An emphasis or “punch” at the beginning of a musical sound', 13);
INSERT INTO choiceRead VALUES ('CR052', 'Two or more notes played at the same time', 13);
-- 25 --
INSERT INTO choiceRead VALUES ('CR053', 'A piece of music which is created spontaneously', 14);
INSERT INTO choiceRead VALUES ('CR054', 'An identifiable succession of musical sounds, but shorter than a complete melody', 14);
INSERT INTO choiceRead VALUES ('CR055', 'The rapid repetition of notes, producing a quavering effect. It can be either be on one note or between two notes', 14);
INSERT INTO choiceRead VALUES ('CR056', 'A piece of music for one singer or instrumentalist', 14);
-- 26 --
INSERT INTO choiceRead VALUES ('CR057', 'A written representation of music designed to record a composer’s intention', 15);
INSERT INTO choiceRead VALUES ('CR058', 'An identifiable succession of musical sounds, but shorter than a complete melody', 15);
INSERT INTO choiceRead VALUES ('CR059', 'The loudness of the music, usually described in terms of loud/quiet', 15);
INSERT INTO choiceRead VALUES ('CR060', 'A piece of music which is created spontaneously', 15);
-- 27 --
INSERT INTO choiceRead VALUES ('CR061', 'The rapid repetition of notes, producing a quavering effect. It can be either be on one note or between two notes', 16);
INSERT INTO choiceRead VALUES ('CR062', 'Gently, soft', 16);
INSERT INTO choiceRead VALUES ('CR063', 'Getting louder', 16);
INSERT INTO choiceRead VALUES ('CR064', 'The number of complete oscillations per second of energy as sound in the form of sound-waves', 16);
-- 28 --
INSERT INTO choiceRead VALUES ('CR065', 'Combination of pitches happening at the same time, especially when blended into chords that are pleasing to the ear', 17);
INSERT INTO choiceRead VALUES ('CR066', 'A sound or sounds played constantly throughout all or part of a piece of music as an accompaniment', 17);
INSERT INTO choiceRead VALUES ('CR067', 'A slide up or down from one musical note to another, in the manner of a rapid, sliding scale', 17);
INSERT INTO choiceRead VALUES ('CR068', 'The interval between two musical notes, the upper one of which has twice the pitch of the lower one', 17);
-- 29 --
INSERT INTO choiceRead VALUES ('CR069', 'The interval between two musical notes, the upper one of which has twice the pitch of the lower one', 18);
INSERT INTO choiceRead VALUES ('CR070', 'The frequency of a note determining how high or low it sounds', 18);
INSERT INTO choiceRead VALUES ('CR071', 'A short rhythmic or melodic pattern which is repeated over and over', 18);
INSERT INTO choiceRead VALUES ('CR072', 'An emphasis or “punch” at the beginning of a musical sound', 18);
-- 30 --
INSERT INTO choiceRead VALUES ('CR073', 'Gently, soft', 19);
INSERT INTO choiceRead VALUES ('CR074', 'Getting quieter', 19);
INSERT INTO choiceRead VALUES ('CR075', 'An interval of two semitones. (E.g. C to D)', 19);
INSERT INTO choiceRead VALUES ('CR076', 'A sound or sounds played constantly throughout all or part of a piece of music as an accompaniment', 19);
-- 31 --
INSERT INTO choiceRead VALUES ('CR077', 'The frequency of a note determining how high or low it sounds', 20);
INSERT INTO choiceRead VALUES ('CR078', 'The interval between two musical notes, the upper one of which has twice the pitch of the lower one', 20);
INSERT INTO choiceRead VALUES ('CR079', 'An identifiable succession of musical sounds', 20);
INSERT INTO choiceRead VALUES ('CR080', 'A group of pitches based on a particular tonic, and comprising a scale, regarded as forming the tonal basis of a piece or section of music', 20);
-- 32 --
INSERT INTO choiceRead VALUES ('CR081', 'An emphasis or “punch” at the beginning of a musical sound', 21);
INSERT INTO choiceRead VALUES ('CR082', 'The rapid repetition of notes, producing a quavering effect. It can be either be on one note or between two notes', 21);
INSERT INTO choiceRead VALUES ('CR083', 'Sounds which can be made using parts of the body, e.g. clapping, tapping knees, etc', 21);
INSERT INTO choiceRead VALUES ('CR084', 'The note is raised by a semi-tone', 21);


-- 46 --
INSERT INTO choiceRead VALUES ('CR085', 'A sound or sounds played constantly throughout all or part of a piece of music as an accompaniment', 22);
INSERT INTO choiceRead VALUES ('CR086', 'Music which has no noticeable steady beat', 22);
INSERT INTO choiceRead VALUES ('CR087', 'A short rhythmic or melodic pattern which is repeated over and over', 22);
INSERT INTO choiceRead VALUES ('CR088', 'An identifiable succession of musical sounds, but shorter than a complete melody', 22);
-- 47 --
INSERT INTO choiceRead VALUES ('CR089', 'Music which has no noticeable steady beat', 23);
INSERT INTO choiceRead VALUES ('CR090', 'A sound or sounds played constantly throughout all or part of a piece of music as an accompaniment', 23);
INSERT INTO choiceRead VALUES ('CR091', 'A short rhythmic or melodic pattern which is repeated over and over', 23);
INSERT INTO choiceRead VALUES ('CR092', 'A group of pitches based on a particular tonic, and comprising a scale, regarded as forming the tonal basis of a piece or section of music', 23);
-- 48 --
INSERT INTO choiceRead VALUES ('CR093', 'A short rhythmic or melodic pattern which is repeated over and over', 24);
INSERT INTO choiceRead VALUES ('CR094', 'Music which has no noticeable steady beat', 24);
INSERT INTO choiceRead VALUES ('CR095', 'A sound or sounds played constantly throughout all or part of a piece of music as an accompaniment', 24);
INSERT INTO choiceRead VALUES ('CR096', 'An identifiable succession of musical sounds, but shorter than a complete melody', 24);
-- 49 --
INSERT INTO choiceRead VALUES ('CR097', 'A group of pitches based on a particular tonic, and comprising a scale, regarded as forming the tonal basis of a piece or section of music', 25);
INSERT INTO choiceRead VALUES ('CR098', 'An identifiable succession of musical sounds, but shorter than a complete melody', 25);
INSERT INTO choiceRead VALUES ('CR099', 'The number of complete oscillations per second of energy as sound in the form of sound-waves', 25);
INSERT INTO choiceRead VALUES ('CR100', 'The smallest interval between two notes. (E.g. C to C#)', 25);
-- 50 --
INSERT INTO choiceRead VALUES ('CR101', 'An identifiable succession of musical sounds, but shorter than a complete melody', 26);
INSERT INTO choiceRead VALUES ('CR102', 'A sound or sounds played constantly throughout all or part of a piece of music as an accompaniment', 26);
INSERT INTO choiceRead VALUES ('CR103', 'A short rhythmic or melodic pattern which is repeated over and over', 26);
INSERT INTO choiceRead VALUES ('CR104', 'The note is raised by a semi-tone', 26);
-- 51 --
INSERT INTO choiceRead VALUES ('CR105', 'The number of complete oscillations per second of energy as sound in the form of sound-waves', 27);
INSERT INTO choiceRead VALUES ('CR106', 'The note is raised by a semi-tone', 27);
INSERT INTO choiceRead VALUES ('CR107', 'An identifiable succession of musical sounds, but shorter than a complete melody', 27);
INSERT INTO choiceRead VALUES ('CR108', 'An interval of two semitones. (E.g. C to D)', 27);
-- 52 --
INSERT INTO choiceRead VALUES ('CR109', 'The note is raised by a semi-tone', 28);
INSERT INTO choiceRead VALUES ('CR110', 'The note is lowered by a semi-tone', 28);
INSERT INTO choiceRead VALUES ('CR111', 'The smallest interval between two notes. (E.g. C to C#)', 28);
INSERT INTO choiceRead VALUES ('CR112', 'An interval of two semitones. (E.g. C to D)', 28);
-- 53 --
INSERT INTO choiceRead VALUES ('CR113', 'The note is lowered by a semi-tone', 29);
INSERT INTO choiceRead VALUES ('CR114', 'The note is raised by a semi-tone', 29);
INSERT INTO choiceRead VALUES ('CR115', 'The smallest interval between two notes. (E.g. C to C#)', 29);
INSERT INTO choiceRead VALUES ('CR116', 'An interval of two semitones. (E.g. C to D)', 29);
-- 54 --
INSERT INTO choiceRead VALUES ('CR117', 'The smallest interval between two notes. (E.g. C to C#)', 30);
INSERT INTO choiceRead VALUES ('CR118', 'An interval of two semitones. (E.g. C to D)', 30);
INSERT INTO choiceRead VALUES ('CR119', 'The note is raised by a semi-tone', 30);
INSERT INTO choiceRead VALUES ('CR120', 'The note is lowered by a semi-tone ', 30);
-- 55 --
INSERT INTO choiceRead VALUES ('CR121', 'An interval of two semitones. (E.g. C to D)', 31);
INSERT INTO choiceRead VALUES ('CR122', 'The smallest interval between two notes. (E.g. C to C#)', 31);
INSERT INTO choiceRead VALUES ('CR123', 'The note is raised by a semi-tone', 31);
INSERT INTO choiceRead VALUES ('CR124', 'The note is lowered by a semi-tone', 31);


-- GAME TABLE POPULATION --

-- Sound Study games --
INSERT INTO game (gameID, playType, difficulty, description, numQuestions, maxScore, minScore, reqScore) VALUES ('01SS', 'S', 'Easy', 'Learn about instruments, in this game you will be given 10 multiple choice questions', 10, 1000, 100,0);
INSERT INTO game (gameID, playType, difficulty, description, numQuestions, maxScore, minScore, reqScore) VALUES ('04SS', 'S', 'Medium', 'Lets learn more music trivia, this one a little harder than that last game... let\'s see if your up to it!', 10, 1000, 400, 200);
INSERT INTO game (gameID, playType, difficulty, description, numQuestions, maxScore, minScore, reqScore) VALUES ('07SS', 'S', 'Hard', 'Its starting to get hard now!! These are the most difficult of all questions yet! Are you ready to take the challenge?', 10, 1000, 600, 600);

-- Musical Mayhem --
INSERT INTO game (gameID, playType, difficulty, description, numQuestions, maxScore, minScore, reqScore) VALUES ('02MM', 'M', 'Easy', 'Learn how instruments sound, in this game you will be given sounds and answer questions acordingly', 10, 1000, 100,0);
INSERT INTO game (gameID, playType, difficulty, description, numQuestions, maxScore, minScore, reqScore) VALUES ('05MM', 'M', 'Medium', 'Lets learn more insturments, this one a little harder than that last game... let\'s see if your up to it!', 10, 1000, 400, 200);
INSERT INTO game (gameID, playType, difficulty, description, numQuestions, maxScore, minScore, reqScore) VALUES ('08MM', 'M', 'Hard', 'Its starting to get hard now!! These are the most difficult of all questions yet! Are you ready to take the challenge?', 10, 1000, 600, 600);


-- Rhythm Rush games --
INSERT INTO game (gameID, playType, difficulty, description, maxScore, minScore, reqScore, kit, hitsAvalible, tempo, signiture) VALUES ('03RR', 'R', 'Easy', 'This game will show you your rythem skills! This one is all about hitting the right buttons at the right time. Follow along with the rythem in this basic session', 1000, 100, 100, "808", 50, 124, "4/4");
INSERT INTO game (gameID, playType, difficulty, description, maxScore, minScore, reqScore, kit, hitsAvalible, tempo, signiture) VALUES ('06RR', 'R', 'Medium', 'Time to work on them finger drumming skills, lets take a step up on the rhythm skills and try a higher tempo song!', 1000, 400, 300, "CLA", 50, 150, "4/4");
INSERT INTO game (gameID, playType, difficulty, description, maxScore, minScore, reqScore, kit, hitsAvalible, tempo, signiture) VALUES ('09RR', 'R', 'Hard', 'Push your tried and tested skills with our highest rated rhythm rush session, be prepared to get a sweat on to this fast paced rhythm and learn and new style of drumming with your keybord', 1000, 600, 100, "ELC", 50, 174, "4/4");



-- SOUND STUDY QUESTION TABLE POPULATION --

-- Easy --
INSERT INTO SoundStudyquestion VALUES (1, 'What is body percussion?', 'CR001', 'Easy', 'The clue is in the name!');
INSERT INTO SoundStudyquestion VALUES (2, 'What is a chord?', 'CR005', 'Easy', 'This ones EAAASY!!');
INSERT INTO SoundStudyquestion VALUES (3, 'What is a conductor?', 'CR009', 'Easy', 'Originates from the latin word conducere which means bring togehter');
INSERT INTO SoundStudyquestion VALUES (4, 'Define crescendo.', 'CR013', 'Easy', 'E.g. the reluctant cheers began to crescendo');
INSERT INTO SoundStudyquestion VALUES (5, 'Define diminuendo', 'CR017', 'Easy', 'It"s like dimming the lights.');
INSERT INTO SoundStudyquestion VALUES (6, 'What is a duet?', 'CR021', 'Easy', 'Back in the day, my best buddy Cadence and I did some banging cello duos.');
INSERT INTO SoundStudyquestion VALUES (7, 'Define dynamics.', 'CR025', 'Easy', 'Mixture of loud and quiet music is my fave.');
INSERT INTO SoundStudyquestion VALUES (8, 'Define solo.', 'CR029', 'Easy', 'Makes me feel so lonely');
INSERT INTO SoundStudyquestion VALUES (9, 'Define tempo.', 'CR033', 'Easy', 'How fast do you like your music?');
INSERT INTO SoundStudyquestion VALUES (10, 'Define melody', 'CR037', 'Easy', 'Every song needs a melody...');

-- MEDIUM --
INSERT INTO soundStudyQuestion VALUES (11, 'Define accompaniment.', 'CR041', 'Medium', '');
INSERT INTO soundStudyQuestion VALUES (12, 'What is call and response in music?', 'CR045', 'Medium', '');
INSERT INTO soundStudyQuestion VALUES (13, 'Define glissando.', 'CR049', 'Medium', '');
INSERT INTO soundStudyQuestion VALUES (14, 'Define improvisation.', 'CR053', 'Medium', '');
INSERT INTO soundStudyQuestion VALUES (15, 'What is a score?', 'CR057', 'Medium', '');
INSERT INTO soundStudyQuestion VALUES (16, 'Define tremolo.', 'CR061', 'Medium', '');
INSERT INTO soundStudyQuestion VALUES (17, 'Define harmony.', 'CR065', 'Medium', '');
INSERT INTO soundStudyQuestion VALUES (18, 'Define octave.', 'CR069', 'Medium', '');
INSERT INTO soundStudyQuestion VALUES (19, 'Define piano.', 'CR073', 'Medium', '');
INSERT INTO soundStudyQuestion VALUES (20, 'Define pitch.', 'CR077', 'Medium', '');
INSERT INTO soundStudyQuestion VALUES (21, 'Define accent in music.', 'CR081', 'Medium', '');

-- HARD --
INSERT INTO soundStudyQuestion VALUES (22, 'What is a drone?', 'CR085', 'HARD', '');
INSERT INTO soundStudyQuestion VALUES (23, 'Define arrhythmic music.', 'CR089', 'HARD', '');
INSERT INTO soundStudyQuestion VALUES (24, 'Define ostinato.', 'CR093', 'HARD', '');
INSERT INTO soundStudyQuestion VALUES (25, 'Define key.', 'CR097', 'HARD', '');
INSERT INTO soundStudyQuestion VALUES (26, 'Define motif.', 'CR101', 'HARD', '');
INSERT INTO soundStudyQuestion VALUES (27, 'Define the frequency of the note.', 'CR105', 'HARD', '');
INSERT INTO soundStudyQuestion VALUES (28, 'What happens to a note when a sharp symbol (#)  is added to it?', 'CR109', 'HARD', '');
INSERT INTO soundStudyQuestion VALUES (29, 'What happens to a note when a flat symbol (b) is added to it?', 'CR113', 'HARD', '');
INSERT INTO soundStudyQuestion VALUES (30, 'What is a semitone?', 'CR117', 'HARD', '');
INSERT INTO soundStudyQuestion VALUES (31, 'What is a tone?', 'CR121', 'HARD', '');


-- MUSICAL MAYHEM QUESTION TABLE POPULATION --

-- EASY --

INSERT INTO question VALUES (2, 'Which sound is the trumpet?', 'CH012', 'Easy', 'The trumpet has been around since 1,500 BC');
INSERT INTO question VALUES (3, 'Which sound is the acoustic guitar?', 'CH017', 'Easy', 'The classic western 6 strings');
INSERT INTO question VALUES (4, 'Which sound is the flute?', 'CH005', 'Easy', 'Many cultures have their own version of the flute. For example, one of the most popular tradtional Japanese flutes is the Shakuhachi');
INSERT INTO question VALUES (5, 'Which sound is the French horn?', 'CH014', 'Easy', 'The French horn is actually not French... It is infact German!');
INSERT INTO question VALUES (8, 'Which sound is the violin?', 'CH016', 'Easy', 'The violin is the smallest and highest-pitched of the instruments in the string family');
INSERT INTO question VALUES (9, 'Which sound is the tuba?', 'CH015', 'Easy', 'The tuba is the lowest-pitched, and largest in the brass family of musical instruments');
INSERT INTO question VALUES (11, 'Which sound is the triangle?', 'CH026', 'Easy', 'Guess what shape the triangle is?');
INSERT INTO question VALUES (12, 'Which sound is the acoustic guitar?', 'CH017', 'Medium', '');
INSERT INTO question VALUES (13, 'Which sound is the French horn?', 'CH014', 'Medium', '');
INSERT INTO question VALUES (14, 'Which sound is the bassoon?', 'CH008', 'Medium', '');
INSERT INTO question VALUES (18, 'Which sound is the cello?', 'CH025', 'Medium', '');
INSERT INTO question VALUES (19, 'Which sound is the trombone?', 'CH013', 'Medium', '');
INSERT INTO question VALUES (23, 'Which sound is the double bass?', 'CH020', 'Medium', '');
INSERT INTO question VALUES (24, 'Which sound is the saxophone?', 'CH011', 'Medium', '');
INSERT INTO question VALUES (25, 'Which sound is the triangle?', 'CH026', 'Medium', '');
INSERT INTO question VALUES (29, 'Which sound is the flute?', 'CH005', 'HARD', '');
INSERT INTO question VALUES (31, 'Which sound is the saxophone?', 'CH011', 'HARD', '');
INSERT INTO question VALUES (34, 'Which sound is the cello?', 'CH025', 'HARD', '');
INSERT INTO question VALUES (36, 'Which sound is the clarinet?', 'CH010', 'HARD', '');
INSERT INTO question VALUES (37, 'Which sound is the woodblock?', 'CH027', 'HARD', '');
INSERT INTO question VALUES (38, 'Which sound is the snare drum?', 'CH029', 'HARD', '');
INSERT INTO question VALUES (39, 'Which sound is the oboe?', 'CH009', 'HARD', '');
INSERT INTO question VALUES (41, 'Which sound is the tuba?', 'CH015', 'HARD', '');
INSERT INTO question VALUES (42, 'Which sound is the bassoon?', 'CH008', 'HARD', '');
