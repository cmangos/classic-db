-- Added missing script for quest 1126 (Hive in the Tower)
-- Now, two NPCs 13301 (Hive'Ashi Ambusher) will spawn when looting the Hive'Ashi Pod
-- They were previously missing, breaking the quest because they are the one dropping the requested quest item
-- Also fixed stats for creature 13301 (Hive'Ashi Ambusher) and 13136 (Hive'Ashi Drone). Both are involved in this
-- quest but NPCs 13136 will be handled by SD2
-- Thanks Scotty0100 for pointing.  
-- This closes #264 
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` = 178553;
INSERT INTO `dbscripts_on_go_template_use` VALUES
(178553, 3, 10, 13301, 300000, 0, 0, 0, 0, 0, 0, 0, -7185.854, 439.658, 64.308, 5.43250, 'Quest 1126 - spawn Hive\'Ashi Ambusher'),
(178553, 3, 10, 13301, 300000, 0, 0, 0, 0, 0, 0, 0, -7180.654, 443.308, 64.123, 5.2000, 'Quest 1126 - spawn Hive\'Ashi Ambusher');

UPDATE `creature_template` SET `HealthMultiplier` = 1.4, `ArmorMultiplier` = 1 WHERE `Entry` = 13301;
UPDATE `creature_template` SET `HealthMultiplier` = 1.2, `ArmorMultiplier` = 1 WHERE `Entry` = 13136;
