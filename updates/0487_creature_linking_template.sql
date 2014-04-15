-- Moved some linked creatures in Dire Maul West and Scholomance from creature_linking to creature_linking template

-- Ironbark Protectors (creature 11459) linked to Tendris Warpwood (creature 11459) in Dire Maul West
DELETE FROM `creature_linking` WHERE `master_guid` = 138115;
DELETE FROM `creature_linking_template` WHERE `entry` = 11459 AND `map` = 429;
INSERT INTO `creature_linking_template` VALUES (11459, 429, 11489, 1, 0);

-- Scholomance Student linked to Vectus and Marduck Blackpool in Scholomance
DELETE FROM `creature_linking` WHERE `master_guid` IN (48806, 48805);
-- Scholomance Student (10475) linked to Marduck (10433) 
DELETE FROM `creature_linking_template` WHERE `entry` = 10475 AND `map` = 289;
INSERT INTO `creature_linking_template` VALUES (10475, 289, 10433, 1, 0);
-- Marduck Blackpool (10433 and its linked NPCs 10475) linked to Vectus (10432)
DELETE FROM `creature_linking_template` WHERE `entry` = 10433 AND `map` = 289;
INSERT INTO `creature_linking_template` VALUES (10433, 289, 10432, 1, 0);
