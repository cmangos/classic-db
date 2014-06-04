-- Linking between Prciness(ID 330) and Porcine Entourage(ID 390) - Aggro On Aggro, Follow
DELETE FROM creature_linking_template WHERE entry = 390;
INSERT INTO creature_linking_template  VALUES (390, 0, 330, 515, 0);  