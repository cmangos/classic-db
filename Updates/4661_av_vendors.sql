-- https://github.com/cmangos/issues/issues/3268 - some items are shared between factions
UPDATE `item_template` SET `RequiredReputationFaction` = 0, `RequiredReputationRank` = 0 WHERE `entry` IN (
19029, -- Horn of the Frostwolf Howler
19030, -- Stormpike Battle Charger
19031, -- Frostwolf Battle Tabard
19032, -- Stormpike Battle Tabard
19045, -- Stormpike Battle Standard
19046, -- Frostwolf Battle Standard
19083, -- Frostwolf Legionnaire's Cloak
19084, -- Stormpike Soldier's Cloak
19085, -- Frostwolf Advisor's Cloak
19086, -- Stormpike Sage's Cloak
19087, -- Frostwolf Plate Belt
19088, -- Frostwolf Mail Belt
19089, -- Frostwolf Leather Belt
19090, -- Frostwolf Cloth Belt
19091, -- Stormpike Plate Girdle
19092, -- Stormpike Mail Girdle
19093, -- Stormpike Leather Girdle
19094, -- Stormpike Cloth Girdle
19095, -- Frostwolf Legionnaire's Pendant
19096, -- Frostwolf Advisor's Pendant
19097, -- Stormpike Soldier's Pendant
19098, -- Stormpike Sage's Pendant
19099, -- Glacial Blade
19100, -- Electrified Dagger
19101, -- Whiteout Staff
19102, -- Crackling Staff
19103, -- Frostbite
19104, -- Stormstrike Hammer
19308, -- Tome of Arcane Domination
19309, -- Tome of Shadow Force
19310, -- Tome of the Ice Lord
19311, -- Tome of Fiery Arcana
19312, -- Lei of the Lifegiver
19315, -- Therazane's Touch
19316, -- Ice Threaded Arrow
19317, -- Ice Threaded Bullet
19319, -- Harpy Hide Quiver
19320, -- Gnoll Skin Bandolier
19321, -- The Immovable Object
19323, -- The Unstoppable Force
19324, -- The Lobotomizer
19325, -- Don Julio's Band
21563); -- Don Rodrigo's Band
		
-- https://www.wowhead.com/classic/npc=13216/gaelden-hammersmith#comments:id=2915401
-- Friendly: Tabbard, Bottled Alterac Spring Water, Alterac Heavy Runecloth Bandage, Superior Healing/Mana Draughts
-- Honored: Major Healing/Mana Draughts, Alterac Manna Biscuit, Rare Cloaks, Ice Threaded Arrows/Bullets, Rare Necklaces
-- Revered: Battle Standard, Rare Weapons, Rare Ammo Pouch/Quiver
-- Exalted: Stormpike Mount, Epic Offhand Items, Epic Rings, Epic Weapons.
DELETE FROM `npc_vendor` WHERE `entry` IN (13216,13217,13218,13219); -- diff: 19483,19484, which are quest items
UPDATE `creature_template` SET `VendorTemplateId` = 512 WHERE `entry` = 13216; -- Gaelden Hammersmith	Stormpike Supply Officer
UPDATE `creature_template` SET `VendorTemplateId` = 512 WHERE `entry` = 13217; -- Thanthaldis Snowgleam	Stormpike Supply Officer
UPDATE `creature_template` SET `VendorTemplateId` = 513 WHERE `entry` = 13218; -- Grunnda Wolfheart	Frostwolf Supply Officer
UPDATE `creature_template` SET `VendorTemplateId` = 513 WHERE `entry` = 13219; -- Jekyll Flandring	Frostwolf Supply Officer

