-- Fixed reputation awarded by the class epic set quests in Temple of Ahn'Qiraj
-- Those quests now grant 250 Brood of Nozdormu reputation
-- Thanks Tobschinski for pointing. This closes #369 
-- Sources: http://web.archive.org/web/20061117105309/http://www.wowwiki.com/Cenarion_Circle_Reputation_Guide
-- http://web.archive.org/web/20061108193004/http://www.wowwiki.com/Brood_of_Nozdormu
-- http://web.archive.org/web/20061115215023/http://www.worldofwarcraft.com/info/basics/factions/broodofnozdormu/
UPDATE `quest_template` SET `RewRepFaction1` = 910, `RewRepValue1` = 250 WHERE `entry` IN (
8665, 8666, 8667, 8668, 8669, -- Genesis Raiment - Druid
8626, 8656, 8657, 8658, 8659, -- Striker's Garb - Hunter
8625, 8631, 8632, 8633, 8634, -- Enigma Vestment - Mage
8627, 8628, 8629, 8630, 8655, -- Avenger's Battlegear - Paladin
8592, 8593, 8594, 8596, 8603, -- Garment of the Oracle - Priest
8637, 8638, 8639, 8640, 8641, -- Deathdealer's Embrace - Rogue
8602, 8621, 8622, 8623, 8624, -- Stormcaller's Garb - Shaman
8660, 8661, 8662, 8663, 8664, -- Doomcaller's Attire
8544, 8559, 8560, 8561, 8562 -- Conqueror's Battlegear
);
