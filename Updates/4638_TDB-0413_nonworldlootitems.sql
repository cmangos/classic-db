-- Random Loot Fixes
-- Remove unique items from world loot
-- Add unique items to npc specific loot
-- Remove wrong Items from npc specific loot

-- https://www.wowhead.com/tbc/item=835/large-rope-net#comments:id=3008429
-- https://web.archive.org/web/20050118163516/http://wow.allakhazam.com/db/item.html?witem=835
DELETE FROM `creature_loot_template` WHERE `item` = 835 AND `comments` = 'Large Rope Net'; -- befor ~5% on 504,513,2204

-- 60004	1485	0	1	1	1	0	Pitchfork
-- https://web.archive.org/web/20080604150526/http://wow.allakhazam.com/db/item.html?witem=1485
DELETE FROM `reference_loot_template` WHERE `item` = 1485;
DELETE FROM `creature_loot_template` WHERE `entry` IN (2403,232,2266,2451) AND `item` = 1485;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2403, 1485, 10, 0, 1, 1, 0, 'Pitchfork'),
(232, 1485, 10, 0, 1, 1, 0, 'Pitchfork'),
(2266, 1485, 10, 0, 1, 1, 0, 'Pitchfork'),
(2451, 1485, 10, 0, 1, 1, 0, 'Pitchfork');

-- https://www.wowhead.com/classic/item=787/slitherskin-mackerel
DELETE FROM `creature_loot_template` WHERE `item` = 787 AND `comments` = 'Slitherskin Mackerel';

-- https://www.wowhead.com/classic/item=4592/longjaw-mud-snapper
DELETE FROM `creature_loot_template` WHERE `item` = 4592 AND `comments` = 'Longjaw Mud Snapper';

-- https://www.wowhead.com/classic/item=4593/bristle-whisker-catfish
DELETE FROM `creature_loot_template` WHERE `item` = 4593 AND `comments` = 'Bristle Whisker Catfish';

-- https://www.wowhead.com/classic/item=8364/mithril-head-trout
DELETE FROM `creature_loot_template` WHERE `item` = 8364 AND `comments` = 'Mithril Head Trout';

-- https://web.archive.org/web/20050118035110/http://wow.allakhazam.com/db/item.html?witem=2633
DELETE FROM `creature_loot_template` WHERE `item` = 2633 AND `entry` = 937; -- Kurzen Jungle Fighter

-- https://www.wowhead.com/classic/item=6887/spotted-yellowtail
DELETE FROM `creature_loot_template` WHERE `item` = 6887 AND `comments` = 'Spotted Yellowtail';

-- https://www.wowhead.com/classic/item=8957/spinefin-halibut
DELETE FROM `creature_loot_template` WHERE `item` = 8957 AND `comments` = 'Spinefin Halibut';

-- missing
-- https://web.archive.org/web/20060526211819/http://wow.allakhazam.com/db/item.html?witem=5108
DELETE FROM `creature_loot_template` WHERE `item` = 5108;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(4062, 5108, 4, 0, 1, 1, 0, 'Dark Iron Leather'), -- Dark Iron Bombardier
(2577, 5108, 4, 0, 1, 1, 0, 'Dark Iron Leather'), -- Dark Iron Shadowcaster
(1051, 5108, 3, 0, 1, 1, 0, 'Dark Iron Leather'), -- Dark Iron Dwarf
(1052, 5108, 3, 0, 1, 1, 0, 'Dark Iron Leather'), -- Dark Iron Saboteur
(1053, 5108, 3, 0, 1, 1, 0, 'Dark Iron Leather'), -- Dark Iron Tunneler
(1054, 5108, 3, 0, 1, 1, 0, 'Dark Iron Leather'), -- Dark Iron Demolitionist
(2575, 5108, 3, 0, 1, 1, 0, 'Dark Iron Leather'), -- Dark Iron Supplier
(6212, 5108, 2, 0, 1, 1, 0, 'Dark Iron Leather'), -- Dark Iron Agent
(6523, 5108, 2, 0, 1, 1, 0, 'Dark Iron Leather'), -- Dark Iron Rifleman
(6228, 5108, 1.4, 0, 1, 1, 0, 'Dark Iron Leather'), -- Dark Iron Ambassador
(1364, 5108, 0.6, 0, 1, 1, 0, 'Dark Iron Leather'); -- Balgaras the Foul

