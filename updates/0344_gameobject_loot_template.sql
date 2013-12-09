-- Fixed gameobject 21227 (Crate with Holes), 21530 (Snufflenose Owner's Manual),
-- and 68865 (Snufflenose Command Sticks) for quest 1221 (Blueleaf Tubers) as
-- they were containing all the quest items instead of only the ones they are related to
DELETE FROM `gameobject_loot_template` WHERE `entry` = 3450 AND `item` IN (5897, 6684); -- Crate with Holes
DELETE FROM `gameobject_loot_template` WHERE `entry` = 3502 AND `item` IN (5880, 6684); -- Snufflenose Owner's Manual
DELETE FROM `gameobject_loot_template` WHERE `entry` = 4059 AND `item` IN (5880, 5897); -- Snufflenose Command Sticks
