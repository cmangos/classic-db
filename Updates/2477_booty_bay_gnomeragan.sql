-- Add missing areatrigger_teleport for Booty Bay to Gnomeregan with Item 9173
-- https://github.com/mangoszero/database/commit/d3e2e8a6bb8cb6c1325d571934cb6d90572bee0b - targetxyzo unconfirmed
-- Create condition to use the teleporter (must have Goblin Transponder in inventory)
DELETE FROM `conditions` WHERE `condition_entry` = 2034;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES ('2034', '2', '9173', '1');

-- Create teleport action for both areatriggers
DELETE FROM `areatrigger_teleport` WHERE `id` IN (1103,1104);
INSERT INTO `areatrigger_teleport` (`id`, `name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `condition_id`) VALUES
('1103', 'Booty Bay to Gnomeregan', '0', '-5100.922852', '754.567261', '260.550446', '0', '2034'), -- ids are from AreaTrigger.dbc
('1104', 'Gnomeregan to Booty Bay', '0', '-14461.877930', '458.294769', '15.163864', '0', '2034'); -- strangly enough 1104 is not needed as gnome->bb Teleport is handled by o.id.142175,142176 and s.11409
