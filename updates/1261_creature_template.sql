-- Updating Vendor-tron and Super-seller movement to stationary
UPDATE `creature_template` SET `MovementType`=0 WHERE `entry`=12245;
UPDATE `creature_template` SET `MovementType`=0 WHERE `entry`=12246;

-- Clean-up
UPDATE `creature`, `creature_template` SET creature.curhealth = creature_template.MinLevelHealth,creature.curmana = creature_template.MinLevelMana WHERE creature.id = creature_template.entry AND creature_template.RegenerateStats = 1;
