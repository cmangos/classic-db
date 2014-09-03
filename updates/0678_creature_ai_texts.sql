
-- ----------------------------

DELETE FROM `creature_ai_texts` WHERE `entry`='-1320';

INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) VALUE
('-1320', '%s splits into two new Lava Spawns!', '0', '2', '0', 'Lava Spawn - Split Emote');
