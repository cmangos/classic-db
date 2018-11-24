-- Add proc for spell 23401 (Corrupted Healing) in Nefarian Encounter
DELETE FROM spell_proc_event WHERE entry=23401;
INSERT INTO `spell_proc_event` VALUES
(23401, 0x02, 6, 0, 0, 0, 0x00008000, 0, 0, 0, 0);
