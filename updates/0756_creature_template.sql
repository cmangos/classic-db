--Setting the movement type to waypoint based for npc #3562
--
UPDATE `creature_template` 
SET `MovementType`= 2
WHERE `Entry` = 3562;
