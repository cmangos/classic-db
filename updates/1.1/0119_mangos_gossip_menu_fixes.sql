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

SET @OFFSET := 365;
SET @JOURNEYMAN := 50;
SET @EXPERT := 125;
SET @ARTISAN := 200;

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN @OFFSET+1 AND @OFFSET+3;
INSERT INTO `conditions` VALUES
-- (198, 7, 164, 1),                  -- Blacksmithing Has skill
 (@OFFSET+1, 7, 164, @JOURNEYMAN),    -- Blacksmithing Journeyman
 (@OFFSET+2, 7, 164, @EXPERT),        -- Blacksmithing Expert
 (@OFFSET+3, 7, 164, @ARTISAN);       -- Blacksmithing Artisan


-- ************************************************************
-- Blacksmithing
-- ************************************************************

-- Source: http://www.wowwiki.com/Blacksmithing_trainers?diff=353463&oldid=326118

SET @ENTRY := 2741;
-- This value was determined on the basis of gossip menus entries
-- already in database with text_id related to blacksmith training (they were not linked to a creature)
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN @ENTRY AND @ENTRY+43;

-- -------------
-- Alliance
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Weaponsmith' WHERE `entry` = 11146;      -- Ironus Coldsteel was Master Weaponsmith in classic and the only one able to teach artisan
UPDATE `creature_template` SET `subname` = 'Master Armorsmith' WHERE `entry` = 5164;        -- Grumnus Steelshaper was Master Armorsmith in classic and the only one able to teach artisan
UPDATE `creature_template` SET `subname` = 'Master Blacksmith' WHERE `entry` = 2836;        -- Brikk Keencraft was Master Blacksmith in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Dane Lindgren (957)
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 3406, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 3407, 0, 198);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 3408, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+4 WHERE `entry` = 957; -- Adds gossip menu to Dane Lindgren
-- Delfrum Flintbeard (6299)
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 3398, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 3399, 0, 198);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 3401, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+2 WHERE `entry` = 6299; -- Adds gossip menu to Delfrum Flintbeard 
-- Groum Stonebeard (10277)
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 3398, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 3399, 0, 198);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 3400, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+1 WHERE `entry` = 10277; -- Adds gossip menu to Groum Stonebeard
-- Smith Argus (514)
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 3405, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 3403, 0, 198);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 3404, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+3 WHERE `entry` = 514; -- Adds gossip menu to Smith Argus
-- Tognus Flintfire (1241)
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 3395, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 3396, 0, 198);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 3397, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+0 WHERE `entry` = 1241; -- Adds gossip menu to Tognus Flintfire 
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (957, 6299, 10277, 514, 1241));

-- Expert (teaching Journeyman)
-- Clarise Gnarltree (3136)
INSERT INTO `gossip_menu` VALUES (@ENTRY+40, 3461, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+40, 3462, 0, 198);                      -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+40, 3464, 0, @OFFSET+1);                -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+40, 3465, 0, @OFFSET+2);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+40 WHERE `entry` = 3136; -- Adds gossip menu to Clarise Gnarltree
-- Rotgath Stonebeard (10276)
INSERT INTO `gossip_menu` VALUES (@ENTRY+20, 3456, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+20, 3457, 0, 198);                      -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+20, 3459, 0, @OFFSET+1);                -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+20, 3460, 0, @OFFSET+2);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+20 WHERE `entry` = 10276; -- Adds gossip menu to Rotgath Stonebeard
-- Therum Deepforge (5511)
INSERT INTO `gossip_menu` VALUES (@ENTRY+19, 3456, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+19, 3453, 0, 198);                      -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+19, 3459, 0, @OFFSET+1);                -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+19, 3454, 0, @OFFSET+2);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+19 WHERE `entry` = 5511; -- Adds gossip menu to Therum Deepforge
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3136, 10276, 5511));

-- Artisan (teaching Expert)
-- Bengus Deepforge (4258)
INSERT INTO `gossip_menu` VALUES (@ENTRY+21, 1261, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+21, 3482, 0, 198);                      -- Player is too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+21, 1262, 0, @OFFSET+2);                -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+21, 3484, 0, @OFFSET+3);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+21 WHERE `entry` = 4258; -- Adds gossip menu to Bengus Deepforge
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4258);

