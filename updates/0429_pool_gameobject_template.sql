-- Added gameobject 161557 (Milly's Harvest) in Elwynn Forest into a pool
-- Thanks Patman64 for pointing. This closes #232  
DELETE FROM `pool_gameobject_template` WHERE `id` = 161557;
INSERT INTO `pool_gameobject_template` VALUES
(161557, 1669, 0, 'Milly\'s Harvest (161557)');

DELETE FROM `pool_template` WHERE `entry` = 1669;
INSERT INTO `pool_template` VALUES
(1669, 8, 'Milly\'s Harvest (161557) - Elwynn Forest');

-- Fixed respawn time which was too long: 15 min previously
UPDATE `gameobject` SET `spawntimesecs` = 120 WHERE `id` = 161557;
