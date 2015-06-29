-- Added missing lore text to GOs 153556 (Thaurissan Relic) in Burning Steppes
-- Thanks thetrueanimal for pointing. This closes #649 
-- sources: http://www.wowhead.com/object=153556/thaurissan-relic#comments
-- http://www.wowhead.com/quest=3701/the-smoldering-ruins-of-thaurissan

SET @ENTRY := 2000000352;
SET @CHAT_TYPE := 4;
SET @GUID := 4603;
SET @NPC := 8887;

-- DELETE FROM `db_script_string` WHERE `entry` BETWEEN @ENTRY + 1 AND @ENTRY + 8;
INSERT INTO `db_script_string` VALUES
(@ENTRY + 1, 'You will perish here. <Your mind fills with visions of chaos and destruction.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, @CHAT_TYPE, 0, 0, NULL),
(@ENTRY + 2, 'Leave this place. <The relic emits a white hot arc of flame. A memory has been gained: A lone Dark Iron dwarf is surrounded by seven corpses, kneeling before a monolith of flame.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, @CHAT_TYPE, 0, 0, NULL),
(@ENTRY + 3, 'Defiler... you will be punished for this incursion. <A symbol of flame radiates from the relic before it crumbles to the earth.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, @CHAT_TYPE, 0, 0, NULL),
(@ENTRY + 4, 'Help us, outsider. <The relic crumbles to dust. A vision of eight Dark Iron dwarves performing some sort of ritual fills your head.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, @CHAT_TYPE, 0, 0, NULL),
(@ENTRY + 5, 'Your existence is acknowledged. <The relic turns to dust. Your head throbs with newfound wisdom. Something evil lurks in the heart of the mountain.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, @CHAT_TYPE, 0, 0, NULL),
(@ENTRY + 6, 'Leave this place. <The relic emits a white hot arc of flame. A memory has been gained: A lone Dark Iron dwarf is surrounded by seven corpses, kneeling before a monolith of flame.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, @CHAT_TYPE, 0, 0, NULL),
(@ENTRY + 7, 'He cannot be defeated. <The relic burns to nothing. The memories it held are now your own. This city was destroyed by a being not of this world.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, @CHAT_TYPE, 0, 0, NULL),
(@ENTRY + 8, 'Do not taint these ruins, mortal. <You are engulfed in a blinding flash of light. A creature composed entirely of flame is the only thing you can remember seeing.>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, @CHAT_TYPE, 0, 0, NULL);

DELETE FROM `dbscripts_on_go_use` WHERE `id` IN (4511, 4512, 4538, 4539, 4540, 4594, 4611, 6782, 6786, 6797, 6811, 6845, 6848, 4542,
 4513, 4514, 4515, 4541, 4612, 6770, 6784, 6793, 6802, 6841, 6847, 6853);
INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(4511, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4512, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4538, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4539, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4540, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4594, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4611, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6782, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6786, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6797, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6811, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6845, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6848, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4542, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, @ENTRY + 8, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4513, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, @ENTRY + 8, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4514, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, @ENTRY + 8, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4515, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, @ENTRY + 8, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4541, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, @ENTRY + 8, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(4612, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, @ENTRY + 8, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6770, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, @ENTRY + 8, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6784, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, @ENTRY + 8, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6793, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, @ENTRY + 8, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6802, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, @ENTRY + 8, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6841, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, @ENTRY + 8, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6847, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, @ENTRY + 8, 0, 0, 0, 0, 'Thaurissan relic - random whisper'),
(6853, 1, 0, @CHAT_TYPE, 0, @NPC, @GUID, 19, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, @ENTRY + 8, 0, 0, 0, 0, 'Thaurissan relic - random whisper');
