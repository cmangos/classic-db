-- Removed gold from drakonids in Nefarian encounter
UPDATE creature_template SET MinLootGold=0, MaxLootGold=0 WHERE Entry IN (14261, 14262, 14263, 14264, 14265, 14302);

-- Added missing target position for regular Shadowblink
DELETE FROM spell_target_position WHERE id BETWEEN 22668 AND 22676;
INSERT INTO spell_target_position VALUES
(22668, 469, -7579.59, -1218.76, 476.799, 0),
(22669, 469, -7557.95, -1249.87, 476.799, 0),
(22670, 469, -7540.82, -1190.7, 476.355, 0),
(22671, 469, -7538.63, -1273.64, 476.800, 0),
(22672, 469, -7524.36, -1219.12, 476.794, 0),
(22673, 469, -7504.77, -1164.43, 476.797, 0),
(22674, 469, -7500.70, -1249.89, 476.798, 0),
(22675, 469, -7486.36, -1194.32, 476.800, 0),
(22676, 469, -7461.41, -1226.29, 476.781, 0);
