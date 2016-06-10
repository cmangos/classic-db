-- Fixed some spawn points of NPCs 11598 (Risen Guardian) in Scholomance
-- Thanks @evil-at-wow for the data !
DELETE FROM `dbscripts_on_event` WHERE `id` = 5622;
INSERT INTO `dbscripts_on_event` VALUES
(5622, 2, 10, 11598, 300000, 0, 0, 0, 0, 0, 0, 0, 181.825, -42.5812, 75.4812, 4.66003, 'Scholomance - Summons in Barov Vault'),
(5622, 2, 10, 11598, 300000, 0, 0, 0, 0, 0, 0, 0, 177.746, -42.7475, 75.4812, 4.88692, 'Scholomance - Summons in Barov Vault'),
(5622, 2, 10, 11598, 300000, 0, 0, 0, 0, 0, 0, 0, 185.616, -42.912, 75.4812, 4.45059, 'Scholomance - Summons in Barov Vault');
