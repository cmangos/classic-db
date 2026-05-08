-- Improve Situation with potentially empty Lockboxes
-- Resolves https://github.com/cmangos/issues/issues/4049

-- Ornate Bronze Lockbox 4632
UPDATE `item_loot_template` SET `groupid` = 2 WHERE `entry` = 4632 AND `item` = 60443; -- NPC LOOT (White World Drop) - (Item Levels: 25 (10 Slot Bag)) - (NPC Levels: 21-30)
UPDATE `item_loot_template` SET `groupid` = 1 WHERE `entry` = 4632 AND `item` != 60443;

-- Heavy Bronze Lockbox 4633
UPDATE `item_loot_template` SET `groupid` = 2 WHERE `entry` = 4633 AND `item` = 60443; -- NPC LOOT (White World Drop) - (Item Levels: 25 (10 Slot Bag)) - (NPC Levels: 21-30)
UPDATE `item_loot_template` SET `groupid` = 1 WHERE `entry` = 4633 AND `item` != 60443;

-- Iron Lockbox 4634
UPDATE `item_loot_template` SET `groupid` = 2 WHERE `entry` = 4634 AND `item` = 60444; -- NPC LOOT (White World Drop) - (Item Levels: 35 (12 Slot Bag)) - (NPC Levels: 31-40)
UPDATE `item_loot_template` SET `groupid` = 1 WHERE `entry` = 4634 AND `item` != 60444;

-- Strong Iron Lockbox 4636
UPDATE `item_loot_template` SET `groupid` = 2 WHERE `entry` = 4636 AND `item` = 60444; -- NPC LOOT (White World Drop) - (Item Levels: 35 (12 Slot Bag)) - (NPC Levels: 31-40)
UPDATE `item_loot_template` SET `groupid` = 1 WHERE `entry` = 4636 AND `item` != 60444;

-- Steel Lockbox 4637
UPDATE `item_loot_template` SET `groupid` = 2 WHERE `entry` = 4637 AND `item` = 60445; -- NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)
UPDATE `item_loot_template` SET `groupid` = 1 WHERE `entry` = 4637 AND `item` != 60445;

-- Reinforced Steel Lockbox 4638
UPDATE `item_loot_template` SET `groupid` = 2 WHERE `entry` = 4638 AND `item` = 60445; -- NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)
UPDATE `item_loot_template` SET `groupid` = 1 WHERE `entry` = 4638 AND `item` != 60445;

-- Mithril Lockbox 5758
UPDATE `item_loot_template` SET `groupid` = 2 WHERE `entry` = 5758 AND `item` IN (4500,3914); -- Traveler's Backpack & Journeyman's Backpack
UPDATE `item_loot_template` SET `groupid` = 1 WHERE `entry` = 5758 AND `item` NOT IN (4500,3914);

-- Thorium Lockbox 5759
UPDATE `item_loot_template` SET `groupid` = 2 WHERE `entry` = 5759 AND `item` IN (4500,3914); -- Traveler's Backpack & Journeyman's Backpack
UPDATE `item_loot_template` SET `groupid` = 1 WHERE `entry` = 5759 AND `item` NOT IN (4500,3914);

-- Eternium Lockbox 5760
UPDATE `item_loot_template` SET `groupid` = 1 WHERE `entry` = 5760 AND `item` NOT IN (4500,3914); -- has no bags

