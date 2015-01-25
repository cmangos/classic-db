-- Linked NPC 12225 (Celebras the Cursed) with its 3 adds 13743 (Corrupt Force of Nature) in Maraudon
-- The adds will engage along with their master, respawn when it evades, despawn when it dies
DELETE FROM `creature_linking_template` WHERE `entry` = 13743;
INSERT `creature_linking_template` VALUES
(13743, 349, 12225, 1 + 2 + 4 + 16, 0);
