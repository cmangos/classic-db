-- Spawned missing gameobjects Bijou's belongings
-- Thanks Ela for fixing
-- Source 1xtdb 2x http://www.wowdb.net/quest-4982.html
DELETE FROM `gameobject` WHERE `guid` IN (87911, 87977, 87978);
INSERT INTO `gameobject` VALUES
(87911, 175334, 229, 33.7166, -466.067, -18.4651, -1.53589, 0, 0, 0, 0, 120, 0, 1),
(87977, 175334, 229, -78.5492, -402.515, -18.935, 5.53805, 0, 0, 0.36401, -0.931395, 25, 100, 1),
(87978, 175334, 229, -9.06949, -462.313, -18.6442, 3.13474, 0, 0, 0.999994, 0.00342519, 25, 100, 1);

-- Created pool for Bijou's belongings
DELETE FROM `pool_template` WHERE `entry` = 1668;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1668, 1, 'QUEST OBJECT - Bijous Belongings - 175334');
DELETE FROM `pool_gameobject_template` WHERE `id` = 175334;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (175334, 1668, 0, 'Bijous Belongings');