-- https://www.wowhead.com/classic/item=5374/small-pocket-watch
DELETE FROM `creature_loot_template` WHERE `item` = 5374 AND `comments` = 'Small Pocket Watch';

-- 60005	11411	0	1	1	1	0	Large Bear Bone
-- https://web.archive.org/web/20080617075947/http://wow.allakhazam.com/db/item.html?witem=11411
DELETE FROM `reference_loot_template` WHERE `item` = 11411;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8957, 11411, 15, 0, 1, 1, 0, 'Large Bear Bone'), -- Angerclaw Grizzly	47 - 52 	36,606of 259,202	14.12%
(1816, 11411, 16, 0, 1, 1, 0, 'Large Bear Bone'), -- Diseased Grizzly	50 - 56 	16,580of 105,994	15.64%
(8956, 11411, 15, 0, 1, 1, 0, 'Large Bear Bone'), -- Angerclaw Bear	45 - 48 	29,984of 207,933	14.42%
(8958, 11411, 14, 0, 1, 1, 0, 'Large Bear Bone'), -- Angerclaw Mauler	45 - 50 	42,394of 307,293	13.80%
(7444, 11411, 16, 0, 1, 1, 0, 'Large Bear Bone'), -- Shardtooth Bear	49 - 54 	12,605of 81,425	15.48%
(5274, 11411, 14, 0, 1, 1, 0, 'Large Bear Bone'), -- Ironfur Patriarch	46 - 49 	8,902of 65,062	13.68%
(1815, 11411, 15, 0, 1, 1, 0, 'Large Bear Bone'), -- Diseased Black Bear	46 - 52 	21,635of 147,449	14.67%
(10806, 11411, 15, 0, 1, 1, 0, 'Large Bear Bone'), -- Ursius	54 - 60 	1,288of 9,106	14.14%
(7445, 11411, 15, 0, 1, 1, 0, 'Large Bear Bone'), -- Elder Shardtooth	52 - 58 	56,377of 394,764	14.28%
(7443, 11411, 15, 0, 1, 1, 0, 'Large Bear Bone'), -- Shardtooth Mauler	50 - 56 	36,521of 254,981	14.32%
(7446, 11411, 15, 0, 1, 1, 0, 'Large Bear Bone'), -- Rabid Shardtooth	57 - 60 	8,938of 63,843	14.00%
(5272, 11411, 12, 0, 1, 1, 0, 'Large Bear Bone'), -- Grizzled Ironfur Bear	40 - 45 	5,972of 54,542	10.95%
(14344, 11411, 14, 0, 1, 1, 0, 'Large Bear Bone'), -- Mongress	49 - 50 	45of 330	13.64%
(5352, 11411, 8, 0, 1, 1, 0, 'Large Bear Bone'), -- Old Grizzlegut	42 - 43 	26of 356	7.30%
(5268, 11411, 5, 0, 1, 1, 0, 'Large Bear Bone'); -- Ironfur Bear	37 	12,256of 293,993	4.17%

-- https://www.wowhead.com/classic/item=9144/wildvine-potion
DELETE FROM `creature_loot_template` WHERE `item` = 9144 AND `comments` = 'Wildvine Potion';

-- https://www.wowhead.com/classic/item=4623/lesser-stoneshield-potion
DELETE FROM `creature_loot_template` WHERE `item` = 4623 AND `comments` = 'Lesser Stoneshield Potion';

-- https://www.wowhead.com/classic/item=9036/magic-resistance-potion
DELETE FROM `creature_loot_template` WHERE `item` = 9036 AND `comments` = 'Magic Resistance Potion';

-- https://www.wowhead.com/classic/item=3384/minor-magic-resistance-potion
DELETE FROM `creature_loot_template` WHERE `item` = 3384 AND `comments` = 'Minor Magic Resistance Potion';

-- https://www.wowhead.com/classic/item=9030/restorative-potion
DELETE FROM `creature_loot_template` WHERE `item` = 9030 AND `comments` = 'Restorative Potion';

-- https://www.wowhead.com/classic/item=9242/ancient-tablet
DELETE FROM `creature_loot_template` WHERE `item` = 9242 AND `entry` IN (232,7286,10080); -- Farmer Ray, Zul'Farrak Zombie
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10080, 9242, 1, 0, 1, 1, 0, 'Ancient Tablet'); -- Sandarr Dunereaver

