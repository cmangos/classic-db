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

SET @OFFSET := 400;
SET @JOURNEYMAN := 50;
SET @EXPERT := 125;
SET @ARTISAN := 200;

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN @OFFSET+0 AND @OFFSET+3;
INSERT INTO `conditions` VALUES
 (@OFFSET+0, 7, 185, 1),		    -- Cooking Has skill
 (@OFFSET+1, 7, 185, @JOURNEYMAN),	-- Cooking Journeyman
 (@OFFSET+2, 7, 185, @EXPERT),		-- Cooking Expert
 (@OFFSET+3, 7, 185, @ARTISAN);	    -- Cooking Artisan

 
-- ************************************************************
-- Cooking
-- ************************************************************

-- Source: http://www.wowwiki.com/Cooking_trainers?oldid=399399

-- -------------
-- Alliance
-- -------------

-- These values was determined on the basis of gossip menus entries
-- already in database with text_id related to cooking training
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` IN (646, 4748, 5853, 4746, 4749,4747);

-- -------------
-- Alliance
-- -------------

-- Various adjustements

-- Journeyman/Expert (teaching Apprentice and Journeyman)
-- Stephen Ryback (5482)
INSERT INTO `gossip_menu` VALUES (646, 1207, 0, 0);			    			-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (646, 7015, 0, @OFFSET+0);		    		-- Player is right level
INSERT INTO `gossip_menu` VALUES (646, 7016, 0, @OFFSET+2);			    	-- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (646, 7017, 0, @OFFSET+3);				    -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 646 WHERE `entry` = 5482; -- Adds gossip menu to trainers
-- Daryl Riknussun (5159)
INSERT INTO `gossip_menu` VALUES (4748, 5800, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4748, 7015, 0, @OFFSET+0);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (4748, 7016, 0, @OFFSET+2);				-- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4748, 7017, 0, @OFFSET+3);				-- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4748 WHERE `entry` = 5159; -- Adds gossip menu to trainers
-- Crystal Boughman (3087)
-- Gremlock Pilsnor (1699)
-- Cook Ghilm (1355)
-- Zarrin (6286)
-- Alegorn (4210)
-- Tomas (1430)
INSERT INTO `gossip_menu` VALUES (5853, 7021, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (5853, 7015, 0, @OFFSET+0);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (5853, 7016, 0, @OFFSET+2);				-- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (5853, 7017, 0, @OFFSET+3);				-- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 5853 WHERE `entry` IN (6286, 4210, 1430, 1699, 1355, 3087); -- Adds gossip menu to trainers
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (6286, 4210, 1430, 5482, 1699, 1355, 5159, 3087));

-- Artisan (teaching Expert)
-- Taught by book. No NPC.

-- Master (teaching Artisan)
-- Dirge Quikcleave (8125)
INSERT INTO `gossip_menu` VALUES (4746, 5798, 0, 0);						-- Player does not have the right skill
UPDATE `creature_template` SET `gossip_menu_id` = 4746, `npcflag` = `npcflag`|1 WHERE `entry` = 8125; -- Adds gossip menu to Dirge Quikcleave
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 8125);

-- -------------
-- Horde
-- -------------

-- Various adjustements

-- Journeyman/Expert (teaching Apprentice and Journeyman)
-- Zamja (3399)
INSERT INTO `gossip_menu` VALUES (4749, 5799, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4749, 7015, 0, @OFFSET+0);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (4749, 7019, 0, @OFFSET+2);				-- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4749, 7017, 0, @OFFSET+3);				-- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4749 WHERE `entry` = 3399; -- Adds gossip menu to trainers
-- Eunice Burch (4552)
-- Pyall Silentstride (3067)
-- Aska Mistrunner (3026)
-- Duhng (8306)
-- Slagg (2818)
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 2818;
-- Mudduk (1382)
INSERT INTO `gossip_menu` VALUES (4747, 7021, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4747, 7015, 0, @OFFSET+0);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (4747, 7019, 0, @OFFSET+2);				-- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4747, 7017, 0, @OFFSET+3);				-- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4747 WHERE `entry` IN (4552, 3067, 3026, 8306, 2818, 1382); -- Adds gossip menu to NPCs
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (4552, 3067, 3026, 3399, 8306, 2818, 1382));

-- Artisan (teaching Expert)
-- Taught by book. No NPC.

-- Master (teaching Artisan)
-- Same as alliance