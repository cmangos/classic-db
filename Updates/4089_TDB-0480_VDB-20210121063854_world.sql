-- https://github.com/vmangos/core/commit/1aa3ee97b5edc0e97d009661be7947d14c8bfb42
-- Add your query below.

-- Add threat for paladin blessings equal to their level.
-- Blessing of Wisdom never generates any threat.
-- https://classic.wowhead.com/guides/lights-bulwark-protection-paladin-tanking
-- The following table shows threat values associated with different Greater Blessing spells:
-- All Greater Blessings (except Wisdom) generate threat for each player buffed by the spellcast. This threat is also affected by Righteous Fury. This effectively makes a spam casting Greater Blessings a viable threat generation ability for certain situations in which there's high class stacking.
-- https://tbc.wowhead.com/guides/paladin-tank-burning-crusade-classic
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`) VALUES
(1022, 10, 1, 0), -- Blessing of Protection (Rank 1)
(5599, 24, 1, 0), -- Blessing of Protection (Rank 2)
(10278, 38, 1, 0), -- Blessing of Protection (Rank 3)
(1038, 26, 1, 0), -- Blessing of Salvation
(25895, 60, 1, 0), -- Greater Blessing of Salvation
(1044, 18, 1, 0), -- Blessing of Freedom
(6940, 46, 1, 0), -- Blessing of Sacrifice (Rank 1)
(20729, 54, 1, 0), -- Blessing of Sacrifice (Rank 2)
(19740, 4, 1, 0), -- Blessing of Might (Rank 1)
(19834, 12, 1, 0), -- Blessing of Might (Rank 2)
(19835, 22, 1, 0), -- Blessing of Might (Rank 3)
(19836, 32, 1, 0), -- Blessing of Might (Rank 4)
(19837, 42, 1, 0), -- Blessing of Might (Rank 5)
(19838, 52, 1, 0), -- Blessing of Might (Rank 6)
(25291, 60, 1, 0), -- Blessing of Might (Rank 7)
(19742, 0, 0, 0), -- Blessing of Wisdom (Rank 1)
(19977, 40, 1, 0), -- Blessing of Light (Rank 1)
(19978, 50, 1, 0), -- Blessing of Light (Rank 2)
(19979, 60, 1, 0), -- Blessing of Light (Rank 3)
(20911, 30, 1, 0), -- Blessing of Sanctuary (Rank 1)
(20912, 40, 1, 0), -- Blessing of Sanctuary (Rank 2)
(20913, 50, 1, 0), -- Blessing of Sanctuary (Rank 3)
(20914, 60, 1, 0), -- Blessing of Sanctuary (Rank 4)
(20217, 60, 1, 0), -- Blessing of Kings (confirmed tbcc)
(25782, 52, 1, 0), -- Greater Blessing of Might (Rank 1)
(25916, 60, 1, 0), -- Greater Blessing of Might (Rank 2)
(25890, 60, 1, 0), -- Greater Blessing of Light (Rank 1)
(25898, 60, 1, 0), -- Greater Blessing of Kings (confirmed tbcc)
(25899, 60, 1, 0), -- Greater Blessing of Sanctuary (Rank 1)

-- TBC+, guessed for most spells based on https://youtu.be/1Vl4OveOFwM?t=30
(27147, 62, 1, 0), -- Blessing of Sacrifice (Rank 3)
(27148, 70, 1, 0), -- Blessing of Sacrifice (Rank 4)
(27140, 70, 1, 0), -- Blessing of Might (Rank 8)
(27144, 70, 1, 0), -- Blessing of Light (Rank 4)
(27168, 70, 1, 0), -- Blessing of Sanctuary (Rank 5)
(27141, 70, 1, 0), -- Greater Blessing of Might (Rank 3) (134 with imp threat spell, not 144 so about 70-71) saying 20 increase from 114 to 134 not 144
(27145, 70, 1, 0), -- Greater Blessing of Light (Rank 2)
(27169, 70, 1, 0); -- Greater Blessing of Sanctuary (Rank 2)
-- End of migration.

