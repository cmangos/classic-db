
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('20941', '5859', '1', '0', '0', '-3988.903564453125', '-1862.833740234375', '91.7680816650390625', '1.640609502792358398', '18000', '28800', '0', '0', '2250', '0', '0', '0'),
('20942', '5859', '1', '0', '0', '-3709.73095703125', '-1587.8887939453125', '91.9688873291015625', '0.05235987901687622', '18000', '28800', '0', '0', '2250', '0', '0', '0'),
('20943', '5859', '1', '0', '0', '-3893.58642578125', '-1627.259765625', '91.75', '4.886921882629394531', '18000', '28800', '0', '0', '2250', '0', '0', '0');

UPDATE `creature` SET `position_x` = '-4006.34375', `position_y` = '-1752.7042236328125', `position_z` = '97.34051513671875', `orientation` = '5.724679946899414062' WHERE (`guid` = '20877');

INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('5859', '1259', '0', 'Hagg Taurenbane (5859)');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1259', '1', 'Hagg Taurenbane (5859)');
