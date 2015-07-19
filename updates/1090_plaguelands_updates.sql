-- Fixed rank of NPC 16184 (Nerubian Overseer) because it was rare elite in Classic
UPDATE `creature_template` SET `rank` = 2 WHERE `Entry` = 16184;
-- Fixed rank of NPC 1852 (Araj the Summoner) because it is elite but not rare
UPDATE `creature_template` SET `rank` = 1 WHERE `Entry` = 1852;

-- Removed useless creature addon and moved them to creature_template_addon for NPC 10580 (Fetid Zombie) in Western Plaguelands
DELETE FROM `creature_template_addon` WHERE `entry` = 10580;
INSERT INTO `creature_template_addon` VALUES
(10580, 0, 0, 1, 16, 0, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 10580);

-- Fixed stats of NPC 10717 (Temporal Parasite) that was dealing too much damage and was missing mana
UPDATE `creature_template` SET `InhabitType` = 1, `UnitClass` = 2, `MinLevelHealth` = 2823, `MaxLevelHealth` = 3006, `HealthMultiplier` = 1.35, `MinLevelMana` = 2117, `MaxLevelMana` = 2241, `ArmorMultiplier` = 1 WHERE `Entry` = 10717;
UPDATE `creature_template` SET `MinMeleeDmg` = 93, `MaxMeleeDmg` = 130, `MeleeAttackPower` = 238, `MeleeBaseAttackTime` = 2000  WHERE `Entry` = 10717;

-- Added missing spell target
DELETE FROM `spell_script_target` WHERE `entry` = 16613;
INSERT INTO `spell_script_target` VALUES (16613, 0, 175795, 0);

-- Fixed stats of one undead NPC at Dalson's Tear in Western Plaguelands
UPDATE `creature_template` SET `MinMeleeDmg` = 88, `MaxMeleeDmg` = 122, `MeleeAttackPower` = 224, `RangedAttackPower` = 22, `MeleeBaseAttackTime` = 2000, `Armor` = 3180 WHERE `Entry` = 1785; -- Skeletal Terror

-- Fixed stats NPC 1796 (Freezing Ghoul) in Andorhal in Western Plaguelands: it was dealing too much damage (still having its elite damage)
-- also fixed Fire resistance of NPC 1795 (Searing Ghoul)
UPDATE `creature_template` SET `ResistanceFire` = 150 WHERE `Entry` = 1795; -- Searing Ghoul 
UPDATE `creature_template` SET `MinMeleeDmg` = 94, `MaxMeleeDmg` = 127, `MeleeAttackPower` = 234, `RangedAttackPower` = 22, `MeleeBaseAttackTime` = 2000 WHERE `Entry` = 1796; -- Freezeing Ghoul

-- Deleted NPC 10979 at Dalson's Tear in Western Plaguelands as it is summoned
DELETE FROM `creature` WHERE `guid` = 52635;
DELETE FROM `creature_addon` WHERE `guid` = 52635;

-- Fixed speed of NPC 11076 (Cauldron Lord Razarch) in Western Plaguelands who was moving too fast (walk/run speed were inverted)
UPDATE `creature_template` SET `SpeedWalk` = 1.14286, `SpeedRun` = 1.89 WHERE `Entry` = 11076;

-- Added missing WP to NPC 10816 (Wandering Skeleton) because
-- it was very static for a wandering one
-- Source: http://www.wowhead.com/npc=10816/wandering-skeleton#comments
DELETE FROM `creature_movement_template` WHERE `entry` = 10816;
INSERT INTO `creature_movement_template` VALUES
(10816, 1, 1936.95, -1635.07, 60.0263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.59485, 0, 0),
(10816, 2, 1930.95, -1657.73, 59.31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.44345, 0, 0),
(10816, 3, 1912, -1660.12, 61.2311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.33997, 0, 0),
(10816, 4, 1902.82, -1651.78, 60.0138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.40377, 0, 0),
(10816, 5, 1886.67, -1651.37, 61.2298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.95355, 0, 0),
(10816, 6, 1882.75, -1629.76, 61.5077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.75032, 0, 0),
(10816, 7, 1899.4, -1616.07, 60.4586, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.688462, 0, 0),
(10816, 8, 1915.49, -1615.05, 61.0254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0632846, 0, 0),
(10816, 9, 1927.59, -1627.02, 60.4777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.4307, 0, 0),
(10816, 10, 1925.09, -1627, 60.455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.942, 0, 0);

