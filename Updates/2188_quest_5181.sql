-- Improve quest 5181 (Villains of Darrowshire): despawn flavor NPCs when looting quest items, fix interaction with gameobjects
-- Sources: 
-- https://www.wowhead.com/npc=11620/
-- https://www.wowhead.com/npc=11621/
-- https://www.wowhead.com/npc=11288/
-- https://www.wowhead.com/npc=11289/

-- Shorten respawn time of flavor NPCs
UPDATE creature SET spawntimesecsmin=30, spawntimesecsmax=30 WHERE id IN (11288, 11289, 11620, 11621);

-- Make spell 17678 (Despawn Spectral Combatant) target NPCs 11288 (Spectral Betrayer), 11289 (Spectral Defender), 11260 (Spectral Marauder) & 11621 (Spectral Corpse)
DELETE FROM spell_script_target WHERE entry=17678;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`)
VALUES
(17678, 1, 11288, 0),
(17678, 1, 11289, 0),
(17678, 1, 11620, 0),
(17678, 1, 11621, 0);

-- Fix interaction with GameObjects involved in the quest
UPDATE gameobject_template SET data8=5181 WHERE entry IN (176208, 176209);