-- https://www.wowhead.com/classic/item=9243/shriveled-heart
DELETE FROM `creature_loot_template` WHERE `item` = 9243 AND `entry` IN (232,7286); -- Farmer Ray, Zul'Farrak Zombie

-- https://www.wowhead.com/classic/item=9332/crusted-bandages
DELETE FROM `creature_loot_template` WHERE `item` = 9332 AND `comments` = 'Crusted Bandages';

-- https://www.wowhead.com/classic/item=9333/tarnished-silver-necklace
DELETE FROM `creature_loot_template` WHERE `item` = 9333 AND `comments` = 'Tarnished Silver Necklace';

-- https://www.wowhead.com/classic/item=9334/cracked-pottery
DELETE FROM `creature_loot_template` WHERE `item` = 9334 AND `comments` = 'Cracked Pottery';

-- https://www.wowhead.com/classic/item=9335/broken-obsidian-club
DELETE FROM `creature_loot_template` WHERE `item` = 9335 AND `comments` = 'Broken Obsidian Club';

-- https://www.wowhead.com/classic/item=9336/gold-capped-troll-tusk
DELETE FROM `creature_loot_template` WHERE `item` = 9336 AND `comments` = 'Gold-capped Troll Tusk';

-- https://www.wowhead.com/classic/item=24232/shabby-knot
DELETE FROM `creature_loot_template` WHERE `item` = 24232 AND `comments` = 'Shabby Knot';

-- https://www.wowhead.com/classic/item=16713/shadowcraft-belt
DELETE FROM `creature_loot_template` WHERE `item` = 16713 AND `entry` = 9046; -- Scarshield Quartermaster

-- https://www.wowhead.com/classic/item=5173/deathweed
DELETE FROM `creature_loot_template` WHERE `item` = 5173 AND `comments` = 'Deathweed';

-- https://www.wowhead.com/classic/item=9357/a-parrot-skeleton
DELETE FROM `creature_loot_template` WHERE `item` = 9357 AND `comments` = 'A Parrot Skeleton';

-- Chance 10% !?
-- https://www.wowhead.com/classic/item=11086/jangthraze-the-protector - https://web.archive.org/web/20080702043249/http://wow.allakhazam.com/db/item.html?witem=11086
-- https://www.wowhead.com/classic/item=9379/sangthraze-the-deflector - https://web.archive.org/web/20080927073143/http://wow.allakhazam.com/db/item.html?witem=9379
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `entry` IN (8127,7267) AND `item` IN (9379,11086);

-- https://www.wowhead.com/classic/item=21314/metzens-letters-and-notes
DELETE FROM `creature_loot_template` WHERE `item` = 21314 AND `comments` = 'Metzen\'s Letters and Notes';

-- https://www.wowhead.com/classic/item=9155/arcane-elixir
DELETE FROM `creature_loot_template` WHERE `item` = 9155 AND `comments` = 'Arcane Elixir';

-- https://www.wowhead.com/classic/item=9154/elixir-of-detect-undead
DELETE FROM `creature_loot_template` WHERE `item` = 9154 AND `comments` = 'Elixir of Detect Undead';

-- https://www.wowhead.com/classic/item=18255/runn-tum-tuber
DELETE FROM `creature_loot_template` WHERE `item` = 18255 AND `entry` != 14354;

-- https://www.wowhead.com/classic/item=18297/thornling-seed
DELETE FROM `creature_loot_template` WHERE `item` = 18297 AND `comments` = 'Thornling Seed';

-- https://www.wowhead.com/classic/item=9187/elixir-of-greater-agility
DELETE FROM `creature_loot_template` WHERE `item` = 9187 AND `comments` = 'Elixir of Greater Agility';

-- https://www.wowhead.com/classic/item=8956/oil-of-immolation
DELETE FROM `creature_loot_template` WHERE `item` = 8956 AND `comments` = 'Oil of Immolation';

-- https://www.wowhead.com/classic/item=3767/fine-parchment
DELETE FROM `creature_loot_template` WHERE `item` = 3767 AND `comments` = 'Fine Parchment';

-- https://www.wowhead.com/classic/item=4388/discombobulator-ray
DELETE FROM `creature_loot_template` WHERE `item` = 4388 AND `comments` = 'Discombobulator Ray';

-- https://www.wowhead.com/classic/item=18588/ez-thro-dynamite-ii
DELETE FROM `creature_loot_template` WHERE `item` = 18588 AND `comments` = 'Ez-Thro Dynamite II';

