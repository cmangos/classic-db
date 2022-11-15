-- https://github.com/magey/tbc-warrior/issues/19#issuecomment-809027718
-- https://guybrushgit.github.io/WarriorSim/
-- https://forum.nostalrius.org/viewtopic.php?f=24&t=703

-- Empyrean Demolisher proc rate - https://guybrushgit.github.io/WarriorSim/
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE  `entry` = 17112; -- Empyrean Demolisher (1.5)

UPDATE `item_template` SET `spellppmRate_1` = 6 WHERE  `entry` = 19019; -- Thunderfury, Blessed Blade of the Windseeker (4)

-- 1H (befor)
UPDATE `item_template` SET `spellppmRate_1` = 0.8 WHERE `entry` = 811; -- Axe of the Deep Woods (0.8)
UPDATE `item_template` SET `spellppmRate_1` = 1.8 WHERE `entry` = 871; -- Flurry Axe (1.8)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 1728; -- Teebu's Blazing Longsword (1.4)
UPDATE `item_template` SET `spellppmRate_1` = 1.8 WHERE `entry` = 6622; -- Sword of Zeal (2)
UPDATE `item_template` SET `spellppmRate_1` = 0.8 WHERE `entry` = 11684; -- Ironfoe (0.8)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 12590; -- Felstriker (1)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 12798; -- Annihilator (1)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 13246; -- Argent Avenger (2)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 13286; -- Rivenspike (1)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 13984; -- Darrowspike (1.9)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 14487; -- Bonechill Hammer (1)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 14555; -- Alcor's Sunrazor (3)
UPDATE `item_template` SET `spellppmRate_1` = 0.8 WHERE `entry` = 17068; -- Deathbringer (0.8)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 17071; -- Gutgore Ripper (2.2)
UPDATE `item_template` SET `spellppmRate_1` = 0.6 WHERE `entry` = 17075; -- Vis'kag the Bloodletter (0.6)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 17112; -- Empyrean Demolisher (1.5)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 17705; -- Thrash Blade (1)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 18203; -- Eskhandar's Right Claw (2.4)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 19910; -- Arlokk's Grasp (3.5)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 18816; -- Perdition's Blade (2.2)
-- UPDATE `item_template` SET `spellppmRate_1` = 6 WHERE `entry` = 19019; -- Thunderfury, Blessed Blade of the Windseeker (4) - see above first thing changed
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 19099; -- Glacial Blade (1.8)
UPDATE `item_template` SET `spellppmRate_1` = 0.4 WHERE `entry` = 19170; -- Ebon Hand (1.1)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 19324; -- The Lobotomizer (2)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 19852; -- Ancient Hakkari Manslayer (2)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 19901; -- Zulian Slicer (1.2)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 20578; -- Emerald Dragonfang (2.3)
UPDATE `item_template` SET `spellppmRate_2`=1 WHERE  `entry`=19908; -- Sceptre of Smiting (1.5)
-- 2H
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 647; -- Destiny (1.3)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 1263; -- Brain Hacker (0) (spelltrigger1 = 2)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 12583; -- Blackhand Doomsaw (1.5)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 13285; -- The Blackrock Slicer (The Nicker) (0.8)
UPDATE `item_template` SET `spellppmRate_1` = 2 WHERE `entry` = 17076; -- Bonereaver's Edge
UPDATE `item_template` SET `spellppmRate_2` = 0.7 WHERE `entry` = 17182; -- Sulfuras, Hand of Ragnaros (1)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 17193; -- Sulfuron Hammer (2)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 17223; -- Thunderstrike (2)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 19334; -- The Untamed Blade (1.4)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 19353; -- Drake Talon Cleaver (0) (spelltrigger1 = 2)
UPDATE `item_template` SET `spelltrigger_1` = 2, `spellppmRate_1` = 1 WHERE `entry` = 19874; -- Halberd of Smiting (0) (spelltrigger1 = 2)
UPDATE `item_template` SET `spellppmRate_1` = 4 WHERE `entry` = 19918; -- Jeklik's Crusher (4)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 21679; -- Kalimdor's Revenge (1.75)
UPDATE `item_template` SET `spellppmRate_1` = 1 WHERE `entry` = 21856; -- Neretzek, The Blood Drinker (1.3)

--  proc rate
-- https://github.com/LightsHope/server/issues/378
UPDATE `item_template` SET `spellppmRate_1`=1 WHERE `entry`=8225; -- 2

