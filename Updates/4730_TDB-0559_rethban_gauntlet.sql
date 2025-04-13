-- ----------------
-- Redridge Mountains
-- Quest - The Rethban Gauntlet (id 1699) new End script 
-- ---------------

-- old script was identical to tbcmangos one so using new script.
-- Quest End RP
DELETE FROM dbscripts_on_quest_end WHERE id IN (1699);
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1699, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Yorus Barleybrew - Set ActiveObject'),
(1699, 0, 1, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Yorus Barleybrew - Remove NpcFlags'),
(1699, 0, 2, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Yorus Barleybrew - Emote Shout'), 
(1699, 0, 3, 0, 0, 0, 0, 0, 0, 0, 2308, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Yorus Barleybrew - Say Text'), 
(1699, 0, 4, 32, 1, 0, 0, 379, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Darcy - Stop Waypoint'),
(1699, 0, 5, 36, 0, 0, 0, 379, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Darcy - Face Player'), 
(1699, 1000, 0, 1, 4, 0, 0, 5620, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Bartender Wental - Emote Cheer'), 
(1699, 3000, 0, 1, 21, 0, 0, 346, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Barkeep Daniels - Emote OneShotApplaud'), 
(1699, 3000, 1, 1, 21, 0, 0, 379, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Darcy - Emote OneShotApplaud'), 
(1699, 5000, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Yorus Barleybrew - Emote Cheer'), 
(1699, 5000, 1, 0, 0, 0, 0, 0, 0, 0, 2309, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Yorus Barleybrew - Say Text'), 
(1699, 6000, 0, 1, 4, 0, 0, 379, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Darcy - Emote OneShotCheer'), 
(1699, 6000, 1, 1, 21, 0, 0, 5620, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Bartender Wental - Emote OneShotApplaud'), 
(1699, 9000, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Yorus Barleybrew - Emote Cheer'), 
(1699, 9000, 1, 0, 0, 0, 0, 0, 0, 0, 2309, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Yorus Barleybrew - Say Text'), 
(1699, 10000, 5, 32, 0, 0, 0, 379, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Darcy - Start Waypoint'),
(1699, 13000, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Yorus Barleybrew - Emote Cheer'), 
(1699, 13000, 1, 0, 0, 0, 0, 0, 0, 0, 2309, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Yorus Barleybrew - Say Text'), 
(1699, 14000, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Yorus Barleybrew - Remove ActiveObject'),
(1699, 14000, 1, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rethban Gauntlet - Yorus Barleybrew - Add NpcFlags');

