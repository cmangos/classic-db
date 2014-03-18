-- Added aggro link between creature 11459 (Ironbark Protector) and creature 11489 (Tendris Warpwood)
-- Now players must clean every Ironbark Protector before engaging Tendris unless they want some 'company' during the fight
-- as all Ironbark Protectors will now attack when Tendris Warpwood is engaged
-- Source: http://www.wowwiki.com/Tendris_Warpwood
/*DELETE FROM `creature_linking_template` WHERE `entry` = 11459 AND `map` = 429;
INSERT INTO `creature_linking_template` VALUES (11459, 429, 11489, 1, 50000);*/

DELETE FROM `creature_linking` WHERE `guid` BETWEEN 135072 AND 135086;
INSERT INTO `creature_linking` VALUES
(135072, 138115, 1),
(135073, 138115, 1),
(135074, 138115, 1),
(135075, 138115, 1),
(135076, 138115, 1),
(135077, 138115, 1),
(135078, 138115, 1),
(135079, 138115, 1),
(135080, 138115, 1),
(135081, 138115, 1),
(135082, 138115, 1),
(135083, 138115, 1),
(135084, 138115, 1),
(135085, 138115, 1),
(135086, 138115, 1);