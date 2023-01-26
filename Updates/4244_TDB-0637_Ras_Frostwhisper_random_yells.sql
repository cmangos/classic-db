-- Add Script for Ras Frostwhisper 10508 on s.17190 spellhit
-- https://youtu.be/_hhQWZE87os?t=30
-- item 13752 - todo: script loot condition for the quest item (i.13626) so it only is lootable when he was transformed befor death (he looses morph auras.13626 on death)
-- he currently also does a wired orientation change on spellhit when he should remain in his default orientation he was in while in combat.
UPDATE `broadcast_text` SET `ChatTypeId` = 1 WHERE `Id` = 6352; -- NO!
UPDATE `broadcast_text` SET `ChatTypeId` = 1, `EmoteId1` = 5 WHERE `Id` = 6371; -- THIS CANNOT BE!!

DELETE FROM `dbscripts_on_relay` WHERE `id` = 1050801;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1050801, 0, 0, 0, 0, 0, 0, 0, 0, 4, 6352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ras Frostwhisper - Yell'),
(1050801, 0, 1, 22, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ras Frostwhisper - Change Faction'),
(1050801, 0, 2, 48, 256, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ras Frostwhisper - Add UNIT_FLAG_IMMUNE_TO_PLAYER'),
(1050801, 2000, 0, 15, 17186, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ras Frostwhisper - Cast Ras Becomes a Boy! (Ras Becomes a Boy!)'), -- modelid seems to be 3973 in wotlk sniff not 5736 (classicmangos)
(1050801, 6000, 0, 0, 0, 0, 0, 0, 0, 4, 6371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ras Frostwhisper - Yell'),
(1050801, 8000, 0, 22, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ras Frostwhisper - Change Faction'),
(1050801, 8000, 1, 48, 256, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ras Frostwhisper - Remove UNIT_FLAG_IMMUNE_TO_PLAYER');

-- Bonus:

-- EmotesId is unused (not implemented, EmoteId1-3 are to be used!
UPDATE `broadcast_text` SET `EmotesId` = 0, `EmoteId1` = 15 WHERE `Id` = 2313; -- "Anathera!" - EmotesId is unused EmoteId1 should be used
UPDATE `broadcast_text` SET `EmotesId` = 0, `EmoteId1` = 1 WHERE `Id` = 16390;
UPDATE `broadcast_text` SET `EmotesId` = 0, `EmoteId1` = 1 WHERE `Id` = 16391;
UPDATE `broadcast_text` SET `EmotesId` = 0, `EmoteId1` = 1 WHERE `Id` = 16392;
UPDATE `broadcast_text` SET `EmotesId` = 0, `EmoteId1` = 1 WHERE `Id` = 16393;
UPDATE `broadcast_text` SET `EmotesId` = 0, `EmoteId1` = 1 WHERE `Id` = 16394;
UPDATE `broadcast_text` SET `EmotesId` = 0, `EmoteId1` = 4 WHERE `Id` = 23207;

