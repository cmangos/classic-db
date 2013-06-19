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

SET @OFFSET := 360;
SET @JOURNEYMAN := 50;
SET @EXPERT := 125;
SET @ARTISAN := 200;

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN @OFFSET+1 AND @OFFSET+32;
INSERT INTO `conditions` VALUES
-- (202, 7, 202, 1),                  -- Engineering Has skill
 (@OFFSET+1, 7, 202, @JOURNEYMAN),    -- Engineering Journeyman
 (@OFFSET+2, 7, 202, @EXPERT),        -- Engineering Expert
 (@OFFSET+3, 7, 202, @ARTISAN),       -- Engineering Artisan
 (@OFFSET+4, -1, @OFFSET+1, 3),       -- Engineer Expert and Horde player
 (@OFFSET+5, -1, @OFFSET+1, 4);       -- Engineer Expert and Alliance player

-- ************************************************************
-- Engineering
-- ************************************************************

-- Source: http://www.wowwiki.com/Engineering_trainers?diff=400429&oldid=397971

SET @ENTRY := 4135;
-- This value was determined on the basis of gossip menus entries
-- already in database with text_id related to engineering training (they were not linked to a creature)
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN @ENTRY AND @ENTRY+17;

-- -------------
-- Alliance
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Engineer' WHERE `entry` = 8736;     -- Buzzek Bracketswing was Master Engineer in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Bronk Guzzlegear (1702)
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5112, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5114, 0, 202);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5113, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+0 WHERE `entry` = 1702; -- Adds gossip menu to Bronk Guzzlegear
-- Deek Fizzlebizz (3290)
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5115, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5117, 0, 202);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5116, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+1 WHERE `entry` = 3290; -- Adds gossip menu to Deek Fizzlebizz
-- Jemma Quikswitch    (11028)
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5118, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5120, 0, 202);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5119, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+2 WHERE `entry` = 11028; -- Adds gossip menu to Jemma Quikswitch
-- Jenna Lemkenilli    (11037)
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5121, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5123, 0, 202);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5122, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+3 WHERE `entry` = 11037; -- Adds gossip menu to Jenna Lemkenilli
-- Sprite Jumpsprocket (11026)
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5124, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5126, 0, 202);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5125, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+4 WHERE `entry` = 11026; -- Adds gossip menu to Sprite Jumpsprocket
-- Tinkerwiz (3494)
-- Same as Horde
-- Twizwick Sprocketgrind (11993)
-- Same as Horde
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1702, 3290, 11028, 11037, 11026));

 
-- Expert (teaching Journeyman)
-- Finbus Geargrind (1676)
INSERT INTO `gossip_menu` VALUES (@ENTRY+10, 5142, 0, 0);                       -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+10, 5145, 0, 202);                     -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+10, 5146, 0, @OFFSET+1);               -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+10, 5143, 0, @OFFSET+2);               -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+10 WHERE `entry` = 1676; -- Adds gossip menu to Finbus Geargrind
-- Disambigues next tier trainer gender in npc text
UPDATE `npc_text` SET `text0_0` = 'You\'re working your way up??? higher than me, at this point! You should talk to Springspindle Fizzlegear in Ironforge! He\'ll show you more than I ever could!' WHERE `id` = 5143;
-- Lilliam Sparkspindle    (5518)
INSERT INTO `gossip_menu` VALUES (@ENTRY+11, 5147, 0, 0);                       -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+11, 5150, 0, 202);                     -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+11, 5151, 0, @OFFSET+1);               -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+11, 5148, 0, @OFFSET+2);               -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+11 WHERE `entry` = 5518; -- Adds gossip menu to Lilliam Sparkspindle
-- Trixie Quikswitch (11029)
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5152, 0, 0);                       -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5155, 0, 202);                     -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5156, 0, @OFFSET+1);               -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+12, 5153, 0, @OFFSET+2);               -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+12 WHERE `entry` = 11029; -- Adds gossip menu to Trixie Quikswitch
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1676, 5518, 11029));

