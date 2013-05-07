-- In classic and especially prior to patch 2.3, crafting tradeskills where taught by trainers splitted into several tiers.
-- Every tier corresponded to one of the four level of a skill (Apprentice, Journeyman, Expert, Artisan) and trainers can only
-- teach tiers below their own: Journeyman -> Apprentice, Expert -> Journeyman, Artisan -> Expert, Master -> Artisan.
-- When player reached the same tier as a trainer, the gossip of this trainer would change to indicates where to train for the next tier
-- Source regarding this change: http://www.wowwiki.com/Patch_2.3#Profession
-- The SQL queries below revert this change to how it was in Classic. Sources are indicated as header of every sub-section.
-- The NPC texts used below were already in DB but not linked to a gossip and/or a creature.

-- ************************************************************
-- Conditions
-- ************************************************************

-- Creates conditions for each skill to allow trainers to know when to display gossip indicating players to move to a more skilled trainer

SET @OFFSET := 360;
SET @JOURNEYMAN := 50;
SET @EXPERT := 125;
SET @ARTISAN := 200;

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN @OFFSET+1 AND @OFFSET+5;
INSERT INTO `conditions` VALUES
-- (209, 7, 171, 1),				-- Alchemy Has skill
(@OFFSET+1, 7, 171, @JOURNEYMAN),	-- Alchemy Journeyman
(@OFFSET+2, 7, 171, @EXPERT),		-- Alchemy Expert
(@OFFSET+3, 7, 171, @ARTISAN),	    -- Alchemy Artisan
(@OFFSET+4, -1, @OFFSET+2, 3),     -- Alchemy Expert and Horde player
(@OFFSET+5, -1, @OFFSET+2, 4);     -- Alchemy Expert and Alliance player


-- ************************************************************
-- Alchemy
-- ************************************************************

-- Source: http://www.wowwiki.com/Alchemy_trainers?diff=266463&oldid=255045

SET @ENTRY := 4110;
-- This value was determined on the basis of gossip menus entries
-- already in database with text_id related to alchemy training (they were not linked to a creature)
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN @ENTRY AND @ENTRY+24;

-- -------------
-- Alliance
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Alchemist' WHERE `entry` = 7948; -- Kylanna was Master Alchemist in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Alchemist Mallory (1215)
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5013, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5014, 0, 209);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5015, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+0 WHERE `entry` = 1215; -- Adds gossip menu to Alchemist Mallory
-- Tel'Athir (5500)
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5019, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5020, 0, 209);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5021, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+1 WHERE `entry` = 5500; -- Adds gossip menu to Tel'Athir
-- Cyndra Kindwhisper (3603)
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5022, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5023, 0, 209);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5024, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+2 WHERE `entry` = 3603; -- Adds gossip menu to Cyndra Kindwhisper
-- Milla Fairancora (11041)
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5025, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5026, 0, 209);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5027, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+3 WHERE `entry` = 11041; -- Adds gossip menu to Milla Fairancora
-- Ghak Healtouch (1470)
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 5028, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 5029, 0, 209);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 5030, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+5 WHERE `entry` = 1470; -- Adds gossip menu to Ghak Healtouch
-- Vosur Brakthel (1246)
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 5031, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 5032, 0, 209);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 5033, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+6 WHERE `entry` = 1246; -- Adds gossip menu to Vosur Brakthel
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1215, 5500, 3603, 11041, 1470, 1246));

-- Expert (teaching Journeyman)
-- Tally Berryfizz (5177)
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5054, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5057, 0, 209);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5058, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5055, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+13 WHERE `entry` = 5177; -- Adds gossip menu to Tally Berryfizz
-- Sylvanna Forestmoon (11042)
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5064, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5067, 0, 209);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5068, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5065, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+4 WHERE `entry` = 11042; -- Adds gossip menu to Sylvanna Forestmoon
-- Kylanna (3964)
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5059, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5051, 0, 209);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5060, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5063, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+7 WHERE `entry` = 3964; -- Adds gossip menu to Kylanna
-- Alchemist Narett (4900)
INSERT INTO `gossip_menu` VALUES (@ENTRY+9, 5049, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+9, 5051, 0, 209);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+9, 5053, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+9, 5050, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+9 WHERE `entry` = 4900; -- Adds gossip menu to Alchemist Narett
-- Lilyssia Nightbreeze (5499)
INSERT INTO `gossip_menu` VALUES (@ENTRY+11, 5316, 0, 0);						-- Player too low level / does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+11, 5317, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+11, 5314, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+11 WHERE `entry` = 5499; -- Adds gossip menu to Lilyssia Nightbreeze
-- Jaxing Chong (2837)
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5074, 0, 0);						-- Player too low level / does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5075, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5078, 0, @OFFSET+5);				-- Player too high level and Alliance player
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+12 WHERE `entry` = 2837; -- Adds gossip menu to Jaxing Chong
-- UPDATE `creature_template` SET `trainer_spell` = 2275 WHERE `entry` IN (5177, 11042, 3964, 4900, 5499, 2837);
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (8177, 11042, 3964, 4900, 5499, 2837));

