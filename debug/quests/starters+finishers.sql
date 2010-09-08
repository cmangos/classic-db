-- Detects quest starter/finisher where quests doesn't exist
SELECT * FROM `creature_questrelation` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
SELECT * FROM `creature_involvedrelation` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
SELECT * FROM `gameobject_questrelation` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
SELECT * FROM `gameobject_involvedrelation` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);

-- Detects quest starter/finisher where creature/gameobject doesn't exist
SELECT * FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
SELECT * FROM `creature_involvedrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
SELECT * FROM `gameobject_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
SELECT * FROM `gameobject_involvedrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);

-- Detects quest, where starters and finishers doesn't exist
SELECT * FROM `quest_template` WHERE `entry` NOT IN (SELECT `quest` FROM `creature_questrelation`) AND `entry` NOT IN (SELECT `quest` FROM `gameobject_questrelation`) AND `entry` NOT IN (SELECT `startquest` FROM `item_template`);
SELECT * FROM `quest_template` WHERE `entry` NOT IN (SELECT `quest` FROM `creature_involvedrelation`) AND `entry` NOT IN (SELECT `quest` FROM `gameobject_involvedrelation`);
