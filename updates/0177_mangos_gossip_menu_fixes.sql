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

SET @OFFSET := 404;
SET @JOURNEYMAN := 50;
SET @EXPERT := 125;
SET @ARTISAN := 200;

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN @OFFSET+0 AND @OFFSET+3;
INSERT INTO `conditions` VALUES
 (@OFFSET+0, 7, 356, 1),		    -- First Aid Has skill
 (@OFFSET+1, 7, 356, @JOURNEYMAN),	-- First Aid Journeyman
 (@OFFSET+2, 7, 356, @EXPERT),		-- First Aid Expert
 (@OFFSET+3, 7, 356, @ARTISAN);	    -- First Aid Artisan

 
-- ************************************************************
-- Fishing
-- ************************************************************

-- Source: http://www.wowwiki.com/Fishing_trainer?oldid=399569

-- -------------
-- Alliance
-- -------------

-- These values was determined on the basis of gossip menus entries
-- already in database with text_id related to fishing training
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` IN (4741, 4742, 4744);

-- -------------
-- Alliance
-- -------------

-- Various adjustements

-- Journeyman/Expert (teaching Apprentice and Journeyman)
-- Grimnur Stonebrand (5161)
INSERT INTO `gossip_menu` VALUES (4742, 6961, 0, 0);        				    -- Player is right level
INSERT INTO `gossip_menu` VALUES (4742, 6793, 0, @OFFSET+2);				    -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4742, 6960, 0, @OFFSET+3);				    -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4742 WHERE `entry` = 5161; -- Adds gossip menu to trainers
-- Androl Oakhand (3607)
-- Astaia (4156)
-- Lee Brown (1651)
-- Arnold Leland (5493)
-- Paxton Ganter (1700)
-- Warg Deepwater (1683)
-- Matthew Hooper (1680)
-- Harold Riggs (3179)
-- Donald Rabonne (2367)
-- Myizz Luckycatch (2834)
UPDATE `creature_template` SET `npcflag` = `npcflag` | 1 WHERE `entry` = 2834;
-- Brannock (7946)
INSERT INTO `gossip_menu` VALUES (4744, 6961, 0, 0);        				    -- Player is right level
INSERT INTO `gossip_menu` VALUES (4744, 6793, 0, @OFFSET+2);				    -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4744, 6960, 0, @OFFSET+3);				    -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4744 WHERE `entry` IN (3607, 4156, 1651, 5493, 1700, 5161, 1683, 1680, 3179, 2367, 2834, 7946); -- Adds gossip menu to trainers
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3607, 4156, 1651, 5493, 1700, 5161, 1683, 1680, 3179, 2367, 2834, 7946));

-- Artisan (teaching Expert)
-- Taught by book. No NPC.

-- Master (teaching Artisan)
-- Nat Pagle
-- Already has its gossip menu set

-- -------------
-- Horde
-- -------------

-- Various adjustements

-- Journeyman/Expert (teaching Apprentice and Journeyman)
-- Clyde Kellen (5690)
-- Armand Cromwell (4573)
-- Uthan Stillwater (5938)
-- Kah Mistrunner (3028)
-- Lau'Tiki (5941)
-- Lumak (3332)
INSERT INTO `gossip_menu` VALUES (4741, 5793, 0, 0);        				    -- Player does not have skill
INSERT INTO `gossip_menu` VALUES (4741, 5794, 0, @OFFSET+0);        		    -- Player is right level
INSERT INTO `gossip_menu` VALUES (4741, 6793, 0, @OFFSET+2);				    -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4741, 6960, 0, @OFFSET+3);				    -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4741 WHERE `entry` = 3332;    -- Adds gossip menu to trainers
-- Kil'Hiwana (12961)
-- Katoom the Angler (14740)
UPDATE `creature_template` SET `npcflag` = `npcflag` | 1 WHERE `entry` = 14740;
-- Lui'Mala (12032)
UPDATE `creature_template` SET `gossip_menu_id` = 4744 WHERE `entry` IN (5690, 4573, 5938, 3028, 5941, 3332, 12961, 14740, 12032); -- Adds gossip menu to NPCs
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (5690, 4573, 5938, 3028, 5941, 3332, 12961, 14740, 12032));

-- Artisan (teaching Expert)
-- Taught by book. No NPC.

-- Master (teaching Artisan)
-- Same as Alliance