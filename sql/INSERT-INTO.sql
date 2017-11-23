INSERT INTO game (gameID, playType, difficulty, description, numQuestions, minScore, maxScore)
          VALUES ("SS01", "S", "Easy", "Example", 10, 100, 750);

  INSERT INTO questions VALUES (1, "Which sound is the piano?", "Piano", "Easy", "Mutiple Choice", "Whatever");

    INSERT INTO choice VALUES (1, "Acoustic Guitar", "", "sound");
    INSERT INTO choice VALUES (1, "Flute", "", "sound");
    INSERT INTO choice VALUES (1, "Saxophone", "", "sound");

  INSERT INTO questions VALUES (2, "Which sound is the trumpet?", "Easy", "Mutiple Choice", "Whatever");

    INSERT INTO answer VALUES (2, "Trumpet", "", "sound");

    INSERT INTO choice VALUES (2, "Violin", "", "sound");
    INSERT INTO choice VALUES (2, "Flute", "", "sound");
    INSERT INTO choice VALUES (2, "Piano", "", "sound");

  -- 8 more for this game --

  INSERT INTO game (gameID, playType, difficulty, description, numQuestions, minScore, maxScore)
            VALUES ("SS02", "S", "Medium", "Example", 10, 300, 1250);

    INSERT INTO questions VALUES (1, "Which sound is the acoustic guitar?", "Easy", "Mutiple Choice", "Whatever");

      INSERT INTO answer VALUES (1, "Acoustic Guitar", "", "sound");

      INSERT INTO choice VALUES (1, "Harp", "", "sound");
      INSERT INTO choice VALUES (1, "Sitar", "", "sound");
      INSERT INTO choice VALUES (1, "Violin", "", "sound");

    INSERT INTO questions VALUES (2, "Which sound is the english horn?", "Easy", "Mutiple Choice", "Whatever");

      INSERT INTO answer VALUES (2, "English Horn", "", "sound");

      INSERT INTO choice VALUES (2, "Violin", "", "sound");
      INSERT INTO choice VALUES (2, "Flute", "", "sound");
      INSERT INTO choice VALUES (2, "Piano", "", "sound");

    -- 8 more for this game --
