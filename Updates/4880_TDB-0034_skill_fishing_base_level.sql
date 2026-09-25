-- Port per-zone area fishing requirements to skill_fishing_base_level
-- Part of https://github.com/cmangos/mangos-tbc/pull/873
-- https://github.com/cmangos/mangos-tbc/commit/9b835597000ed49db3c4f4542c0a7d4ca87fcca7

-- https://wowpedia.fandom.com/wiki/Patch_3.1.0 - You can now fish anywhere, regardless of skill. Every catch has the potential for fishing skill gains, but you are likely to catch worthless junk in areas that are too difficult for your skill.

-- https://www.curseforge.com/wow/addons/angler-atlas - Data.lua
-- https://www.curseforge.com/wow/addons/anglers-atlas - DataOutland.lua
-- https://www.warcrafttavern.com/wow-classic/guides/fishing-1-300/ - confirms the dungeons
-- Trinitycore uses "WoWWiki's table once its 95-point grace band comes off" so their values are +95, can be used for junk filtering implementation
-- Some ø values were saved by zone fallback from area value
DELETE FROM `skill_fishing_base_level` WHERE `entry` IN (19,25,718,719,1497,796,16,1477,1583,1584,2717,2557,2279);
INSERT INTO `skill_fishing_base_level` (`entry`, `skill`) VALUES
-- vanilla brackets - 0, 55, 130, 205, 330
(19, 330), -- ZG (Outside)(TC)
(25, 330), -- Blackrock Mountain (Outside)(TC)
(718, -20), -- Wailing Caverns (-20)
(719, -20), -- Blackfathom Deeps (-20)
(1497, -20), -- Undercity (missing in vmangos, fallback 85)
(796, 130), -- Scarlet Monastery (130)(205 too high take guide value)
(16, 205), -- Azshara (old 205)(new 330) - coast is 330 so i think the base level of 205 is correct see wpl 205 too
(1477, 205), -- The Temple of Atal’Hakkar (ø)(TC)
(1583, 330), -- Blackrock Spire (ø)(TC)
(1584, 330), -- Blackrock Depths (ø)(TC)
(2717, 330), -- Molten Core (ø)(TC)
-- confirmed by https://www.reddit.com/r/classicwow/comments/cx6mv6/is_there_a_list_of_the_minimum_fishing_skill/
(2557, 330), -- Dire Maul (ø)(330)
(2279, 330); -- Stratholme (ø)

