-- https://classic.wowhead.com/item=18704/mature-blue-dragon-sinew
-- vmangos
DELETE FROM `creature_loot_template` WHERE `item` = 18704;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- seemingly classic+
(6109, 18704, 100, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'), -- Azuregos
(7435, 18704, 0.5, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'), -- Cobalt Wyrmkin
(7436, 18704, 0.5, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'), -- Cobalt Scalebane
(7437, 18704, 0.5, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'), -- Cobalt Mageweaver
(10196, 18704, 0.3, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'), -- General Colbatann
(10663, 18704, 1, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'), -- Manaclaw
(10664, 18704, 0.1, 0, 1, 1, 0, 'Mature Blue Dragon Sinew'); -- Scryer

-- https://tbc.wowhead.com/item=18703/ancient-petrified-leaf#contained-in-object
-- solves mistake made
DELETE FROM `creature_loot_template` WHERE `item` = 18703;
-- should only be in .gobject 179703 50%
