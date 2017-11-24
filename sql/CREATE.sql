-- Run on phpMyAdmin at setup to create tables required --
CREATE TABLE member (
  memberName VARCHAR(255),
  email VARCHAR(255) NOT NULL,
  passWord VARCHAR(255) NOT NULL,
  score INT DEFAULT 0,
  PRIMARY KEY (memberName)
);

CREATE TABLE level (
  level INT NOT NULL,
  minScore INT NOT NULL,
  maxScore INT NOT NULL,
  PRIMARY KEY (level)
);

CREATE TABLE media (
  mediaID CHAR(3),
  type ENUM('sound', 'image') NOT NULL,
  name VARCHAR(255) NOT NULL,
  filePath VARCHAR(255) NOT NULL,
  description TEXT,
  PRIMARY KEY (mediaID)
);

CREATE TABLE choice (
  choiceID CHAR(4),
  choice VARCHAR(255) NOT NULL,
  type ENUM('sound', 'image', 'text') NOT NULL,
  mediaID CHAR(3),
  PRIMARY KEY (choiceID),
  FOREIGN KEY (mediaID) REFERENCES media(mediaID)
);

CREATE TABLE game (
  gameID CHAR(4),
  playType ENUM('M', 'R', 'S') NOT NULL,
  difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL,
  description TEXT NOT NULL,
  numQuestions INT DEFAULT 5,
  maxScore INT NOT NULL,
  minScore INT NOT NULL,
  mediaID VARCHAR(3),
  hitsAvalible INT,
  tempo INT(3),
  signiture VARCHAR(5),
  melody VARCHAR(255),
  PRIMARY KEY (gameID),
  FOREIGN KEY (mediaID) REFERENCES media(mediaID)
);

CREATE TABLE question (
  questionID INT,
  question TEXT NOT NULL,
  answerID CHAR(4) NOT NULL,
  difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL,
  mediaID VARCHAR(3),
  type VARCHAR(255) NOT NULL,
  tip VARCHAR(255),
  PRIMARY KEY (questionID),
  FOREIGN KEY (answerID) REFERENCES choice(choiceID)
);

CREATE TABLE gameInstance (
  memberName VARCHAR(255),
  gameID VARCHAR(4),
  score INT DEFAULT 0,
  PRIMARY KEY (memberName, gameID),
  FOREIGN KEY (memberName) REFERENCES member(memberName)
);

CREATE TABLE gameResult (
  memberName VARCHAR(255),
  gameID CHAR(4),
  questionID INT,
  playDate DATE,
  answerID CHAR(4),
  choiceID CHAR(4),
  PRIMARY KEY (memberName, gameID, questionID, playDate),
  FOREIGN KEY (memberName) REFERENCES member(memberName),
  FOREIGN KEY (gameID) REFERENCES game(gameID),
  FOREIGN KEY (questionID) REFERENCES question(questionID),
  FOREIGN KEY (answerID) REFERENCES question(answerID),
  FOREIGN KEY (choiceID) REFERENCES choice(choiceID)
);
