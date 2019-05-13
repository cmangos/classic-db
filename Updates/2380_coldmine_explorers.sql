-- Add missing Coldmine Explorer 13096 (Cosmetic)
DELETE FROM creature WHERE guid IN (191203, 191204, 191205, 191206);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(191203, 13096, 0, 0, 0, -4958.26, -1264.67, 717.511, 5.39958, 900, 900, 0, 0),
(191204, 13096, 0, 0, 0, -4952.16, -1269.72, 716.152, 2.79599, 900, 900, 0, 0),
(191205, 13096, 0, 0, 0, -4868, -667, 624.228, 0.46338, 900, 900, 0, 0),
(191206, 13096, 0, 0, 0, -4862.35, -661.51, 624.875, 4.16261, 900, 900, 0, 0);

DELETE FROM creature_addon WHERE guid IN (191203, 191204, 191205, 191206);
INSERT INTO creature_addon (guid, bytes1) VALUES
(191203, 1),
(191204, 1),
(191205, 1),
(191206, 1);
