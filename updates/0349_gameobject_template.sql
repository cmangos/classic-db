-- Updated radius of gameobject 103661 (Witherbark Totem Bundle Trap) in order to fix quest 1984 (Items of Power)
-- by allowing players to trigger it.
-- This fixes the quest and make it completable. However, the quest is not blizzlike
-- as the gameobject should cast or be targeted by spell 10387 (Lightning Surge)
-- and then disappears when spell 9056 (Bolt Charge Bramble) is casted.
UPDATE `gameobject_template` SET `data2` = 40, `faction` = 114 WHERE `entry` = 103661;
