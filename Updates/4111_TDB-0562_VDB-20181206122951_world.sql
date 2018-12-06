-- Add missing OOC Texts
-- Add your query below.
-- Based on Commits
-- https://github.com/vmangos/core/commit/5a6d0833112c85174b4e2bde96225cf6ac2d2265
-- https://github.com/vmangos/core/commit/625062dec4d49fe0bb9af1f183542c2ff9689919
-- https://github.com/vmangos/core/commit/caf8e0100783567d6a940b89217f22526c647526
-- https://github.com/vmangos/core/commit/301152bb0ea2e64781f831690678e024222a06f2
-- https://github.com/vmangos/core/commit/992a0a056f8d81bb767042babe5007e9bb3d4e12


-- Gryan Stoutmantle, Protector Gariel, Protector Bialon, Captain Danuvin & Barkeep Hann
REPLACE INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES (21, 0, 44, 0, 'Gryan Stoutmantle - Random OOC Texts');
UPDATE `broadcast_text` SET `EmoteId1` = 1 WHERE `ID` IN (39, 40, 44);
UPDATE `broadcast_text` SET `EmoteId1` = 1 WHERE `ID` = 41;
UPDATE `broadcast_text` SET `EmoteId1` = 1 WHERE `ID` = 42;
UPDATE `broadcast_text` SET `EmoteId1` = 1 WHERE `ID` = 43; -- Captain Danuvin also says 44 for us?
UPDATE `broadcast_text` SET `EmoteId1` = 1 WHERE `ID` IN (80, 81); -- Barkeep Hann - Say Text

REPLACE INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(23, 0, 159, 0, 'Yarlyn Amberstill - Random OOC Texts'),
(23, 0, 160, 0, 'Yarlyn Amberstill - Random OOC Texts'),
(23, 0, 161, 0, 'Yarlyn Amberstill - Random OOC Texts'),
(23, 0, 162, 0, 'Yarlyn Amberstill - Random OOC Texts'),
(23, 0, 164, 0, 'Yarlyn Amberstill - Random OOC Texts'),
(23, 0, 165, 0, 'Yarlyn Amberstill - Random OOC Texts');

UPDATE `broadcast_text` SET `EmoteId1` = 6 WHERE `ID` = 739;
UPDATE `broadcast_text` SET `EmoteId1` = 5 WHERE `ID` IN (737, 738);

REPLACE INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(24, 0, 9693, 0, 'Tosamina - Random OOC Texts'),
(24, 0, 9694, 0, 'Tosamina - Random OOC Texts'),
(24, 0, 9695, 0, 'Tosamina - Random OOC Texts'),
(24, 0, 9696, 0, 'Tosamina - Random OOC Texts');

-- End of migration.

