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

SET @OFFSET := 396;
SET @JOURNEYMAN := 50;
SET @EXPERT := 125;
SET @ARTISAN := 200;

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN @OFFSET+0 AND @OFFSET+3;
INSERT INTO `conditions` VALUES
 (@OFFSET+0, 7, 129, 1),		    -- First Aid Has skill
 (@OFFSET+1, 7, 129, @JOURNEYMAN),  -- First Aid Journeyman
 (@OFFSET+2, 7, 129, @EXPERT),		-- First Aid Expert
 (@OFFSET+3, 7, 129, @ARTISAN);	    -- First Aid Artisan

 
-- ************************************************************
-- First Aid
-- ************************************************************

-- Source: http://www.wowwiki.com/First_Aid_trainers?diff=399516&oldid=399480

-- -------------
-- Alliance
-- -------------

-- These values was determined on the basis of gossip menus entries
-- already in database with text_id related to first aid training
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` IN (4762, 5855, 657, 5382, 5383, 5856, 5384);

-- -------------
-- Alliance
-- -------------

-- Various adjustements

-- Journeyman/Expert (teaching Apprentice and Journeyman)
-- Nissa Firestone (5150)

INSERT INTO `gossip_menu` VALUES (4762, 7028, 0, 0);						-- Player does not have the right skill or is right level
INSERT INTO `gossip_menu` VALUES (4762, 7027, 0, @OFFSET+2);				-- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4762, 7026, 0, @OFFSET+3);				-- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4762 WHERE `entry` IN (5150); -- Adds gossip menu to NPCs
-- Dannelor (4211)
-- Fremal Doohickey (3181)
-- Byancie (6094)
-- Michelle Belle (2329)
-- Thamner Pol (2326)
INSERT INTO `gossip_menu` VALUES (5855, 7028, 0, 0);						-- Player does not have the right skill or is right level
INSERT INTO `gossip_menu` VALUES (5855, 7027, 0, @OFFSET+2);				-- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (5855, 7026, 0, @OFFSET+3);				-- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 5855 WHERE `entry` IN (6094, 4211, 2329, 2326, 3181); -- Adds gossip menu to NPCs
-- Shaina Fuller (2327)
INSERT INTO `gossip_menu` VALUES (657, 1221, 0, 0);						    -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (657, 1220, 0, @OFFSET+0);				    -- Player is right level
INSERT INTO `gossip_menu` VALUES (657, 7027, 0, @OFFSET+2);				    -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (657, 7026, 0, @OFFSET+3);				    -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 657 WHERE `entry` = 2327; -- Adds gossip menu to Shaina Fuller
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (6094, 4211, 5150, 3181, 2329, 2326, 2327));

-- Artisan (teaching Expert)
-- Taught by book. No NPC.

-- Master (teaching Artisan)
-- Doctor Gustaf VanHouzen (12939)
INSERT INTO `gossip_menu` VALUES (5382, 6415, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (5382, 6573, 0, @OFFSET+0);				-- Player is too low level
INSERT INTO `gossip_menu` VALUES (5382, 6414, 0, @OFFSET+3);				-- Player is right level
UPDATE `creature_template` SET `gossip_menu_id` = 5382 WHERE `entry` = 12939; -- Adds gossip menu to Doctor Gustaf VanHouzen
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 12939);

-- -------------
-- Horde
-- -------------

-- Various adjustements

-- Journeyman/Expert (teaching Apprentice and Journeyman)
-- Rawrck (5943)
INSERT INTO `gossip_menu` VALUES (5384, 5813, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (5384, 5815, 0, @OFFSET+0);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (5384, 7025, 0, @OFFSET+2);				-- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (5384, 7024, 0, @OFFSET+3);				-- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 5384 WHERE `entry` = 5943; -- Adds gossip menu to NPCs
-- Nurse Neela (5759)
-- Mary Edras (4591)
-- Vira Younghoof (5939)
-- Pand Stonelider (2798)
-- Arnok (3373)
INSERT INTO `gossip_menu` VALUES (5856, 7028, 0, 0);						-- Player does not have the right skill or is right level
INSERT INTO `gossip_menu` VALUES (5856, 7025, 0, @OFFSET+2);				-- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (5856, 7024, 0, @OFFSET+3);				-- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 5856 WHERE `entry` IN (5759, 4591, 5939, 2798, 5943, 3373); -- Adds gossip menu to NPCs
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (5759, 4591, 5939, 2798, 5943, 3373));

-- Artisan (teaching Expert)
-- Taught by book. No NPC.

-- Master (teaching Artisan)
-- Doctor Gregory Victor (12920)
INSERT INTO `gossip_menu` VALUES (5383, 6413, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (5383, 6573, 0, @OFFSET+0);				-- Player is too low level
INSERT INTO `gossip_menu` VALUES (5383, 6414, 0, @OFFSET+3);				-- Player is right level
UPDATE `creature_template` SET `gossip_menu_id` = 5383 WHERE `entry` = 12920; -- Adds gossip menu to Doctor Gregory Victor
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 12920);