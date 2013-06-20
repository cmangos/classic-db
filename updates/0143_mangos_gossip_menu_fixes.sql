-- In classic and especially prior to patch 2.3, crafting tradeskills where taught by trainers splitted in several tiers
-- Every tier corresponded to one of the four level of a skill (Apprentice, Journeyman, Expert, Artisan) and trainers can only
-- teach tiers below their own: Journeyman -> Apprentice, Expert -> Journeyman, Artisan -> Expert, Master -> Artisan).
-- When player reached the same tier as a trainer, the gossip of this trainer would change to indicates where to train for the next tier
-- Source regarding this change: http://www.wowwiki.com/Patch_2.3#Profession
-- The SQL queries below revert this change to how it was in Classic. Sources are indicated as header of every sub-section.

-- ************************************************************
-- Conditions
-- ************************************************************

-- Creates conditions for each skill to allow trainers to know when to display gossip indicating players to move to a more skilled trainer

SET @OFFSET := 376;
SET @JOURNEYMAN := 50;
SET @EXPERT := 125;
SET @ARTISAN := 200;

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN @OFFSET+1 AND @OFFSET+3;
INSERT INTO `conditions` VALUES
-- (199, 7, 165, 1),				-- Leatherworking Has skill
 (@OFFSET+1, 7, 165, @JOURNEYMAN),	-- Leatherworking Journeyman
 (@OFFSET+2, 7, 165, @EXPERT),		-- Leatherworking Expert
 (@OFFSET+3, 7, 165, @ARTISAN);	-- Leatherworking Artisan

-- ************************************************************
-- Leatherworking
-- ************************************************************

-- Source: http://www.wowwiki.com/Leatherworking_trainers?diff=399994&oldid=398004
SET @ENTRY := 4172;
-- These values was determined on the basis of gossip menus entries
-- already in database with text_id related to leatherwoking training
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN @ENTRY AND @ENTRY+72;

-- -------------
-- Alliance
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Leatherworker' WHERE `entry` = 11097; 	-- Drakk Stonehand was Master Leatherworker in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Adele Fielder (1632)
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5257, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5259, 0, 199);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5258, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+0 WHERE `entry` = 1632; -- Adds gossip menu to Adele Fielder
-- Darianna (11083)
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5275, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5273, 0, 199);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5274, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+3 WHERE `entry` = 11083; -- Adds gossip menu to Darianna
-- Gretta Finespindle (1466)
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5276, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5278, 0, 199);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5277, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+4 WHERE `entry` = 1466; -- Adds gossip menu to Gretta Finespindle
-- Nadyia Maneweaver (3605)
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5263, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5265, 0, 199);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5264, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+2 WHERE `entry` = 3605; -- Adds gossip menu to Nadyia Maneweaver
-- Randal Worth (11096)
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5260, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5262, 0, 199);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5261, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+1 WHERE `entry` = 11096; -- Adds gossip menu to Randal Worth
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1632, 11083, 1466, 3605, 11096));

-- Expert (teaching Journeyman)
-- Aayndia Floralwind (3967)
INSERT INTO `gossip_menu` VALUES (@ENTRY+41, 5360, 0, 0);				    	-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+41, 5363, 0, 199);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+41, 5364, 0, @OFFSET+1);		    	-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+41, 5361, 0, @OFFSET+2);		    	-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+41 WHERE `entry` = 3967;  -- Adds gossip menu to Aayndia Floralwind
-- Faldron (11081)
INSERT INTO `gossip_menu` VALUES (@ENTRY+32, 5325, 0, 0);				    	-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+32, 5328, 0, 199);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+32, 5329, 0, @OFFSET+1);		    	-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+32, 5326, 0, @OFFSET+2);		    	-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+32 WHERE `entry` = 11081;  -- Adds gossip menu to Faldron
-- Fimble Finespindle (5127)
INSERT INTO `gossip_menu` VALUES (@ENTRY+33, 5330, 0, 0);				    	-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+33, 5333, 0, 199);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+33, 5334, 0, @OFFSET+1);		    	-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+33, 5331, 0, @OFFSET+2);		    	-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+33 WHERE `entry` = 5127;  -- Adds gossip menu to Fimble Finespindle 
-- Simon Tanner (5564)
INSERT INTO `gossip_menu` VALUES (@ENTRY+31, 5320, 0, 0);				    	-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+31, 5323, 0, 199);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+31, 5324, 0, @OFFSET+1);		    	-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+31, 5321, 0, @OFFSET+2);		    	-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+31 WHERE `entry` = 5564;  -- Adds gossip menu to Simon Tanner
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3967, 11081, 5127, 5564));

-- Artisan (teaching Expert)
-- Telonis (4212)
INSERT INTO `gossip_menu` VALUES (@ENTRY+69, 5393, 0, 0);					    -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+69, 5396, 0, 199);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+69, 5397, 0, @OFFSET+2);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+69, 5394, 0, @OFFSET+3);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+69 WHERE `entry` = 4212;  -- Adds gossip menu to Telonis
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4212);

