-- Darkfang Lurker - Poison Proc aura
DELETE FROM creature_template_addon WHERE entry=4411;
INSERT INTO creature_template_addon VALUES
(4411, 0, 0, 1, 16, 0, 0, '3616');

UPDATE creature_template_addon SET auras='8876' WHERE entry=5234; -- Gordunni Mauler
UPDATE creature_template_addon SET auras='8876' WHERE entry=5363; -- Northspring Roguefeather
