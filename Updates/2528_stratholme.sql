-- Correct Spawn Postition for Crimson Hammersmith 11120 / Black Guard Swordsmith 11121 & Plague Ghoul 10405 Auras
-- Partly based on https://www.youtube.com/watch?v=-ugYB8gbmPg

-- Add missing passive/proc auras
UPDATE creature_template_addon SET auras='15088 15097 18950' WHERE entry=10405; -- Plague Ghoul
UPDATE creature_template_addon SET auras='8876' WHERE entry=11043; -- Crimson Monk

DELETE FROM dbscripts_on_event WHERE id IN (5300, 5301);
INSERT INTO `dbscripts_on_event` VALUES
(5300, 0, 10, 11120, 900000, 0, 0, 0, 0, 0, 0, 0, 0, 3571.19, -3003.701, 125.0014, 0.4708226, 'Summon Crimson Hammersmith'),
(5301, 0, 10, 11121, 900000, 0, 0, 0, 0, 0, 0, 0, 0, 3820.68, -3706.187, 143.5117, 1.523680, 'Summon Black Guard Swordsmith'); -- position guessed
