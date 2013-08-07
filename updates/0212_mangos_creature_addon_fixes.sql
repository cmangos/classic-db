-- Added addon for combat emote Deathknight. They will no longer stand idle in front of their Combat Dummy
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk
DELETE FROM `creature_addon` WHERE `guid` IN ( 88434, 88435);
INSERT INTO `creature_addon` VALUES (88435, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88434, 0, 0, 0, 0, 36, 0, '18950'); -- attack
