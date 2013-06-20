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

SET @OFFSET := 371;
SET @JOURNEYMAN := 50;
SET @EXPERT := 125;
SET @ARTISAN := 200;

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN @OFFSET+1 AND @OFFSET+5;
INSERT INTO `conditions` VALUES
-- (201, 7, 197, 1),                -- Tailoring Has skill
 (@OFFSET+1, 7, 197, @JOURNEYMAN),    -- Tailoring Journeyman
 (@OFFSET+2, 7, 197, @EXPERT),        -- Tailoring Expert
 (@OFFSET+3, 7, 197, @ARTISAN),        -- Tailoring Artisan
 (@OFFSET+4, -1, @OFFSET+2, 3),     -- Tailor Expert and Horde player
 (@OFFSET+5, -1, @OFFSET+2, 4);     -- Tailor Expert and Alliance player

-- ************************************************************
-- Tailoring
-- ************************************************************

-- Source: http://www.wowwiki.com/Tailoring_trainers?diff=400086&oldid=398010

SET @ENTRY := 4261;
SET @GAP := 4344;
-- These values was determined on the basis of gossip menus entries
-- already in database with text_id related to tailor training (they were not linked to a creature but one: 4261)
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN @ENTRY AND @ENTRY+9;
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN @GAP AND @GAP+12;

-- -------------
-- Alliance
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Tailor' WHERE `entry` = 11052;     -- Timothy Worthington was Master Tailor in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Eldrin (1103)
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5413, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5415, 0, 201);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+0, 5414, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+0 WHERE `entry` = 1103; -- Adds gossip menu to Eldrin
-- Lawrence Schneider (1300)
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5416, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5418, 0, 201);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+1, 5417, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+1 WHERE `entry` = 1300; -- Adds gossip menu to Lawrence Schneider 
-- Uthrar Threx (1703)
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5422, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5424, 0, 201);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+3, 5423, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+3 WHERE `entry` = 1703; -- Adds gossip menu to Uthrar Threx 
-- Trianna (11050)
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 5437, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 5439, 0, 201);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+8, 5438, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+8 WHERE `entry` = 11050; -- Adds gossip menu to Trianna
-- Grondal Moonbreeze (4193)
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5419, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5421, 0, 201);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+2, 5420, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+2 WHERE `entry` = 4193; -- Adds gossip menu to Grondal Moonbreeze
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1103, 1300, 1703, 11050, 4193));

-- Expert (teaching Journeyman)
-- Sellandus (5567)
INSERT INTO `gossip_menu` VALUES (@GAP+0, 5519, 0, 0);                          -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@GAP+0, 5522, 0, 201);                        -- Player too low level
INSERT INTO `gossip_menu` VALUES (@GAP+0, 5523, 0, @OFFSET+1);                  -- Player is right level
INSERT INTO `gossip_menu` VALUES (@GAP+0, 5520, 0, @OFFSET+2);                  -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @GAP+0 WHERE `entry` = 5567;  -- Adds gossip menu to Sellandus
-- Jormund Stonebrow (5153)
INSERT INTO `gossip_menu` VALUES (@GAP+1, 5524, 0, 0);                          -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@GAP+1, 5527, 0, 201);                        -- Player too low level
INSERT INTO `gossip_menu` VALUES (@GAP+1, 5528, 0, @OFFSET+1);                  -- Player is right level
INSERT INTO `gossip_menu` VALUES (@GAP+1, 5525, 0, @OFFSET+2);                  -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @GAP+1 WHERE `entry` = 5153;  -- Adds gossip menu to Jormund Stonebrow
-- Me'lynn (4159)
INSERT INTO `gossip_menu` VALUES (@GAP+5, 5540, 0, 0);                          -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@GAP+5, 5543, 0, 201);                        -- Player too low level
INSERT INTO `gossip_menu` VALUES (@GAP+5, 5544, 0, @OFFSET+1);                  -- Player is right level
INSERT INTO `gossip_menu` VALUES (@GAP+5, 5541, 0, @OFFSET+2);                  -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @GAP+5 WHERE `entry` = 4159;  -- Adds gossip menu to Me'lynn
-- Grarnik Goodstich (2627)
INSERT INTO `gossip_menu` VALUES (@GAP+4, 5535, 0, 0);                          -- Player too low level / does not have the right skill
INSERT INTO `gossip_menu` VALUES (@GAP+4, 5539, 0, @OFFSET+1);                  -- Player is right level
INSERT INTO `gossip_menu` VALUES (@GAP+4, 5833, 0, @OFFSET+5);                  -- Player too high level and Alliance
UPDATE `creature_template` SET `gossip_menu_id` = @GAP+3 WHERE `entry` = 2627;  -- Adds gossip menu to Grarnik Goodstich
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (5567, 5153, 4159, 2627));

-- Artisan (teaching Expert)
-- Georgio Bolero (1346)
INSERT INTO `gossip_menu` VALUES (@GAP+9, 5561, 0, 0);                          -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@GAP+9, 5564, 0, 201);                        -- Player too low level
INSERT INTO `gossip_menu` VALUES (@GAP+9, 5565, 0, @OFFSET+2);                  -- Player is right level
INSERT INTO `gossip_menu` VALUES (@GAP+9, 5562, 0, @OFFSET+3);                  -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @GAP+9 WHERE `entry` = 1346;  -- Adds gossip menu to Georgio Bolero
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 1346);

