-- In classic and especially prior to patch 2.3, crafting tradeskills where taught by trainers splitted in several tiers
-- Every tier corresponded to one of the four level of a skill (Apprentice, Journeyman, Expert, Artisan) and trainers can only
-- teach tiers below their own: Journeyman -> Apprentice, Expert -> Journeyman, Artisan -> Expert, Master -> Artisan.
-- When player reached the same tier as a trainer, the gossip of this trainer would change to indicates where to train for the next tier
-- Source regarding this change: http://www.wowwiki.com/Patch_2.3#Profession
-- The SQL queries below revert this change to how it was in Classic. Sources are indicated as header of every sub-section.

-- ************************************************************
-- Conditions
-- ************************************************************

-- Creates conditions for each skill to allow trainers to know when to display gossip indicating players to move to a more skilled trainer

SET @OFFSET := 379;
SET @JOURNEYMAN := 50;
SET @EXPERT := 125;
SET @ARTISAN := 200;

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN @OFFSET+1 AND @OFFSET+3;
INSERT INTO `conditions` VALUES
-- (203, 7, 333, 1),				-- Enchanting Has skill
 (@OFFSET+1, 7, 333, @JOURNEYMAN),	-- Enchanting Journeyman
 (@OFFSET+2, 7, 333, @EXPERT),		-- Enchanting Expert
 (@OFFSET+3, 7, 333, @ARTISAN);		-- Enchanting Artisan


-- ************************************************************
-- Enchanting
-- ************************************************************

-- Source: http://www.wowwiki.com/Enchanting_trainers?diff=400297&oldid=336986

SET @ENTRY := 4153;
-- This value was determined on the basis of gossip menus entries
-- already in database with text_id related to enchanting training (they were not linked to a creature)
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN @ENTRY AND @ENTRY+18;

-- -------------
-- Alliance
-- -------------

-- Various adjustements

-- Journeyman (teaching Apprentice)
-- Alanna Raveneye	(3606)
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5190, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5192, 0, 203);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5191, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+3 WHERE `entry` = 3606; -- Adds gossip menu to Alanna Raveneye
-- Betty Quin (11068)
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5181, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5183, 0, 203);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5182, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+0 WHERE `entry` = 11068; -- Adds gossip menu to Betty Quin
-- Lalina Summermoon 11070
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5187, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5189, 0, 203);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5188, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+2 WHERE `entry` = 11070; -- Adds gossip menu to Lalina Summermoon
-- Thonys Pillarstone 11065
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5184, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5186, 0, 203);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5185, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+1 WHERE `entry` = 11065; -- Adds gossip menu to Thonys Pillarstone
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3606, 11068, 11070, 11065));

-- Expert (teaching Journeyman)
-- Gimble Thistlefuzz (5157)
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5202, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5205, 0, 203);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5206, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5203, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+7 WHERE `entry` = 5157; -- Adds gossip menu to Gimble Thistlefuzz 
-- Lucan Cordell (1317)
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 5207, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 5210, 0, 203);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 5211, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 5208, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+8 WHERE `entry` = 1317; -- Adds gossip menu to Lucan Cordell
-- Taladan (4213)
INSERT INTO `gossip_menu` VALUES (@ENTRY+10, 5213, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+10, 5216, 0, 203);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+10, 5217, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+10, 5214, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+10 WHERE `entry` = 4213; -- Adds gossip menu to Taladan
-- Xylinnia Starshine (7949)
INSERT INTO `gossip_menu` VALUES (@ENTRY+11, 5218, 0, 0);						-- Player too low level / does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+11, 5220, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+11, 5219, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+11 WHERE `entry` = 7949; -- Adds gossip menu to Xylinnia Starshine
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (5157, 1317, 4213, 7949));

-- Artisan (teaching Expert)
-- Kitta Firewind (11072)
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5243, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5246, 0, 203);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5247, 0, @OFFSET+2);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5244, 0, @OFFSET+3);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+16 WHERE `entry` = 11072; -- Adds gossip menu to Kitta Firewind
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11072);

-- Master (teaching Artisan)
-- Annora (11073)
INSERT INTO `gossip_menu` VALUES (@ENTRY+18, 5253, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+18, 5256, 0, 203);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+18, 5255, 0, @OFFSET+3);				-- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+18, `npcflag` = npcflag|1 WHERE `entry` = 11073; -- Adds gossip menu to Annora
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11073);

-- -------------
-- Horde
-- -------------

-- Various adjustements

-- Journeyman (teaching Apprentice)
-- Jhag (11066)
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 5199, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 5201, 0, 203);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 5200, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+6 WHERE `entry` = 11066; -- Adds gossip menu to Jhag
-- Malcomb Wynn	(11067)
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5193, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5195, 0, 203);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5194, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+4 WHERE `entry` = 11067; -- Adds gossip menu to Malcomb Wynn
-- Mot Dawnstrider (11071)
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 5196, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 5198, 0, 203);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 5197, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+5 WHERE `entry` = 11071; -- Adds gossip menu to Mot Dawnstrider 
-- Vance Undergloom (5695)
INSERT INTO `gossip_menu` VALUES (@ENTRY+14, 5233, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+14, 5319, 0, 203);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+14, 5318, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+14 WHERE `entry` = 5695; -- Adds gossip menu to Vance Undergloom
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (11066, 11067, 11071, 5695));

-- Expert (teaching Journeyman)
-- Godan (3345)
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5238, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5241, 0, 203);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5242, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5239, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+15 WHERE `entry` = 3345; -- Adds gossip menu to Godan
-- Lavinia Crowe (4616)
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5228, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5231, 0, 203);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5232, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5229, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+13 WHERE `entry` = 4616; -- Adds gossip menu to Teg Dawnstrider
-- Teg Dawnstrider (3011)
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5223, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5226, 0, 203);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5227, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5224, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+12 WHERE `entry` = 3011; -- Adds gossip menu to Teg Dawnstrider 
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3345, 4616, 3011));

-- Artisan (teaching Expert)
-- Hgarth (11074)
INSERT INTO `gossip_menu` VALUES (@ENTRY+17, 5248, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+17, 5251, 0, 203);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+17, 5252, 0, @OFFSET+2);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+17, 5249, 0, @OFFSET+3);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+17 WHERE `entry` = 11074; -- Adds gossip menu to Hgarth
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11074);

-- Master (teaching Artisan)
-- Same as Alliance
