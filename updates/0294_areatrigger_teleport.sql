-- Thanks Ela for fixing
-- Lower Blackrock Spire fall out teleport. Currently if you fall out of lbrs you do not get teleported, therefore you can fall through the world
DELETE FROM `areatrigger_teleport` where `id` = 2068;
INSERT INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `required_quest_done`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(2068, 'Blackrock Spire - Fall out', 0, 0, 0, 0, 0, -7524.19, -1230.13, 285.743, 2.09544);