-- https://www.wowhead.com/classic/item=9061/goblin-rocket-fuel
DELETE FROM `creature_loot_template` WHERE `item` = 9061 AND `entry` IN (13136,9201,12178);

-- https://www.wowhead.com/classic/item=3829/frost-oil
DELETE FROM `creature_loot_template` WHERE `item` = 3829 AND `comments` = 'Frost Oil';

-- https://www.wowhead.com/classic/item=9224/elixir-of-demonslaying
DELETE FROM `creature_loot_template` WHERE `item` = 9224 AND `comments` = 'Elixir of Demonslaying';

-- https://www.wowhead.com/classic/item=9206/elixir-of-giants
DELETE FROM `creature_loot_template` WHERE `item` = 9206 AND `comments` = 'Elixir of Giants';

-- https://www.wowhead.com/classic/item=6756/jewelry-box
DELETE FROM `creature_loot_template` WHERE `item` = 6756 AND `comments` = 'Jewelry Box';

-- https://www.wowhead.com/classic/item=9179/elixir-of-greater-intellect
DELETE FROM `creature_loot_template` WHERE `item` = 9179 AND `comments` = 'Elixir of Greater Intellect';

-- https://www.wowhead.com/classic/item=8153/wildvine
DELETE FROM `creature_loot_template` WHERE `item` = 8153 AND `entry` IN (
13022, -- Whip Lasher
3712, -- Wrathtail Razortail
7864, -- Lingering Highborne
6377, -- Thunderhead Stagwing
6375, -- Thunderhead Hippogryph
6126, -- Haldarr Trickster
5234, -- Gordunni Mauler
5232, -- Gordunni Brute
4846, -- Shadowforge Digger
5423, -- Scorpid Tail Lasher
5236, -- Gordunni Shaman
5238, -- Gordunni Battlemaster
2740, -- Shadowforge Darkweaver
2739, -- Shadowforge Tunneler
2655, -- Green Sludge
1907, -- Naga Explorer
1144, -- Mosh'Ogg Witch Doctor
1142, -- Mosh'Ogg Brute
701, -- Bloodscalp Mystic
587, -- Bloodscalp Warrior
6195, -- Spitelash Siren
6116, -- Highborne Apparition
5335, -- Hatecrest Screamer
5241, -- Gordunni Warlord
5240, -- Gordunni Warlock
5239, -- Gordunni Mage-Lord
5331, -- Hatecrest Warrior
5332, -- Hatecrest Wave Rider
5618, -- Wastewander Bandit
5647, -- Sandfury Firecaller
6190, -- Spitelash Warrior
6193, -- Spitelash Screamer
6202, -- Legashi Hellcaller
2735, -- Lesser Rock Elemental
2680, -- Vilebranch Wolf Pup
11442, -- Gordok Mauler
11448, -- Gordok Warlock
11450, -- Gordok Reaver
5617, -- Wastewander Shadow Mage
5616, -- Wastewander Thief
5334, -- Hatecrest Myrmidon
5336, -- Hatecrest Sorceress
5363, -- Northspring Roguefeather
1114, -- Jungle Thunderer
5364, -- Northspring Slayer
5646, -- Sandfury Axe Thrower
5471, -- Dunemaul Ogre
5473, -- Dunemaul Ogre Mage
5474, -- Dunemaul Brute
4469, -- Emerald Ooze
5469, -- Dune Smasher
14351, -- Gordok Bushwacker
8198, -- Tick
11830, -- Hakkari Priest
14487); -- Gluggle

-- https://www.wowhead.com/classic/item=17202/snowball
DELETE FROM `creature_loot_template` WHERE `item` = 17202 AND `comments` = 'Snowball';

-- https://www.wowhead.com/classic/item=11914/empty-cursed-ooze-jar
DELETE FROM `creature_loot_template` WHERE `item` = 11914 AND `comments` = 'Empty Cursed Ooze Jar';

-- https://www.wowhead.com/classic/item=11948/empty-tainted-ooze-jar
DELETE FROM `creature_loot_template` WHERE `item` = 11948 AND `comments` = 'Empty Tainted Ooze Jar';

-- https://www.wowhead.com/tbc/item=5740/red-fireworks-rocket
DELETE FROM `creature_loot_template` WHERE `item` = 5740 AND `comments` = 'Red Fireworks Rocket';

