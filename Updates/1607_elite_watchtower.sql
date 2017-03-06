
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('5848', '8504', '0', '0', '0', '-6631.35', '-1232.93', '209.808', '1.37082', '500', '0', '0', '1', '0', '0', '0');

UPDATE `creature` SET `id`=8504 WHERE `guid` IN (5777, 5846, 6830, 6831, 6832);

UPDATE creature, creature_template SET creature.curhealth = creature_template.MinLevelHealth, creature.curmana = creature_template.MinLevelMana WHERE creature.id = creature_template.entry AND creature_template.RegenerateStats & 1;
