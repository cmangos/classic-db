-- Add Pooling for Large Solid Chest 153463 & Large Mithril Bound Chest 153468 - Hearthglen
DELETE FROM gameobject WHERE id IN (153463,153468);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(1268, 153463, 0, 2939.019, -1376.045, 167.2374, -1.186824, 0, 0, 0, 0, 7200, 7200, 100, 1), -- Large Solid Chest
(1269, 153468, 0, 2939.019, -1376.045, 167.2374, -1.186824, 0, 0, 0, 0, 7200, 7200, 100, 1), -- Large Mithril Bound Chest
(1270, 153463, 0, 2989.212, -1601.668, 184.4491, 2.495821, 0, 0, 0, 0, 7200, 7200, 100, 1), -- Large Solid Chest
(1271, 153468, 0, 2989.212, -1601.668, 184.4491, 2.495821, 0, 0, 0, 0, 7200, 7200, 100, 1), -- Large Mithril Bound Chest
(1272, 153463, 0, 2851.745, -1403.158, 148.9066, 0.523598, 0, 0, 0, 0, 7200, 7200, 100, 1), -- Large Solid Chest
(1273, 153468, 0, 2851.745, -1403.158, 148.9066, 0.523598, 0, 0, 0, 0, 7200, 7200, 100, 1); -- Large Mithril Bound Chest

DELETE FROM pool_template WHERE entry BETWEEN 39801 AND 39804;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(39801, 1, 'Western Plaguelands (Hearthglen) - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #1'),
(39802, 1, 'Western Plaguelands (Hearthglen) - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #2'),
(39803, 1, 'Western Plaguelands (Hearthglen) - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #3');

-- Add to Western Plaguelands (51-58) - Master Chest Pool 39934
DELETE FROM pool_pool WHERE pool_id BETWEEN 39801 AND 39804;
INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES
(39801, 39934, 0, 'Western Plaguelands - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #1'),
(39802, 39934, 0, 'Western Plaguelands - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #2'),
(39803, 39934, 0, 'Western Plaguelands - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #3');

DELETE FROM pool_gameobject WHERE guid IN (5,6,45486,55580);
DELETE FROM pool_gameobject WHERE guid BETWEEN 1268 AND 1275;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(1268, 39801, 0, 'Western Plaguelands - Large Solid Chest (153463)'),
(1269, 39801, 0, 'Western Plaguelands - Large Mithril Bound Chest (153468)'),
(1270, 39802, 0, 'Western Plaguelands - Large Solid Chest (153463)'),
(1271, 39802, 0, 'Western Plaguelands - Large Mithril Bound Chest (153468)'),
(1272, 39803, 0, 'Western Plaguelands - Large Solid Chest (153463)'),
(1273, 39803, 0, 'Western Plaguelands - Large Mithril Bound Chest (153468)');