UPDATE `creature_template` SET `MovementType` = 2 WHERE `Entry` = 10816;
UPDATE `creature` SET `position_x` = 1936.95, `position_y` = -1635.07, `position_z` = 60.0263, `MovementType` = 2 WHERE `id` = 10816;

-- Fixed drop chance of quest item 12738 (Dalson Outhouse Key) as it should only drop once the first part of the quest line is completed
-- Source: http://www.wowwiki.com/Locked_Away_quest_chain
SET @CONDITION := 1336;

DELETE FROM `conditions` WHERE `condition_entry` = @CONDITION;
INSERT INTO `conditions` VALUES (@CONDITION, 8, 5058, 0);

UPDATE `creature_loot_template` SET `condition_id` = @CONDITION WHERE `item` = 12738;
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 5058;

-- Removed spawns of NPC 10979 (Scarlet Hounds) because they should be summoned
DELETE FROM `creature` WHERE `guid` IN (52664, 52666, 52667, 52665, 52668);
DELETE FROM `creature_addon` WHERE `guid` IN (52664, 52666, 52667, 52665, 52668);

-- Improved gossip menu of NPC 10739 (Mulgris Deepriver) in Western Plaguelands
SET @COND := 803;

DELETE FROM `conditions` WHERE `condition_entry` = @COND;
INSERT INTO `conditions` VALUES (@COND, 8, 4985, 0);

UPDATE `gossip_menu` SET `condition_id` = @COND WHERE `entry` = 2921 AND `text_id` = 3635;

-- Improved gossip menu of NPC 10304 (Aurora Skycaller) in Eastern Plaguelands
DELETE FROM `conditions` WHERE `condition_entry` IN (@COND + 1, @COND + 2);
INSERT INTO `conditions` VALUES
(@COND + 1, 9, 5247, 0),
(@COND + 2, 8, 5245, 0);

UPDATE `gossip_menu_option` SET `action_menu_id` = 50100, `condition_id` = @COND + 1 WHERE `menu_id` = 4743 AND `id` = 0;
UPDATE `gossip_menu_option` SET `action_menu_id` = 50101, `condition_id` = @COND + 1 WHERE `menu_id` = 4743 AND `id` = 1;

DELETE FROM `gossip_menu` WHERE `entry` IN (50100, 50101);
INSERT INTO `gossip_menu` VALUES
(50100, 5796, 0, 0),
(50101, 5797, 0, 0);

UPDATE `gossip_menu` SET `condition_id` = 3 WHERE `entry` = 4743 AND `text_id` = 5795;
UPDATE `gossip_menu` SET `condition_id` = @COND + 2 WHERE `entry` = 4743 AND `text_id` = 5817;

-- Added missing spawns of rare NPC 10821 (Hed'mush the Rotting) in Eastern Plaguelands
-- Put them into a pool
-- Source: YTDB

SET @GUID := 84946;
SET @POOL := 1060;

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 1 AND @GUID + 3;
INSERT INTO `creature` VALUES
(@GUID + 1, 10821, 0, 0, 0, 1853.9, -3720, 162.224, 1.254, 28800, 0, 0, 3758, 0, 0, 0),
(@GUID + 2, 10821, 0, 0, 0, 2524.42, -4757.21, 100.484, 2.33279, 28800, 0, 0, 3758, 0, 0, 0),
(@GUID + 3, 10821, 0, 0, 0, 3157.01, -4327.84, 133.152, 2.43097, 28800, 5, 0, 3758, 0, 0, 1);

UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `id` = 10821;

DELETE FROM `pool_creature_template` WHERE `id` = 10821;
INSERT INTO `pool_creature_template` VALUES
(10821, @POOL, 0, 'Hed\'mush the Rotting (10821)');

DELETE FROM `pool_template` WHERE `entry` = @POOL;
INSERT INTO `pool_template` VALUES
(@POOL, 1, 'Hed\'mush the Rotting (10821)');
