-- https://github.com/mangosone/database/commit/fc205c3aab58fa32e46529201f094770a84e0bee

-- https://www.wowhead.com/quest=766/mazzranache#comments
-- some npcs might not drop questitems at all, not changing that for now due to lack of data
-- Update drop rate of Prarie Wolf Heart to 7 percent 9 percent 10 percent for droppers for Quest Mazzranche
UPDATE creature_loot_template SET ChanceOrQuestChance = -7 WHERE item = 4804 AND entry = 2958; -- Prairie Wolf
UPDATE creature_loot_template SET ChanceOrQuestChance = -9 WHERE item = 4804 AND entry = 2959; -- Prairie Stalker
UPDATE creature_loot_template SET ChanceOrQuestChance = -10 WHERE item = 4804 AND entry = 2960; -- Prairie Wolf Alpha
-- Update drop rate of Flatland Cougar Femur for Quest Mazzranche to correct 7 percent - https://www.wowhead.com/item=4805/flatland-cougar-femur#comments:id=139205
UPDATE creature_loot_template SET ChanceOrQuestChance = -7 WHERE item = 4805 AND entry = 3035; -- Flatland Cougar
-- Update drop rate of Plainstrider Scale to 6 percent 8 percent 9 percent for droppers for Quest Mazzranche - https://web.archive.org/web/20130407033522/https://www.wowhead.com/item=4806
UPDATE creature_loot_template SET ChanceOrQuestChance = -4 WHERE item = 4806 AND entry = 2955; -- Plainstrider
UPDATE creature_loot_template SET ChanceOrQuestChance = -6 WHERE item = 4806 AND entry = 2956; -- Adult Plainstrider
UPDATE creature_loot_template SET ChanceOrQuestChance = -8 WHERE item = 4806 AND entry = 2957; -- Elder Plainstrider
UPDATE creature_loot_template SET ChanceOrQuestChance = -9 WHERE item = 4806 AND entry = 3068; -- Mazzranache
UPDATE creature_loot_template SET ChanceOrQuestChance = -10 WHERE item = 4806 AND entry = 3244; -- Greater Plainstrider
UPDATE creature_loot_template SET ChanceOrQuestChance = -15 WHERE item = 4806 AND entry = 3245; -- Ornery Plainstrider
UPDATE creature_loot_template SET ChanceOrQuestChance = -11 WHERE item = 4806 AND entry = 3246; -- Fleeting Plainstrider
-- Update drop rate of Swoop Gizzard to 5%,7%,8% from respective droppers for Quest Mazzranche
UPDATE creature_loot_template SET ChanceOrQuestChance = -5 WHERE item = 4807 AND entry = 2969; -- Wiry Swoop
UPDATE creature_loot_template SET ChanceOrQuestChance = -7 WHERE item = 4807 AND entry = 2970; -- Swoop
UPDATE creature_loot_template SET ChanceOrQuestChance = -8 WHERE item = 4807 AND entry = 2971; -- Taloned Swoop

-- Fix Lord Melenas spawn point. (Credit: Trinitycore)
DELETE FROM creature WHERE id = 2038;
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(1550, 2038, 1, 10107.08, 1206.241, 1311.55, 4.468043, 300, 300, 0, 0),
(1551, 2038, 1, 10127.8, 1202.00, 1323.30, 3.01113, 300, 300, 0, 0),
(1552, 2038, 1, 10127.3, 1125.23, 1338.11, 3.58055, 300, 300, 0, 0);
DELETE FROM pool_template WHERE entry = 1201;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(1201, 1, 'Lord Melenas (2038)');
DELETE FROM `pool_creature_template` WHERE `pool_entry` = 1201;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(2038, 1201, 0, 'Lord Melenas (2038)');

-- Correct Ashenvale Outrunner 12856 due to aura 20540
UPDATE creature_template SET SpeedWalk= (2.5 / 2.5), SpeedRun = (8 / 7) WHERE entry = 12856;