-- https://www.wowhead.com/tbc/item=4406/standard-scope
DELETE FROM `creature_loot_template` WHERE `item` = 4406 AND `comments` = 'Standard Scope';

-- https://www.wowhead.com/tbc/item=4375/whirring-bronze-gizmo
DELETE FROM `creature_loot_template` WHERE `item` = 4375 AND `comments` = 'Whirring Bronze Gizmo';

-- https://www.wowhead.com/tbc/item=4371/bronze-tube
DELETE FROM `creature_loot_template` WHERE `item` = 4371 AND `entry` IN (
7603, -- Leprous Assistant
6206, -- Caverndeep Burrower
6222, -- Leprous Technician
6329, -- Irradiated Pillager
3374, -- Bael'dun Excavator
3375, -- Bael'dun Foreman
3377, -- Bael'dun Rifleman
6207); -- Caverndeep Ambusher

-- https://www.wowhead.com/tbc/item=4382/bronze-framework
DELETE FROM `creature_loot_template` WHERE `item` = 4382 AND `entry` IN (
7603, -- Leprous Assistant
3377, -- Bael'dun Rifleman
3376, -- Bael'dun Soldier
3375, -- Bael'dun Foreman
3374, -- Bael'dun Excavator
6329, -- Irradiated Pillager
6222, -- Leprous Technician
6206, -- Caverndeep Burrower
3378, -- Bael'dun Officer
1492, -- Gorlash
3392, -- Prospector Khazgorm
6207, -- Caverndeep Ambusher
6215); -- Chomper

-- https://www.wowhead.com/tbc/item=4364/coarse-blasting-powder
DELETE FROM `creature_loot_template` WHERE `item` = 4364 AND `entry` IN (
657, -- Defias Pirate
4416, -- Defias Strip Miner
641, -- Goblin Woodcarver
550, -- Defias Messenger
589, -- Defias Pillager
171, -- Murloc Warrior
6207, -- Caverndeep Ambusher
6211, -- Caverndeep Reaver
3378, -- Bael'dun Officer
6020, -- Slimeshell Makrura
127, -- Murloc Tidehunter
7603, -- Leprous Assistant
6668, -- Lord Cyrik Blackforge
3376, -- Bael'dun Soldier
3283, -- Venture Co. Enforcer
3377, -- Bael'dun Rifleman
590, -- Defias Looter
517, -- Murloc Oracle
3947, -- Goblin Shipbuilder
6206, -- Caverndeep Burrower
4418, -- Defias Wizard
3286, -- Venture Co. Overseer
3374, -- Bael'dun Excavator
6329, -- Irradiated Pillager
4417, -- Defias Taskmaster
3392, -- Prospector Khazgorm
3375, -- Bael'dun Foreman
6222, -- Leprous Technician
458, -- Murloc Hunter
5849, -- Digger Flameforge
9336, -- Boss Copperplug
6215); -- Chomper

-- https://www.wowhead.com/tbc/item=4363/copper-modulator
DELETE FROM `creature_loot_template` WHERE `item` = 4363 AND `entry` IN (
3283, -- Venture Co. Enforcer
590, -- Defias Looter
3947, -- Goblin Shipbuilder
3392, -- Prospector Khazgorm
3377, -- Bael'dun Rifleman
3286, -- Venture Co. Overseer
641, -- Goblin Woodcarver
589, -- Defias Pillager
458, -- Murloc Hunter
6329, -- Irradiated Pillager
6206, -- Caverndeep Burrower
3376, -- Bael'dun Soldier
4416, -- Defias Strip Miner
4417, -- Defias Taskmaster
7603, -- Leprous Assistant
3378, -- Bael'dun Officer
6211, -- Caverndeep Reaver
6207, -- Caverndeep Ambusher
4418, -- Defias Wizard
3375, -- Bael'dun Foreman
3374, -- Bael'dun Excavator
6222, -- Leprous Technician
9336, -- Boss Copperplug
6215); -- Chomper

-- https://www.wowhead.com/classic/item=4361/copper-tube
DELETE FROM `creature_loot_template` WHERE `item` = 4361 AND `entry` IN (
127, -- Murloc Tidehunter
3283, -- Venture Co. Enforcer
3947, -- Goblin Shipbuilder
4417, -- Defias Taskmaster
4418, -- Defias Wizard
171, -- Murloc Warrior
458, -- Murloc Hunter
589, -- Defias Pillager
590, -- Defias Looter
641, -- Goblin Woodcarver
3286, -- Venture Co. Overseer
657); -- Defias Pirate

