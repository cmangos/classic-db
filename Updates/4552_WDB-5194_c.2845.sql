-- Fargon Mortalak 2845
-- vendor list corrected
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (2845) AND item = 2417; -- Augmented Chain Vest
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (2845) AND item = 2419; -- Augmented Chain Belt
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (2845) AND item = 2418; -- Augmented Chain Leggings
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (2845) AND item = 2420; -- Augmented Chain Boots
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (2845) AND item = 2421; -- Augmented Chain Bracers
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (2845) AND item = 2422; -- Augmented Chain Gloves
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (2845) AND item = 3891; -- Augmented Chain Helm
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (2845) AND item = 17189; -- Metal Buckler
UPDATE npc_vendor SET Slot = 9 WHERE entry IN (2845) AND item = 2448; -- Heavy Pavise
UPDATE npc_vendor SET Slot = 10 WHERE entry IN (2845) AND item = 12257; -- Heavy Notched Belt

DELETE FROM `npc_vendor` WHERE `entry` = 2845 AND `item` = 12257;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(2845, 12257, 1, 9000, 10, 0, 'Heavy Notched Belt'); -- missing

