-- Removed wrong spawns of NPC 5890 (Redrock Earth Spirit) in Mulgore
-- There should be three small spirits in Durotar and Mulgore for the shaman quest "Call of the Earth".
-- There are only two each that are working as intended, plus three additional bugged ones in Mulgore. 
-- The bugged ones are visible to every class/race without having used the quest item.
-- This closes #870
DELETE FROM creature_movement WHERE id IN (12171, 12172, 12174);
DELETE FROM creature_addon WHERE guid IN (12171, 12172, 12174);

UPDATE creature SET position_x = -871.526611, position_y = -4305.858398, position_z = 76.024391, spawndist = 5, MovementType = 1 WHERE guid = 12171;
UPDATE creature SET position_x = -2999.831543, position_y = -727.160217, position_z = 44.981197, spawndist = 20, MovementType = 1 WHERE guid = 12172;
DELETE FROM creature WHERE guid = 12174;
