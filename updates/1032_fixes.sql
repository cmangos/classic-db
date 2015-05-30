-- Fixed stats of some spawned creatures in Blackrock Spire and Felwood after [1020] and [1024]
UPDATE creature, creature_template SET creature.curhealth = creature_template.MinLevelHealth, creature.curmana = creature_template.MinLevelMana WHERE creature.id = creature_template.entry AND creature_template.RegenerateStats & 1;

-- Fixed typo in quest ID in [1024]
UPDATE `conditions` SET `value1` = 5203 WHERE `condition_entry` = 333;

-- Added missing cleanup from [1027]
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 10196;

-- Fixed missing model from [1031]
UPDATE `creature_template` SET `ModelId1` = 15294 WHERE `Entry` = 15730;
