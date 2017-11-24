SELECT * FROM `choice`
  WHERE choiceID != "CH01"
  AND family != "keyboard"
  ORDER BY RAND()
  LIMIT 3;
