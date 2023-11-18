-- Innkeeper Skindle 6807
-- UPDATE gossip_menu_option SET id = 1 WHERE menu_id = 349 AND id = 3; -- 0,1,2,4
-- vendor list corrected
-- vendor list corrected
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (5814,6727,6791,6807,8137,8931,14731) AND item = 787; -- Slitherskin Mackerel
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (5814,6727,6791,6807,8137,8931,14731) AND item = 4592; -- Longjaw Mud Snapper
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (5814,6727,6791,6807,8137,8931,14731) AND item = 4593; -- Bristle Whisker Catfish
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (5814,6727,6791,6807,8137,8931,14731) AND item = 4594; -- Rockscale Cod
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (5814,6727,6791,6807,8137,8931,14731) AND item = 21552; -- Striped Yellowtail
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (5814,6727,6791,6807,8137,8931,14731) AND item = 8957; -- Spinefin Halibut
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (5814,6727,6791,6807,8137,8931,14731) AND item = 159; -- Refreshing Spring Water
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (5814,6727,6791,6807,8137,8931,14731) AND item = 1179; -- Ice Cold Milk
UPDATE npc_vendor SET Slot = 9 WHERE entry IN (5814,6727,6791,6807,8137,8931,14731) AND item = 1205; -- Melon Juice
UPDATE npc_vendor SET Slot = 10 WHERE entry IN (5814,6727,6791,6807,8137,8931,14731) AND item = 1708; -- Sweet Nectar
UPDATE npc_vendor SET Slot = 11 WHERE entry IN (5814,6727,6791,6807,8137,8931,14731) AND item = 1645; -- Moonberry Juice
UPDATE npc_vendor SET Slot = 12 WHERE entry IN (5814,6727,6791,6807,8137,8931,14731) AND item = 8766; -- Morning Glory Dew

-- Gikkix
UPDATE `npc_vendor` SET `slot`=7 WHERE `entry`=8137 && `item`=159; -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=1 WHERE `entry`=8137 && `item`=787; -- Slitherskin Mackerel
UPDATE `npc_vendor` SET `slot`=8 WHERE `entry`=8137 && `item`=1179; -- Ice Cold Milk
UPDATE `npc_vendor` SET `slot`=9 WHERE `entry`=8137 && `item`=1205; -- Melon Juice
UPDATE `npc_vendor` SET `slot`=11 WHERE `entry`=8137 && `item`=1645; -- Moonberry Juice
UPDATE `npc_vendor` SET `slot`=10 WHERE `entry`=8137 && `item`=1708; -- Sweet Nectar
UPDATE `npc_vendor` SET `slot`=2 WHERE `entry`=8137 && `item`=4592; -- Longjaw Mud Snapper
UPDATE `npc_vendor` SET `slot`=3 WHERE `entry`=8137 && `item`=4593; -- Bristle Whisker Catfish
UPDATE `npc_vendor` SET `slot`=4 WHERE `entry`=8137 && `item`=4594; -- Rockscale Cod
UPDATE `npc_vendor` SET `slot`=12 WHERE `entry`=8137 && `item`=8766; -- Morning Glory Dew
UPDATE `npc_vendor` SET `slot`=6 WHERE `entry`=8137 && `item`=8957; -- Spinefin Halibut
UPDATE `npc_vendor` SET `slot`=13 WHERE `entry`=8137 && `item`=13939; -- Recipe: Spotted Yellowtail
UPDATE `npc_vendor` SET `slot`=14 WHERE `entry`=8137 && `item`=13942; -- Recipe: Grilled Squid
UPDATE `npc_vendor` SET `slot`=16 WHERE `entry`=8137 && `item`=13945; -- Recipe: Nightfin Soup
UPDATE `npc_vendor` SET `slot`=15 WHERE `entry`=8137 && `item`=13946; -- Recipe: Poached Sunscale Salmon
UPDATE `npc_vendor` SET `slot`=5 WHERE `entry`=8137 && `item`=21552; -- Striped Yellowtail

-- Lard
UPDATE `npc_vendor` SET `slot`=7 WHERE `entry`=14731 && `item`=159; -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=1 WHERE `entry`=14731 && `item`=787; -- Slitherskin Mackerel
UPDATE `npc_vendor` SET `slot`=8 WHERE `entry`=14731 && `item`=1179; -- Ice Cold Milk
UPDATE `npc_vendor` SET `slot`=9 WHERE `entry`=14731 && `item`=1205; -- Melon Juice
UPDATE `npc_vendor` SET `slot`=11 WHERE `entry`=14731 && `item`=1645; -- Moonberry Juice
UPDATE `npc_vendor` SET `slot`=10 WHERE `entry`=14731 && `item`=1708; -- Sweet Nectar
UPDATE `npc_vendor` SET `slot`=2 WHERE `entry`=14731 && `item`=4592; -- Longjaw Mud Snapper
UPDATE `npc_vendor` SET `slot`=3 WHERE `entry`=14731 && `item`=4593; -- Bristle Whisker Catfish
UPDATE `npc_vendor` SET `slot`=4 WHERE `entry`=14731 && `item`=4594; -- Rockscale Cod
UPDATE `npc_vendor` SET `slot`=12 WHERE `entry`=14731 && `item`=8766; -- Morning Glory Dew
UPDATE `npc_vendor` SET `slot`=6 WHERE `entry`=14731 && `item`=8957; -- Spinefin Halibut
UPDATE `npc_vendor` SET `slot`=5 WHERE `entry`=14731 && `item`=21552; -- Striped Yellowtail

