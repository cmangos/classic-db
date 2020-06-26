-- Fix speed of Highlord Bolvar Fordragon and Reginald Windsor
UPDATE creature_template SET SpeedWalk=1 WHERE Entry IN (1748, 12580);

-- Fix waypoints and scripts for NPC 12581 (Mercutio), Windsor's steed
DELETE FROM creature_movement_template WHERE entry=12581;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUES
(12581, 0, 1, -9049.96, 446.152, 93.056, 0.365, 500, 5, 'Mercutio - Run ON (Generic)'),
(12581, 0, 2, -9049.96, 446.152, 93.056, 0.365, 0, 0, ''),
(12581, 0, 3, -9059.62, 431.933, 93.0563, 0, 0, 0, ''),
(12581, 0, 4, -9074.04, 422.621, 93.0563, 0, 0, 0, ''),
(12581, 0, 5, -9083.23, 422.767, 92.5363, 0, 0, 0, ''),
(12581, 0, 6, -9090.48, 412.304, 92.1038, 0, 4000, 1, 'Mercutio - Despawn Self (Generic)');

DELETE FROM dbscripts_on_creature_movement WHERE id=1258101;

-- Quest 6403 (The Great Masquerade) is automatically proposed after quest 6402 (Stormwind RendezVous) completion
UPDATE quest_template SET NextQuestInChain=6403 WHERE entry=6402;