-- Vmangos Conditions - classic only
-- Alliance
-- 144	5	730	5	0	0	0
-- 145	5	730	4	0	0	0
-- 147	5	730	7	0	0	0
-- 152	5	730	6	0	0	0
-- Horde
-- 153	5	729	5	0	0	0
-- 154	5	729	4	0	0	0
-- 155	5	729	7	0	0	0
-- 156	5	729	6	0	0	0
DELETE FROM `conditions` WHERE `type` = 5 AND `condition_entry` BETWEEN 3001 AND 3008;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(3001, 5, 730, 4, 0, 0, 0, ''), -- 145
(3002, 5, 730, 5, 0, 0, 0, ''), -- 144
(3003, 5, 730, 6, 0, 0, 0, ''), -- 152
(3004, 5, 730, 7, 0, 0, 0, ''), -- 147
(3005, 5, 729, 4, 0, 0, 0, ''), -- 154
(3006, 5, 729, 5, 0, 0, 0, ''), -- 153
(3007, 5, 729, 6, 0, 0, 0, ''), -- 156
(3008, 5, 729, 7, 0, 0, 0, ''); -- 155

DELETE FROM `npc_vendor_template` WHERE `entry` IN (512,513); -- tbcmangos
-- Alliance
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(512, 17348, 0, 0, 6, 3002, 'Major Healing Draught'),
(512, 17349, 0, 0, 1, 3001, 'Superior Healing Draught'),
(512, 17351, 0, 0, 7, 3002, 'Major Mana Draught'),
(512, 17352, 0, 0, 2, 3001, 'Superior Mana Draught'),
(512, 19030, 0, 0, 25, 3004, 'Stormpike Battle Charger'),
(512, 19032, 0, 0, 3, 3001, 'Stormpike Battle Tabard'),
(512, 19045, 0, 0, 19, 3003, 'Stormpike Battle Standard'),
(512, 19084, 0, 0, 8, 3002, 'Stormpike Soldier\'s Cloak'),
(512, 19086, 0, 0, 9, 3002, 'Stormpike Sage\'s Cloak'),
(512, 19091, 0, 0, 12, 3002, 'Stormpike Plate Girdle'),
(512, 19092, 0, 0, 13, 3002, 'Stormpike Mail Girdle'),
(512, 19093, 0, 0, 14, 3002, 'Stormpike Leather Girdle'),
(512, 19094, 0, 0, 15, 3002, 'Stormpike Cloth Girdle'),
(512, 19097, 0, 0, 10, 3002, 'Stormpike Soldier\'s Pendant'),
(512, 19098, 0, 0, 11, 3002, 'Stormpike Sage\'s Pendant'),
(512, 19100, 0, 0, 20, 3003, 'Electrified Dagger'),
(512, 19102, 0, 0, 21, 3003, 'Crackling Staff'),
(512, 19104, 0, 0, 22, 3003, 'Stormstrike Hammer'),
(512, 19301, 0, 0, 16, 3002, 'Alterac Manna Biscuit'),
(512, 19307, 0, 0, 4, 3001, 'Alterac Heavy Runecloth Bandage'),
(512, 19308, 0, 0, 28, 3004, 'Tome of Arcane Domination'),
(512, 19309, 0, 0, 30, 3004, 'Tome of Shadow Force'),
(512, 19310, 0, 0, 31, 3004, 'Tome of the Ice Lord'),
(512, 19311, 0, 0, 29, 3004, 'Tome of Fiery Arcana'),
(512, 19312, 0, 0, 26, 3004, 'Lei of the Lifegiver'),
(512, 19315, 0, 0, 27, 3004, 'Therazane\'s Touch'),
(512, 19316, 0, 0, 17, 3002, 'Ice Threaded Arrow'),
(512, 19317, 0, 0, 18, 3002, 'Ice Threaded Bullet'),
(512, 19318, 0, 0, 5, 3001, 'Bottled Alterac Spring Water'),
(512, 19319, 0, 0, 24, 3003, 'Harpy Hide Quiver'),
(512, 19320, 0, 0, 23, 3003, 'Gnoll Skin Bandolier'),
(512, 19321, 0, 0, 33, 3004, 'The Immovable Object'),
(512, 19323, 0, 0, 32, 3004, 'The Unstoppable Force'),
(512, 19324, 0, 0, 35, 3004, 'The Lobotomizer'),
(512, 19325, 0, 0, 34, 3004, 'Don Julio\'s Band'),
(512, 21563, 0, 0, 36, 3004, 'Don Rodrigo\'s Band');

