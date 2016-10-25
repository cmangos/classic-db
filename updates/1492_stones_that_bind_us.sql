-- Fixed quest 2681 (The Stones that Bind us)
-- Added missing scripts and spell scripts target for spells and GOs involved in quest 2681

DELETE FROM `spell_script_target` WHERE `entry` IN (10805, 10834, 10835, 10836);
INSERT INTO `spell_script_target` VALUES
(10805, 1, 7668, 0),
(10834, 1, 7669, 0),
(10835, 1, 7670, 0),
(10836, 1, 7671, 0);

DELETE FROM `dbscripts_on_go_template_use` WHERE `id` IN (141812, 141857, 141858, 141859);
INSERT INTO `dbscripts_on_go_template_use` VALUES
(141812, 0, 15, 10805, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(141857, 0, 15, 10834, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(141858, 0, 15, 10835, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(141859, 0, 15, 10836, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, '');
