-- Improve quest 6041 (When Smokey Sings, I Get Violent)
-- Make player take damage when placing Smokey's Special Compound
-- Make the GO 177668 (Mark of Detonation) despawn
-- Source: https://www.wowhead.com/quest=6041/when-smokey-sings-i-get-violent

-- Fix faction to use the same one as most traps so players are indeed damaged by trap
UPDATE gameobject_template SET faction=14 WHERE entry=177672;

-- Fix spawntime of spell focus GO
UPDATE gameobject SET spawntimesecsmin=345, spawntimesecsmax=345 WHERE id=177668;

-- Update script to also despawn GO 177668 (Mark of Detonation)
UPDATE dbscripts_on_spell SET delay=1 WHERE id=19250 AND command=18;
DELETE FROM dbscripts_on_spell WHERE id=19250 AND command=40;
INSERT INTO dbscripts_on_spell VALUES
(19250, 0, 40, 0, 0, 0, 177668, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Scourge Structure - Despawn spell focus gobject');
