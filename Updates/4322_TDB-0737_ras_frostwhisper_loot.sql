-- Revamp Loot for Ras Frostwhisper 10508
-- Could drop 2x same blue item, Part of https://github.com/cmangos/issues/issues/1981
-- todo create scholomance and stratholme zone loot rare item group
-- https://web.archive.org/web/20080420212500/http://wow.allakhazam.com:80/db/mob.html?wmob=10508
-- https://www.wowhead.com/classic/npc=10508/ras-frostwhisper#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 10508;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10508, 13626, -100, 0, 1, 1, 0, 'Human Head of Ras Frostwhisper'),
(10508, 12843, 100, 0, 1, 1, 237, 'Corruptor\'s Scourgestone'),
(10508, 13521, 4, 0, 1, 1, 0, 'Recipe: Flask of Supreme Power'), -- more like 2% in vanilla
(10508, 13314, 2, 0, 1, 1, 0, 'Alanna\'s Embrace'), -- more like 1% but keep 2 as befor. (0.7 - 1.13%)
(10508, 18335, 0.25, 0, 1, 1, 0, 'Pristine Black Diamond'), -- down from 2%
(10508, 14047, 10, 0, 2, 5, 0, 'Runecloth'),
(10508, 12808, 2.3621, 0, 1, 1, 0, 'Essence of Undeath'),
(10508, 7972, 3.596, 0, 1, 1, 0, 'Ichor of Undeath'),
(10508, 8948, 3.358, 0, 1, 1, 0, 'Dried King Bolete'),
(10508, 8766, 1.56, 0, 1, 1, 0, 'Morning Glory Dew'),
(10508, 13444, 0.4319, 0, 1, 1, 0, 'Major Mana Potion'),
(10508, 13446, 0.9607, 0, 1, 1, 0, 'Major Healing Potion'),
(10508, 5760, 0.379, 0, 1, 1, 0, 'Eternium Lockbox'),
(10508, 7910, 0.15, 0, 1, 1, 0, 'Star Ruby'),
(10508, 7909, 0.15, 0, 1, 1, 0, 'Aquamarine'),
(10508, 20400, 0.01, 0, 1, 1, 6012, 'Pumpkin Bag'), -- points towards Pumpkin Bag not being part of a Refloot due to seasonal item, he does not drop other bags!
(10508, 35029, 100, 1, -35029, 1, 0, 'Scholomance (Boss Loot) - Ras Frostwhisper - Blue Items (Group 1)'),
(10508, 35030, 100, 1, -35030, 1, 0, 'Scholomance (Boss Loot) - Ras Frostwhisper - Blue Items (Group 2)'),
(10508, 60008, 3, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY'),
(10508, 60298, 2, 0, -60298, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 61-65) - (NPC Levels: 62) - VANILLA NPC ONLY'),
(10508, 60284, 0.1, 0, -60284, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 57-65) - (NPC Levels: 62) - VANILLA NPC ONLY'),
(10508, 60344, 0.01, 0, -60344, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 60-65) - (NPC Levels: 62) - VANILLA NPC ONLY'),
(10508, 50603, 0.5, 0, -50603, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 65 (Scrolls IV)) - (NPC Levels 55-62)'),
(10508, 50563, 0.5, 0, -50563, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 250-300 (Profession Recipes)) - (NPC Levels ~50-63) (Split me up)'),
(10508, 50499, 0.1, 0, -50499, 1, 0, 'NPC LOOT (World Drop) - (Level: 48/50/60 - Book / Codex / Tome / Grimoire) - NPC Levels 52+ (WORLD CLASS LOOT DROP)'),
(10508, 49003, 0.1, 0, -49003, 1, 0, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 5-8) - (Elite NPC Levels: ~50+) - VANILLA NPC ONLY');

-- 1 	Magister's Mantle 	Shivery Handwraps
-- 2 	Death's Clutch 	Frostbite Girdle
-- 3 	Bonechill Hammer 	Maelstrom Leggings
-- 4 	Iceblade Hacker 	Shadowy Mail Greaves
-- 5 	Freezing Lich Robes 	Intricately Runed Shield
-- 6 	Boneclenched Gauntlets 	Spellbound Tome
DELETE FROM `reference_loot_template` WHERE `entry` IN (35029,35030,50499); -- reuse 35030
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(35029, 16689, 0, 1, 1, 1, 0, 'Magister\'s Mantle'),
(35029, 14525, 0, 1, 1, 1, 0, 'Boneclenched Gauntlets'),
(35029, 14340, 0, 1, 1, 1, 0, 'Freezing Lich Robes'),
(35029, 13952, 0, 1, 1, 1, 0, 'Iceblade Hacker'),
(35029, 18695, 0, 1, 1, 1, 0, 'Spellbound Tome'),
(35029, 14503, 0, 1, 1, 1, 0, 'Death\'s Clutch'),

(35030, 14487, 0, 1, 1, 1, 0, 'Bonechill Hammer'),
(35030, 14502, 0, 1, 1, 1, 0, 'Frostbite Girdle'),
(35030, 18694, 0, 1, 1, 1, 0, 'Shadowy Mail Greaves'),
(35030, 18696, 0, 1, 1, 1, 0, 'Intricately Runed Shield'),
(35030, 14522, 0, 1, 1, 1, 0, 'Maelstrom Leggings'),
(35030, 18693, 0, 1, 1, 1, 0, 'Shivery Handwraps'),

(50499, 17413, 0, 1, 1, 1, 0, 'Codex: Prayer of Fortitude'), -- ilvl 48
(50499, 17682, 0, 1, 1, 1, 0, 'Book: Gift of the Wild'), -- ilvl 50
-- ilvl 60
(50499, 18600, 15, 1, 1, 1, 0, 'Tome of Arcane Brilliance'), -- seems to be in the 52+ category, slightly higher itemlevel (56, compared to 48/50)
(50499, 17414, 15, 1, 1, 1, 0, 'Codex: Prayer of Fortitude II'), -- ilvl 60
(50499, 17683, 15, 1, 1, 1, 0, 'Book: Gift of the Wild II'),
(50499, 22393, 15, 1, 1, 1, 0, 'Codex: Prayer of Shadow Protection'),
(50499, 22890, 15, 1, 1, 1, 0, 'Tome of Frost Ward V'),
(50499, 22891, 15, 1, 1, 1, 0, 'Grimoire of Shadow Ward IV');

DELETE FROM `reference_loot_template_names` WHERE `entry` IN (35029,35030,50499); -- reuse 35030
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(35029, 'Scholomance (Boss Loot) - Ras Frostwhisper - Blue Items (Group 1)'),
(35030, 'Scholomance (Boss Loot) - Ras Frostwhisper - Blue Items (Group 2)'),
(50499, 'NPC LOOT (World Drop) - (Level: 48/50/60 - Book / Codex / Tome / Grimoire) - NPC Levels 52+ (WORLD CLASS LOOT DROP)'); -- needs a lower grp with other weight distribution too for levels 46-52

-- others with far too high grey loot chance (points towards either 6 or 3, depending on class/race what not)
-- 10508, -- 60008	10 done
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 6 WHERE `mincountOrRef` = -60008 AND `entry` IN (
10503, -- 60008	10 5.70% - https://web.archive.org/web/20080506021729/http://wow.allakhazam.com/db/mob.html?wmob=14861
14861); -- 60008 10 5.70% - https://web.archive.org/web/20080112171332/http://wow.allakhazam.com/db/mob.html?wmob=14861

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `mincountOrRef` = -60008 AND `entry` IN (
10502, -- 60008	10 2.59% - https://web.archive.org/web/20080506021638/http://wow.allakhazam.com/db/mob.html?wmob=10502
10504, -- 60008	10 2.61% - https://web.archive.org/web/20080505062746/http://wow.allakhazam.com/db/mob.html?wmob=10504
10505, -- 60008	10 2.95% - https://web.archive.org/web/20080421021140/http://wow.allakhazam.com/db/mob.html?wmob=10505
10507, -- 60008	10 2.90% - https://web.archive.org/web/20080505130002/http://wow.allakhazam.com/db/mob.html?wmob=10507
10901, -- 60008	10 2.82% - https://web.archive.org/web/20080430022719/http://wow.allakhazam.com/db/mob.html?wmob=10901
11261, -- 60008	10 2.67% - https://web.archive.org/web/20080217085652/http://wow.allakhazam.com:80/db/mob.html?wmob=11261
11622); -- 60008 10 2.63% - https://web.archive.org/web/20080125140022/http://wow.allakhazam.com:80/db/mob.html?wmob=11622

DELETE FROM `creature_loot_template` WHERE `mincountOrRef` = -60008 AND `entry` IN (
7044, -- https://www.wowhead.com/classic/npc=7044/black-drake#drops
7045, -- https://www.wowhead.com/classic/npc=7045/scalding-drake#drops
7046, -- https://www.wowhead.com/classic/npc=7046/searscale-drake#drops
7447, -- https://www.wowhead.com/classic/npc=7447/fledgling-chillwind#drops;100
8391, -- https://www.wowhead.com/classic/npc=8391/lathoric-the-black#comments
8400, -- https://www.wowhead.com/classic/npc=8400/obsidion#drops;mode:normal
8419, -- https://www.wowhead.com/classic/npc=8419/twilight-idolater#drops;mode:normal
9621, -- https://www.wowhead.com/tbc/npc=9621/gargantuan-ooze#drops;mode:normal;250
10506); -- 60008 10 13.04% (gargoyle instead of humanoid grey loot) - https://web.archive.org/web/20080430022704/http://wow.allakhazam.com/db/mob.html?wmob=10506

-- Add/Correct some 60008 chances
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(10584, 60008, 5, 1, -60008, 1, 0), -- https://www.wowhead.com/classic/npc=10584/urok-doomhowl
(11196, 60008, 5, 1, -60008, 1, 0), -- https://www.wowhead.com/classic/npc=11196/shatterspear-drummer
(11552, 60008, 5, 1, -60008, 1, 0); -- https://www.wowhead.com/classic/npc=11552/timbermaw-mystic

