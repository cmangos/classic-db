-- Xen'to 3400
-- Vendor list corrected 
-- until 2.4.3
UPDATE npc_vendor SET Slot = 1 WHERE entry = 3400 AND item = 159; -- Refreshing Spring Water
UPDATE npc_vendor SET Slot = 2 WHERE entry = 3400 AND item = 30817; -- Simple Flour - doesnt exist in classic but doesnt matter
UPDATE npc_vendor SET Slot = 3 WHERE entry = 3400 AND item = 2678; -- Mild Spices
UPDATE npc_vendor SET Slot = 4 WHERE entry = 3400 AND item = 2692; -- Hot Spices
UPDATE npc_vendor SET Slot = 5 WHERE entry = 3400 AND item = 3713; -- Soothing Spices
UPDATE npc_vendor SET Slot = 6 WHERE entry = 3400 AND item = 21099; -- Recipe: Smoked Sagefish
UPDATE npc_vendor SET Slot = 7 WHERE entry = 3400 AND item = 21219; -- Recipe: Sagefish Delight