-- Horde
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(513, 17348, 0, 0, 6, 3006, 'Major Healing Draught'),
(513, 17349, 0, 0, 1, 3005, 'Superior Healing Draught'),
(513, 17351, 0, 0, 7, 3006, 'Major Mana Draught'),
(513, 17352, 0, 0, 2, 3005, 'Superior Mana Draught'),
(513, 19029, 0, 0, 25, 3008, 'Horn of the Frostwolf Howler'),
(513, 19031, 0, 0, 3, 3005, 'Frostwolf Battle Tabard'),
(513, 19046, 0, 0, 19, 3007, 'Frostwolf Battle Standard'),
(513, 19083, 0, 0, 8, 3006, 'Frostwolf Legionnaire\'s Cloak'),
(513, 19085, 0, 0, 9, 3006, 'Frostwolf Advisor\'s Cloak'),
(513, 19087, 0, 0, 12, 3006, 'Frostwolf Plate Belt'),
(513, 19088, 0, 0, 13, 3006, 'Frostwolf Mail Belt'),
(513, 19089, 0, 0, 14, 3006, 'Frostwolf Leather Belt'),
(513, 19090, 0, 0, 15, 3006, 'Frostwolf Cloth Belt'),
(513, 19095, 0, 0, 10, 3006, 'Frostwolf Legionnaire\'s Pendant'),
(513, 19096, 0, 0, 11, 3006, 'Frostwolf Advisor\'s Pendant'),
(513, 19099, 0, 0, 21, 3007, 'Glacial Blade'),
(513, 19101, 0, 0, 22, 3007, 'Whiteout Staff'),
(513, 19103, 0, 0, 20, 3007, 'Frostbite'),
(513, 19301, 0, 0, 16, 3006, 'Alterac Manna Biscuit'),
(513, 19307, 0, 0, 4, 3005, 'Alterac Heavy Runecloth Bandage'),
(513, 19308, 0, 0, 28, 3008, 'Tome of Arcane Domination'),
(513, 19309, 0, 0, 30, 3008, 'Tome of Shadow Force'),
(513, 19310, 0, 0, 31, 3008, 'Tome of the Ice Lord'),
(513, 19311, 0, 0, 29, 3008, 'Tome of Fiery Arcana'),
(513, 19312, 0, 0, 26, 3008, 'Lei of the Lifegiver'),
(513, 19315, 0, 0, 27, 3008, 'Therazane\'s Touch'),
(513, 19316, 0, 0, 17, 3006, 'Ice Threaded Arrow'),
(513, 19317, 0, 0, 18, 3006, 'Ice Threaded Bullet'),
(513, 19318, 0, 0, 5, 3005, 'Bottled Alterac Spring Water'),
(513, 19319, 0, 0, 24, 3007, 'Harpy Hide Quiver'),
(513, 19320, 0, 0, 23, 3007, 'Gnoll Skin Bandolier'),
(513, 19321, 0, 0, 33, 3008, 'The Immovable Object'),
(513, 19323, 0, 0, 32, 3008, 'The Unstoppable Force'),
(513, 19324, 0, 0, 35, 3008, 'The Lobotomizer'),
(513, 19325, 0, 0, 34, 3008, 'Don Julio\'s Band'),
(513, 21563, 0, 0, 36, 3008, 'Don Rodrigo\'s Band');

-- tbc+
-- UPDATE `npc_vendor_template` SET `condition_id` = 0 WHERE `entry` IN (512,513); -- import for slot order