-- Master (teaching Artisan)
-- Grumnus Steelshaper (Ironforge) [Armorsmith]
-- Ironus Coldsteel (Ironforge) [Weaponsmith]
-- Brikk Keencraft (2836)
INSERT INTO `gossip_menu` VALUES (@ENTRY+43, 3488, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+43, 3489, 0, 198);                      -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+43, 3490, 0, @OFFSET+3);                -- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+43 WHERE `entry` = 2836; -- Adds gossip menu to Brikk Keencraft (Master Blacksmith)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 2836);

-- -------------
-- Horde
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Weaponsmith' WHERE `entry` = 11178;  -- Borgosh Corebender was Master Weaponsmith in classic and the only one able to teach artisan
UPDATE `creature_template` SET `subname` = 'Master Armorsmith' WHERE `entry` = 11177;   -- Okothos Ironrager was Master Armorsmith in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Basil Frye (4605)
INSERT INTO `gossip_menu` VALUES (@ENTRY+9, 3421, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+9, 3422, 0, 198);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+9, 3423, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+9 WHERE `entry` = 4605; -- Adds gossip menu to Basil Frye
-- Dwukk (3174)
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 3409, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 3410, 0, 198);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 3411, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+5 WHERE `entry` = 3174; -- Adds gossip menu to Dwukk
-- Guillaume Sorouy (3557)
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 3418, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 3419, 0, 198);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 3420, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+8 WHERE `entry` = 3557; -- Adds gossip menu to Guillaume Sorouy
-- Thrag Stonehoof (10278)
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 3415, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 3416, 0, 198);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 3417, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+7 WHERE `entry` = 10278; -- Adds gossip menu to Thrag Stonehoof
-- Ug'thok (10266)
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 3412, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 3413, 0, 198);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 3414, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+6 WHERE `entry` = 10266; -- Adds gossip menu to Ug'thok
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (4605, 3174, 3557, 10278, 10266));

-- Expert (teaching Journeyman)
-- James Van Brunt (4596)
INSERT INTO `gossip_menu` VALUES (@ENTRY+22, 1619, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+22, 3479, 0, 198);                      -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+22, 1618, 0, @OFFSET+1);                -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+22, 3481, 0, @OFFSET+2);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+22 WHERE `entry` = 4596; -- Adds gossip menu to James Van Brunt
-- Karn Stonehoof (2998)
INSERT INTO `gossip_menu` VALUES (@ENTRY+23, 3471, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+23, 3476, 0, 198);                      -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+23, 3473, 0, @OFFSET+1);                -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+23, 3478, 0, @OFFSET+2);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+23 WHERE `entry` = 2998; -- Adds gossip menu to Karn Stonehoof
-- Snarl (1383)
INSERT INTO `gossip_menu` VALUES (@ENTRY+41, 3466, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+41, 3467, 0, 198);                      -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+41, 3468, 0, @OFFSET+1);                -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+41, 3470, 0, @OFFSET+2);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+41 WHERE `entry` = 1383; -- Adds gossip menu to Snarl
-- Traugh (3478)
INSERT INTO `gossip_menu` VALUES (@ENTRY+42, 3471, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+42, 3472, 0, 198);                      -- Player too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+42, 3473, 0, @OFFSET+1);                -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+42, 3475, 0, @OFFSET+2);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+42 WHERE `entry` = 3478; -- Adds gossip menu to Traugh
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (4596, 2998, 1383, 3478));

-- Artisan (teaching Expert)
-- Saru Steelfury (3355)
INSERT INTO `gossip_menu` VALUES (@ENTRY+24, 1606, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+24, 3485, 0, 198);                      -- Player is too low level
INSERT INTO `gossip_menu` VALUES (@ENTRY+24, 1605, 0, @OFFSET+2);                -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+24, 3487, 0, @OFFSET+3);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+24 WHERE `entry` = 3355; -- Adds gossip menu to Saru Steelfury
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 3355);

-- Master (teaching Artisan)
-- Okothos Ironrager (Orgrimmar) [Armorsmith]
-- Borgosh Corebender (Orgrimmar) [Weaponsmith]
-- Brikk Keencraft

