-- Eastvale Logging Camp - kids
-- showin up only during day

-- already linked to game_event in classic/tbcmangos
-- 86156,86157,86158,86159,86354
DELETE FROM `game_event_creature` where `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (798,799,800,801,802));

DELETE FROM `spawn_group` WHERE id = 19988;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19988, 'Elwynn Forest - Eastvale Logging Camp - Kids - Day', 0, 0, 9108, 0x02);

DELETE FROM `spawn_group_spawn` WHERE id = 19988;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19988, 86158, -1), -- Solomon 798
(19988, 86159, -1), -- Kevin 799
(19988, 86157, -1), -- Kyle 800
(19988, 86354, -1), -- Eric 801
(19988, 86156, -1); -- Jay 802