-- Artisan (teaching Expert)
-- Springspindle Fizzlegear (5174)
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5167, 0, 0);                       -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5170, 0, 202);                     -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5171, 0, @OFFSET+2);               -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+15, 5168, 0, @OFFSET+3);               -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+15 WHERE `entry` = 5174; -- Adds gossip menu to Springspindle Fizzlegear
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 5174);

-- Master (teaching Artisan)
-- Tinkmaster Overspark    <Master Gnome Engineer>    Tinker Town, Ironforge
-- Oglethorpe Obnoticus <Master Gnome Engineer>    Booty Bay, Stranglethorn Vale
-- Buzzek Bracketswing (8736)
INSERT INTO `gossip_menu` VALUES (@ENTRY+17, 5177, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+17, 5180, 0, 202);                      -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+17, 5179, 0, @OFFSET+3);                -- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+17 WHERE `entry` = 8736; -- Adds gossip menu to Buzzek Bracketswing
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 8736);

-- -------------
-- Horde
-- -------------

-- Various adjustements

-- Journeyman (teaching Apprentice)
-- Graham Van Talen    (4586)
INSERT INTO `gossip_menu` VALUES (@ENTRY+9, 5139, 0, 0);                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+9, 5141, 0, 202);                       -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+9, 5140, 0, @OFFSET+1);                 -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+9 WHERE `entry` = 4586; -- Adds gossip menu to Graham Van Talen
-- Mukdrak (11025)
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5133, 0, 0);                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5135, 0, 202);                       -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5134, 0, @OFFSET+1);                 -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+7 WHERE `entry` = 11025; -- Adds gossip menu to Mukdrak
-- Thund (2857)
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 5136, 0, 0);                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 5138, 0, 202);                       -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 5137, 0, @OFFSET+1);                 -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+8 WHERE `entry` = 2857; -- Adds gossip menu to Thund
-- Tinkerwiz (3494)
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 5127, 0, 0);                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 5129, 0, 202);                       -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 5131, 0, @OFFSET+4);                 -- Player too high level and is Horde
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 5128, 0, @OFFSET+5);                 -- Player too high level and is Alliance
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+5 WHERE `entry` = 3494; -- Adds gossip menu to Tinkerwiz
-- Twizwick Sprocketgrind (10993)
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 5130, 0, 0);                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 5129, 0, 202);                       -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 5131, 0, @OFFSET+4);                 -- Player too high level and is Horde
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 5128, 0, @OFFSET+5);                 -- Player too high level and is Alliance
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+6 WHERE `entry` = 10993; -- Adds gossip menu to Twizwick Sprocketgrind
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (4586, 11025, 2857, 3494, 11993));

-- Expert (teaching Journeyman)
-- Franklin Lloyd (11031)
INSERT INTO `gossip_menu` VALUES (@ENTRY+14, 5162, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+14, 5165, 0, 202);                      -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+14, 5164, 0, @OFFSET+1);                -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+14, 5163, 0, @OFFSET+2);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+14 WHERE `entry` = 11031; -- Adds gossip menu to Nogg
-- Nogg    (3412)
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5157, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5160, 0, 202);                      -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5161, 0, @OFFSET+1);                -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+13, 5158, 0, @OFFSET+2);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+13 WHERE `entry` = 3412; -- Adds gossip menu to Nogg
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (11031, 3412));

-- Artisan (teaching Expert)
-- Roxxik (11017)
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5172, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5175, 0, 202);                      -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5176, 0, @OFFSET+2);                -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+16, 5173, 0, @OFFSET+3);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+16 WHERE `entry` = 11017; -- Adds gossip menu to Roxxik
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11017);

-- Master (teaching Artisan)
-- Oglethorpe Obnoticus     <Master Gnome Engineer>    Booty Bay, Stranglethorn Vale
-- Nixx Sprocketspring     <Master Goblin Engineer>    Gadgetzan, Tanaris
-- Vazario Linkgrease     <Master Goblin Engineer>    Ratchet, Barrens
-- Buzzek Bracketswing
-- Same as Alliance
