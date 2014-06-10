-- War Master Voone (LBRS) did not drop 100-175 Flightblade Throwing Axes
-- Thanks Neotmiren for pointing and fixing. This closes #463 
-- Source: http://www.wowwiki.com/Flightblade_Throwing_Axe?oldid=289450
DELETE FROM `creature_loot_template` WHERE `entry` = 9237 AND `item` = 13173;
INSERT INTO `creature_loot_template` VALUES
(9237, 13173, 100, 0, 100, 175, 0);
