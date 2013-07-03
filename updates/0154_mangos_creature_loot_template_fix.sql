-- Added drop chance for item 2203 (Brashclaw's Chopper) and item 2204 (Brashclaw's Skewer) from creature 506 (Sergeant Brashclaw)
-- Thanks to Neotmiren for pointing
-- Source: http://www.wowhead.com/npc=506
DELETE FROM `creature_loot_template` WHERE `entry` = 506 AND `item` IN (2203, 2204);
INSERT INTO `creature_loot_template` VALUES
(506, 2203, 0.03, 0, 1, 1, 0),
(506, 2204, 0.9, 0, 1, 1, 0);
