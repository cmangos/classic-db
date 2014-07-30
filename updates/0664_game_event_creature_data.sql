-- Moved Pyrewood Village event from game_event_creature to game_event_creature_data
-- to reduce data redundancy

-- Removed 'Pyrewood Village - Day' event: human NPC will be spawned by default
-- Moved 'Pyrewood Village - Curse of the Worgen' event id to decrease core memory usage
DELETE FROM `game_event` WHERE `entry` = 3;
UPDATE `game_event` SET `entry` = 3 WHERE `entry` = 11;

DELETE FROM `game_event_creature` WHERE `event` IN (3, 11);

-- Removed all addon, waypoints and spawns of Moonrage worgens
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1892, 1893, 1896, 3529, 3531, 3533));
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1892, 1893, 1896, 3529, 3531, 3533));
DELETE FROM `creature` WHERE `id` IN (1892, 1893, 1896, 3529, 3531, 3533);

-- Cleaned all forced models ID
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (1891, 1894, 1895, 3528, 3530, 3532);

-- Made all Pyrewood Watcher, Sentry, Elder, Armorer, Tailor and Leatherworker
-- transform into their worgen equivalent at nightfall 
DELETE FROM `game_event_creature_data` WHERE `event` IN (3, 11);
INSERT INTO `game_event_creature_data` VALUES
-- Pyrewood Watcher
(17908, 1892, 0, 0, 7671, 7671, 3),
(18404, 1892, 0, 0, 7671, 7671, 3),
(18408, 1892, 0, 0, 7671, 7671, 3),
(19002, 1892, 0, 0, 7671, 7671, 3),
(19005, 1892, 0, 0, 7671, 7671, 3),
(19084, 1892, 0, 0, 7671, 7671, 3),
(19219, 1892, 0, 0, 7671, 7671, 3),
(19222, 1892, 0, 0, 7671, 7671, 3),
(19223, 1892, 0, 0, 7671, 7671, 3),
(19224, 1892, 0, 0, 7671, 7671, 3),
(19227, 1892, 0, 0, 7671, 7671, 3),
(19229, 1892, 0, 0, 7671, 7671, 3),
(19316, 1892, 0, 0, 7671, 7671, 3),
(19343, 1892, 0, 0, 7671, 7671, 3),
-- Pyrewood Sentry
(17910, 1893, 0, 0, 7671, 7671, 3),
(17911, 1893, 0, 0, 7671, 7671, 3),
(18236, 1893, 0, 0, 7671, 7671, 3),
(18237, 1893, 0, 0, 7671, 7671, 3),
(18239, 1893, 0, 0, 7671, 7671, 3),
(18291, 1893, 0, 0, 7671, 7671, 3),
(18306, 1893, 0, 0, 7671, 7671, 3),
(18350, 1893, 0, 0, 7671, 7671, 3),
(18400, 1893, 0, 0, 7671, 7671, 3),
(18411, 1893, 0, 0, 7671, 7671, 3),
(18413, 1893, 0, 0, 7671, 7671, 3),
(18996, 1893, 0, 0, 7671, 7671, 3),
(19012, 1893, 0, 0, 7671, 7671, 3),
(19015, 1893, 0, 0, 7671, 7671, 3),
(19019, 1893, 0, 0, 7671, 7671, 3),
(19220, 1893, 0, 0, 7671, 7671, 3),
(19228, 1893, 0, 0, 7671, 7671, 3),
-- Pyrewood Elder
(17663, 1896, 0, 0, 7671, 7671, 3),
(17905, 1896, 0, 0, 7671, 7671, 3),
(18220, 1896, 0, 0, 7671, 7671, 3),
(18221, 1896, 0, 0, 7671, 7671, 3),
(18238, 1896, 0, 0, 7671, 7671, 3),
(18310, 1896, 0, 0, 7671, 7671, 3),
(18354, 1896, 0, 0, 7671, 7671, 3),
(18355, 1896, 0, 0, 7671, 7671, 3),
(18405, 1896, 0, 0, 7671, 7671, 3),
(18407, 1896, 0, 0, 7671, 7671, 3),
(18409, 1896, 0, 0, 7671, 7671, 3),
(19007, 1896, 0, 0, 7671, 7671, 3),
-- Pyrewood Armorer, Tailor & Leatherworker
(18307, 3529, 0, 0, 7671, 7671, 3),
(18235, 3531, 0, 0, 7671, 7671, 3),
(18309, 3533, 0, 0, 7671, 7671, 3);