-- Master (teaching Artisan)
-- Drakk Stonehand (11097)
INSERT INTO `gossip_menu` VALUES (@ENTRY+71, 5403, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+71, 5406, 0, 199);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+71, 5405, 0, @OFFSET+3);				-- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+71 WHERE `entry` = 11097; -- Adds gossip menu to Drakk Stonehand
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11097);

-- -------------
-- Horde
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Leatherworker' WHERE `entry` = 11098; 	-- Hahrana Ironhide was Master Leatherworker in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Chaw Stronghide (3069)
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5285, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5287, 0, 199);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5286, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+13 WHERE `entry` = 3069; -- Adds gossip menu to Chaw Stronghide
-- Waldor (5784)
INSERT INTO `gossip_menu` VALUES (@ENTRY+14, 5288, 0, 0);						-- Player does not have the right skill / is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+14, 5289, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+14 WHERE `entry` = 5784; -- Adds gossip menu to Waldor
-- Dan Golthas (223)
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5294, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5296, 0, 199);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5295, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+12 WHERE `entry` = 223; -- Adds gossip menu to Dan Golthas
-- Kamari (5811)
INSERT INTO `gossip_menu` VALUES (@ENTRY+11, 5279, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+11, 5281, 0, 199);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+11, 5280, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+11 WHERE `entry` = 5811; -- Adds gossip menu to Kamari
-- Mak (3008)
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5291, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5293, 0, 199);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5292, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+15 WHERE `entry` = 3008; -- Adds gossip menu to Mak
-- Shelene Rhobart (3549)
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5282, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5284, 0, 199);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5283, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+12 WHERE `entry` = 3549; -- Adds gossip menu to Shelene Rhobart
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3069, 5784, 223, 5811, 3008, 3549));

-- Expert (teaching Journeyman)
-- Arthur Moore (4588)
INSERT INTO `gossip_menu` VALUES (@ENTRY+40, 5355, 0, 0);				    	-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+40, 5358, 0, 199);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+40, 5359, 0, @OFFSET+1);		    	-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+40, 5356, 0, @OFFSET+2);		    	-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+40 WHERE `entry` = 4588;  -- Adds gossip menu to Arthur Moore
-- Brawn (1385)
INSERT INTO `gossip_menu` VALUES (@ENTRY+36, 5348, 0, 0);				    	-- Player does not have the right skill / too low level
-- INSERT INTO `gossip_menu` VALUES (@ENTRY+36, 5348, 0, 199);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+36, 5345, 0, @OFFSET+1);		    	-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+36, 5346, 0, @OFFSET+2);		    	-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+36 WHERE `entry` = 1385;  -- Adds gossip menu to Brawn
-- Karolek (3365)
INSERT INTO `gossip_menu` VALUES (@ENTRY+37, 5350, 0, 0);				    	-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+37, 5353, 0, 199);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+37, 5354, 0, @OFFSET+1);		    	-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+37, 5351, 0, @OFFSET+2);		    	-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+37 WHERE `entry` = 3365;  -- Adds gossip menu to Karolek
-- Krulmoo Fullmoon (3703)
INSERT INTO `gossip_menu` VALUES (@ENTRY+34, 5335, 0, 0);				    	-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+34, 5338, 0, 199);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+34, 5339, 0, @OFFSET+1);		    	-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+34, 5336, 0, @OFFSET+2);		    	-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+34 WHERE `entry` = 3703;  -- Adds gossip menu to Krulmoo Fullmoon
-- Tarn (11084)
INSERT INTO `gossip_menu` VALUES (@ENTRY+35, 5340, 0, 0);				    	-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+35, 5343, 0, 199);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+35, 5344, 0, @OFFSET+1);		    	-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+35, 5341, 0, @OFFSET+2);		    	-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+35 WHERE `entry` = 11084;  -- Adds gossip menu to Tarn
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (4588, 1385, 3365, 3707, 11084));

-- Artisan (teaching Expert)
-- Una (3007)
INSERT INTO `gossip_menu` VALUES (@ENTRY+70, 5398, 0, 0);					    -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+70, 5401, 0, 199);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+70, 5402, 0, @OFFSET+2);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+70, 5399, 0, @OFFSET+3);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+70 WHERE `entry` = 3007;  -- Adds gossip menu to Una
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 3007);

-- Master (teaching Artisan)
-- Hahrana Ironhide (11098)
INSERT INTO `gossip_menu` VALUES (@ENTRY+72, 5407, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+72, 5410, 0, 199);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+72, 5408, 0, @OFFSET+3);				-- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+72 WHERE `entry` = 11098; -- Adds gossip menu to Drakk Stonehand
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11098);

