-- Fixes quest 2701 that is missing its completion text and is rewarded by quest giver
-- instead of specific gameobject
-- which shows wrong gameobject behavior
-- Source: http://www.wowhead.com/quest=2701#comments

-- Adds the gameobject 141980 (Spectral Lockbox) as the quest completion GO
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 2701;
INSERT INTO `gameobject_involvedrelation` VALUES (141980, 2701);
-- Updates gameobject 141980 which had the wrong quest number reference
UPDATE `gameobject_template` SET `data1` = 2701 WHERE `entry` = 141980;
-- Updates quest to remove completion emote as gameobject does not do emote
UPDATE `quest_template` SET `CompleteEmote` = 0 WHERE `entry` = 2701;
-- Removes quest completion from creature 7750 (Corporal Thund Splithoof)
DELETE FROM `creature_involvedrelation` WHERE `quest` = 2701;