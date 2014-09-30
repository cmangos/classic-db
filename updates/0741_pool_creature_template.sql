-- Put creature 10559 (Lady Vespia) into a pool because this is a rare and unique NPC
-- Thanks Zingzah for pointing. This closes #586 
-- Source: http://www.wowhead.com/npc=10559
DELETE FROM `pool_creature_template` WHERE `id` = 10559;
INSERT INTO `pool_creature_template` VALUES
(10559, 1199, 0, 'Lady Vespia (10559)');

DELETE FROM `pool_template` WHERE `entry` = 1199;
INSERT INTO `pool_template` VALUES
(1199, 1, 'Lady Vespia (10559)');