-- https://www.wowhead.com/classic/item=4405/crude-scope
DELETE FROM `creature_loot_template` WHERE `item` = 4405 AND `comments` = 'Crude Scope';

-- https://www.wowhead.com/classic/item=4359/handful-of-copper-bolts
DELETE FROM `creature_loot_template` WHERE `item` = 4359 AND `entry` IN (
517, -- Murloc Oracle
589, -- Defias Pillager
590, -- Defias Looter
171, -- Murloc Warrior
641, -- Goblin Woodcarver
3283, -- Venture Co. Enforcer
3286, -- Venture Co. Overseer
4418, -- Defias Wizard
4416, -- Defias Strip Miner
4417, -- Defias Taskmaster
3947, -- Goblin Shipbuilder
458); -- Murloc Hunter

-- https://www.wowhead.com/classic/item=4377/heavy-blasting-powder
DELETE FROM `creature_loot_template` WHERE `item` = 4377 AND `entry` IN (
7603, -- Leprous Assistant
3392, -- Prospector Khazgorm
6206, -- Caverndeep Burrower
6207, -- Caverndeep Ambusher
6222, -- Leprous Technician
3378, -- Bael'dun Officer
3377, -- Bael'dun Rifleman
3376, -- Bael'dun Soldier
3375, -- Bael'dun Foreman
3713, -- Wrathtail Wave Rider
3374, -- Bael'dun Excavator
2369, -- Daggerspine Shorehunter
6329, -- Irradiated Pillager
3721, -- Mystlash Hydra
6215); -- Chomper

-- https://www.wowhead.com/classic/item=10505/solid-blasting-powder
DELETE FROM `creature_loot_template` WHERE `item` = 10505 AND `entry` IN (
14123, -- Steeljaw Snapper
10447, -- Chromatic Dragonspawn
13896); -- Scalebeard

-- https://www.wowhead.com/classic/item=4405/crude-scope
DELETE FROM `creature_loot_template` WHERE `item` = 9355 AND `comments` = 'Hoop Earring';

-- https://www.wowhead.com/classic/item=3369/grave-moss
DELETE FROM `creature_loot_template` WHERE `item` = 3369 AND `comments` = 'Grave Moss';

-- https://www.wowhead.com/classic/item=5833/indurium-ore
DELETE FROM `creature_loot_template` WHERE `item` = 5833 AND `comments` = 'Indurium Ore';

-- https://www.wowhead.com/classic/item=4957/old-moneybag
DELETE FROM `creature_loot_template` WHERE `item` = 4957 AND `comments` = 'Old Moneybag';

-- https://www.wowhead.com/classic/item=11110/chicken-egg
DELETE FROM `creature_loot_template` WHERE `item` = 11110 AND `comments` = 'Chicken Egg';

-- https://www.wowhead.com/classic/item=10298/gnomeregan-band
DELETE FROM `creature_loot_template` WHERE `item` = 10298 AND `comments` = 'Gnomeregan Band';

-- https://www.wowhead.com/classic/item=10299/gnomeregan-amulet
DELETE FROM `creature_loot_template` WHERE `item` = 10299 AND `comments` = 'Gnomeregan Amulet';

-- https://www.wowhead.com/classic/item=12361/blue-sapphire
DELETE FROM `creature_loot_template` WHERE `item` = 12361 AND `comments` = 'Blue Sapphire';

-- https://www.wowhead.com/classic/item=12364/huge-emerald
DELETE FROM `creature_loot_template` WHERE `item` = 12364 AND `comments` = 'Huge Emerald';

-- https://www.wowhead.com/classic/item=16748/padded-lining
DELETE FROM `creature_loot_template` WHERE `item` = 16748 AND `comments` = 'Padded Lining';

-- https://www.wowhead.com/classic/item=21042/narains-special-kit#contains
DELETE FROM `creature_loot_template` WHERE `item` = 21037 AND `comments` = 'Crude Map';
DELETE FROM `creature_loot_template` WHERE `item` = 21039 AND `comments` = 'Narain\'s Turban';
DELETE FROM `creature_loot_template` WHERE `item` = 21040 AND `comments` = 'Narain\'s Robe';

-- Table 'creature_loot_template' entry 888 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 7549 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 10262 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 11521 (creature entry) not exist but used as loot id in DB.
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` IN (888,7549,10262,11521);

