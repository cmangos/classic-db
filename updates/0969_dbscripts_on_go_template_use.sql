-- Fixed quest 5581 (Portal of the Legion) in Desolace
-- Author: @trulynullified
-- Thanks thetrueanimal for pointing. This closes #712 
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` IN (177243,177365,177366,177367,177368,177369,177397,177398,177399,177400);
INSERT INTO `dbscripts_on_go_template_use` VALUES 
('177243', '0', '10', '11937', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Demon Portal - Summon Demon Portal Guardian'),
('177365', '0', '10', '11937', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Demon Portal - Summon Demon Portal Guardian'),
('177366', '0', '10', '11937', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Demon Portal - Summon Demon Portal Guardian'),
('177367', '0', '10', '11937', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Demon Portal - Summon Demon Portal Guardian'),
('177368', '0', '10', '11937', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Demon Portal - Summon Demon Portal Guardian'),
('177369', '0', '10', '11937', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Demon Portal - Summon Demon Portal Guardian'),
('177397', '0', '10', '11937', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Demon Portal - Summon Demon Portal Guardian'),
('177398', '0', '10', '11937', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Demon Portal - Summon Demon Portal Guardian'),
('177399', '0', '10', '11937', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Demon Portal - Summon Demon Portal Guardian'),
('177400', '0', '10', '11937', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Demon Portal - Summon Demon Portal Guardian');
