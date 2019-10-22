-- Add missing passive/proc auras
UPDATE creature_template_addon SET auras='18148' WHERE entry=11577; -- Whirlwind Stormwalker
UPDATE creature_template_addon SET auras='8876' WHERE entry=4634; -- Kolkar Mauler
UPDATE creature_template_addon SET auras='8876' WHERE entry=4656; --  Maraudine Mauler
UPDATE creature_template_addon SET auras='7974 15097' WHERE entry=5760; -- Lord Azrethoc

-- Mirefin Murlocs : Mirefin Fungus
DELETE FROM creature_template_addon WHERE entry IN (4358, 4360);
INSERT INTO creature_template_addon VALUES
(4358, 0, 0, 1, 16, 0, 0, '9463'),
(4360, 0, 0, 1, 16, 0, 0, '9463');

UPDATE creature_template_addon SET auras='9463' WHERE entry IN (4359, 4361, 4362, 4363);