-- Master (teaching Artisan)
-- Timothy Worthington (11052)
INSERT INTO `gossip_menu` VALUES (@GAP+11, 5571, 0, 0);                          -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@GAP+11, 5574, 0, 201);                        -- Player too low level
INSERT INTO `gossip_menu` VALUES (@GAP+11, 5573, 0, @OFFSET+3);                  -- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = @GAP+11 WHERE `entry` = 11052; -- Adds gossip menu to Timothy Worthington (Master Tailor)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11052);

-- -------------
-- Horde
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Tailor' WHERE `entry` = 2399;  -- Daryl Stack was Master Tailor in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Bowen Brisboise (3523)
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 5431, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 5433, 0, 201);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+6, 5432, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+6 WHERE `entry` = 3523; -- Adds gossip menu to Bowen Brisboise
-- Victor Ward (11048)
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5434, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5436, 0, 201);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+7, 5435, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+7 WHERE `entry` = 11048; -- Adds gossip menu to Victor Ward
-- Snarg (2855)
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5425, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5427, 0, 201);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+4, 5426, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+4 WHERE `entry` = 2855; -- Adds gossip menu to Snarg
-- Vhan (11051)
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 5428, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 5430, 0, 201);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+5, 5429, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+5 WHERE `entry` = 11051; -- Adds gossip menu to Vhan
-- Kil'hala (3484)
INSERT INTO `gossip_menu` VALUES (@ENTRY+9, 5440, 0, 0);                        -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@ENTRY+9, 5442, 0, 201);                      -- Player is right level
INSERT INTO `gossip_menu` VALUES (@ENTRY+9, 5441, 0, @OFFSET+1);                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @ENTRY+9 WHERE `entry` = 3484; -- Adds gossip menu to Kil'hala
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3523, 11048, 2855, 11051, 3484));

-- Expert (teaching Journeyman)
-- Rhiannon Davis (11049)
INSERT INTO `gossip_menu` VALUES (@GAP+8, 5556, 0, 0);                          -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@GAP+8, 5559, 0, 201);                        -- Player too low level
INSERT INTO `gossip_menu` VALUES (@GAP+8, 5560, 0, @OFFSET+1);                  -- Player is right level
INSERT INTO `gossip_menu` VALUES (@GAP+8, 5557, 0, @OFFSET+2);                  -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @GAP+8 WHERE `entry` = 11049; -- Adds gossip menu to Rhiannon Davis
-- Magar (3363)
INSERT INTO `gossip_menu` VALUES (@GAP+3, 5530, 0, 0);                          -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@GAP+3, 5533, 0, 201);                        -- Player too low level
INSERT INTO `gossip_menu` VALUES (@GAP+3, 5534, 0, @OFFSET+1);                  -- Player is right level
INSERT INTO `gossip_menu` VALUES (@GAP+3, 5531, 0, @OFFSET+2);                  -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @GAP+3 WHERE `entry` = 3363;  -- Adds gossip menu to Magar
-- Tepa (3004)
INSERT INTO `gossip_menu` VALUES (@GAP+7, 5551, 0, 0);                          -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@GAP+7, 5554, 0, 201);                        -- Player too low level
INSERT INTO `gossip_menu` VALUES (@GAP+7, 5555, 0, @OFFSET+1);                  -- Player is right level
INSERT INTO `gossip_menu` VALUES (@GAP+7, 5552, 0, @OFFSET+2);                  -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @GAP+7 WHERE `entry` = 3004;  -- Adds gossip menu to Tepa
-- Mahani (3704)
INSERT INTO `gossip_menu` VALUES (@GAP+6, 5545, 0, 0);                          -- Player too low level / does not have the right skill
INSERT INTO `gossip_menu` VALUES (@GAP+6, 5549, 0, @OFFSET+1);                  -- Player is right level
INSERT INTO `gossip_menu` VALUES (@GAP+6, 5546, 0, @OFFSET+2);                  -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @GAP+6 WHERE `entry` = 3704;  -- Adds gossip menu to Mahani
-- Grarnik Goodstich (2627)
-- INSERT INTO `gossip_menu` VALUES (@GAP+4, 5535, 0, 0);                       -- Player too low level / does not have the right skill
-- INSERT INTO `gossip_menu` VALUES (@GAP+4, 5539, 0, @OFFSET+1);               -- Player is right level
INSERT INTO `gossip_menu` VALUES (@GAP+4, 5536, 0, @OFFSET+4);                  -- Player too high level and Horde
-- UPDATE `creature_template` SET `gossip_menu_id` = @GAP+4 WHERE `entry` = 2627; -- Adds gossip menu to Grarnik Goodstich
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (11049, 3363, 3004, 3704));

-- Artisan (teaching Expert)
-- Josef Gregorian (4576)
INSERT INTO `gossip_menu` VALUES (@GAP+10, 5566, 0, 0);                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@GAP+10, 5569, 0, 201);                       -- Player too low level
INSERT INTO `gossip_menu` VALUES (@GAP+10, 5570, 0, @OFFSET+2);                 -- Player is right level
INSERT INTO `gossip_menu` VALUES (@GAP+10, 5567, 0, @OFFSET+3);                 -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = @GAP+10 WHERE `entry` = 4576; -- Adds gossip menu to Josef Gregorian
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4576);

-- Master (teaching Artisan)
-- Daryl Stack (2399)
INSERT INTO `gossip_menu` VALUES (@GAP+12, 5575, 0, 0);                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (@GAP+12, 5578, 0, 201);                       -- Player too low level
INSERT INTO `gossip_menu` VALUES (@GAP+12, 5577, 0, @OFFSET+3);                 -- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = @GAP+12 WHERE `entry` = 2399; -- Adds gossip menu to Daryl Stack (Master Tailor)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 2399);