-- Artisan (teaching Expert)
-- Ainethil (4160)
INSERT INTO `gossip_menu` VALUES (@ENTRY+14, 5094, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+14, 5097, 0, 209);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+14, 5098, 0, @OFFSET+2);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+14, 5095, 0, @OFFSET+3);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+14 WHERE `entry` = 4160; -- Adds gossip menu to Ainethil (Artisan Alchemist)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4160);

-- Master (teaching Artisan)
-- Kylanna Windwhisper (7948)
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5104, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5105, 0, 209);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5106, 0, @OFFSET+3);				-- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+15 WHERE `entry` = 7948; -- Adds gossip menu to Kylanna (Master Alchemist)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 7948);

-- -------------
-- Horde
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Alchemist' WHERE `entry` = 1386;	-- Rogvar was Master Alchemist in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Carolai Anise (2132)
INSERT INTO `gossip_menu` VALUES (@ENTRY+17, 5043, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+17, 5044, 0, 209);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+17, 5045, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+17 WHERE `entry` = 2132; -- Adds gossip menu to Carolai Anise
-- Doctor Martin Felben (11044)
INSERT INTO `gossip_menu` VALUES (@ENTRY+10, 5046, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+10, 5047, 0, 209);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+10, 5048, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+10 WHERE `entry` = 11044; -- Adds gossip menu to Doctor Martin Felben
-- Kray (11047)
INSERT INTO `gossip_menu` VALUES (@ENTRY+18, 5040, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+18, 5041, 0, 209);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+18, 5042, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+18 WHERE `entry` = 11047; -- Adds gossip menu to Kray
-- Miao'zan (3184)
INSERT INTO `gossip_menu` VALUES (@ENTRY+19, 5034, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+19, 5035, 0, 209);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+19, 5036, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+19 WHERE `entry` = 3184; -- Adds gossip menu to Miao'zan
-- Whuut (11046)
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 5037, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 5038, 0, 209);						-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 5039, 0, @OFFSET+1);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+8 WHERE `entry` = 11046; -- Adds gossip menu to Whuut
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (2132, 11044, 11047, 3184, 11046));

-- Expert (teaching Journeyman)
-- Bena Winterhoof (3009)
INSERT INTO `gossip_menu` VALUES (@ENTRY+21, 5079, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+21, 5081, 0, 209);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+21, 5080, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+21, 5083, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+21 WHERE `entry` = 3009; -- Adds gossip menu to Bena Winterhoof
-- Doctor Marsh (4609)
INSERT INTO `gossip_menu` VALUES (@ENTRY+23, 5089, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+23, 5092, 0, 209);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+23, 5093, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+23, 5090, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+23 WHERE `entry` = 4609; -- Adds gossip menu to Doctor Marsh
-- Serge Hinott (2391)
INSERT INTO `gossip_menu` VALUES (@ENTRY+20, 5084, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+20, 5087, 0, 209);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+20, 5088, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+20, 5085, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+20 WHERE `entry` = 2391; -- Adds gossip menu to Serge Hinott
-- Yelmak (3347)
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5069, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5072, 0, 209);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5073, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5070, 0, @OFFSET+2);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+16 WHERE `entry` = 3347; -- Adds gossip menu to Yelmak
-- Jaxing Chong (2837)
-- INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5074, 0, 0);						-- Player too low level / does not have the right skill
-- INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5075, 0, @OFFSET+1);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5513, 0, @OFFSET+4);					-- Player too high level and Horde player
-- UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+12 WHERE `entry` = 2837; -- Adds gossip menu to Jaxing Chong
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3009, 4609, 2391, 3347));

-- Artisan (teaching Expert)
-- Doctor Herbert Halsey (4611)
INSERT INTO `gossip_menu` VALUES (@ENTRY+22, 5099, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+22, 5102, 0, 209);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+22, 5103, 0, @OFFSET+2);				-- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+22, 5100, 0, @OFFSET+3);				-- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+22 WHERE `entry` = 4611; -- Adds gossip menu to Doctor Herbert Halsey (Artisan Alchemist)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4611);

-- Master (teaching Artisan)
-- Rogvar (1386)
INSERT INTO `gossip_menu` VALUES (@ENTRY+24, 5108, 0, 0);						-- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+24, 5111, 0, 209);						-- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+24, 5110, 0, @OFFSET+3);				-- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+24 WHERE `entry` = 1386; -- Adds gossip menu to Rogvar (Master Alchemist)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 1386);
