-- Run on phpMyAdmin at setup to create tables required --
CREATE TABLE user (
  userName VARCHAR(255),
  email VARCHAR(255) NOT NULL,
  passWord VARCHAR(255) NOT NULL,
  score INT DEFAULT 0,
  PRIMARY KEY (userName)
);

CREATE TABLE media (
  mediaID VARCHAR(3),
  type VARCHAR(5) NOT NULL,
  name VARCHAR(255) NOT NULL,
  filePath VARCHAR(255) NOT NULL,
  description TEXT,
  PRIMARY KEY (soundID),
  CHECK(type = "sound", "image")
);

CREATE TABLE game (
  gameID VARCHAR(4),
  playType CHAR(1) NOT NULL,
  difficulty VARCHAR(6) NOT NULL,
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
  FOREIGN KEY mediaID REFERENCES media(mediaID),
  CHECK(playType = 'm','r','s')
);

CREATE TABLE question (
  gameID VARCHAR(4),
  QID INT,
  difficulty VARCHAR(6) NOT NULL,
  type VARCHAR(255) NOT NULL,
  tip VARCHAR(255),
  PRIMARY KEY (SSID, QID),
  FOREIGN KEY (SSID) REFERENCES soundStudy(SSID),
  CHECK (difficulty = "Easy", "Medium", "Hard")
);

CREATE TABLE answer (
  SSID VARCHAR(4),
  QID INT,
  answer VARCHAR(255),
  mediaID VARCHAR(3),
  type VARCHAR(5) NOT NULL,
  PRIMARY KEY (SSID, QID, answer),
  CHECK(type="sound", "image")
);

CREATE TABLE choice (
  SSID VARCHAR(4),
  QID INT,
  choice VARCHAR(255),
  mediaID VARCHAR(3),
  type VARCHAR(5) NOT NULL,
  PRIMARY KEY (SSID, QID, choice),
  CHECK(type="sound", "image")
);

CREATE TABLE gameInstance (
  userName VARCHAR(255),
  GID VARCHAR(4),
  score INT DEFAULT 0,
  PRIMARY KEY (userName, GID),
  FOREIGN KEY userName REFERENCES user(userName)
);

CREATE TABLE level (
  level INT,
  minScore INT,
  maxScore INT,
  PRIMARY KEY (level)
);
