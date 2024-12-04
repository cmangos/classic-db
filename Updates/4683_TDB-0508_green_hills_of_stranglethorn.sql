-- Add reference_loot_template for Green Hills of Stranglethorn Pages
-- wotlkmangos already has it but misses npcs somehow.
-- https://web.archive.org/web/20080418070110/http://wow.allakhazam.com/db/item.html?witem=2751
-- https://web.archive.org/web/20080418070105/http://wow.allakhazam.com/db/item.html?witem=2750
-- https://web.archive.org/web/20080418070100/http://wow.allakhazam.com/db/item.html?witem=2749
-- https://web.archive.org/web/20080418070055/http://wow.allakhazam.com/db/item.html?witem=2748
-- https://web.archive.org/web/20080418070050/http://wow.allakhazam.com/db/item.html?witem=2745
-- https://web.archive.org/web/20080422025132/http://wow.allakhazam.com/db/item.html?witem=2744
-- https://web.archive.org/web/20080418070045/http://wow.allakhazam.com/db/item.html?witem=2742
-- https://web.archive.org/web/20080418070040/http://wow.allakhazam.com/db/item.html?witem=2740
-- https://web.archive.org/web/20080418070035/http://wow.allakhazam.com/db/item.html?witem=2738
-- https://web.archive.org/web/20080418070032/http://wow.allakhazam.com/db/item.html?witem=2735
-- https://web.archive.org/web/20080418070024/http://wow.allakhazam.com/db/item.html?witem=2734
-- https://web.archive.org/web/20080417224916/http://wow.allakhazam.com/db/item.html?witem=2732
-- https://web.archive.org/web/20080417224912/http://wow.allakhazam.com/db/item.html?witem=2730
-- https://web.archive.org/web/20080417224906/http://wow.allakhazam.com/db/item.html?witem=2728
-- https://web.archive.org/web/20080417224901/http://wow.allakhazam.com/db/item.html?witem=2725
DELETE FROM `reference_loot_template` WHERE `entry` IN (24094,30020) AND `item` IN (2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751); -- wotlkmangos
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(30020, 2725, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 1'), -- https://www.wowhead.com/tbc/item=2725/green-hills-of-stranglethorn-page-1#dropped-by;0-10-11+1
(30020, 2728, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 4'), -- https://www.wowhead.com/tbc/item=2728/green-hills-of-stranglethorn-page-4#dropped-by;0-10-11+1
(30020, 2730, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 6'), -- https://www.wowhead.com/tbc/item=2730/green-hills-of-stranglethorn-page-6#dropped-by;0-10-11+1
(30020, 2732, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 8'), -- https://www.wowhead.com/tbc/item=2732/green-hills-of-stranglethorn-page-8#dropped-by;0-10-11+1
(30020, 2734, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 10'), -- https://www.wowhead.com/tbc/item=2734/green-hills-of-stranglethorn-page-10#dropped-by;0-10-11+1
(30020, 2735, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 11'), -- https://www.wowhead.com/tbc/item=2735/green-hills-of-stranglethorn-page-11#dropped-by;0-10-11+1
(30020, 2738, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 14'), -- https://www.wowhead.com/tbc/item=2738/green-hills-of-stranglethorn-page-14#dropped-by;0-10-11+1
(30020, 2740, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 16'), -- https://www.wowhead.com/tbc/item=2740/green-hills-of-stranglethorn-page-16#dropped-by;0-10-11+1
(30020, 2742, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 18'), -- https://www.wowhead.com/tbc/item=2742/green-hills-of-stranglethorn-page-18#dropped-by;0-10-11+1
(30020, 2744, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 20'), -- https://www.wowhead.com/tbc/item=2744/green-hills-of-stranglethorn-page-20#dropped-by;0-10-11+1
(30020, 2745, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 21'), -- https://www.wowhead.com/tbc/item=2745/green-hills-of-stranglethorn-page-21#dropped-by;0-10-11+1
(30020, 2748, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 24'), -- https://www.wowhead.com/tbc/item=2748/green-hills-of-stranglethorn-page-24#dropped-by;0-10-11+1
(30020, 2749, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 25'), -- https://www.wowhead.com/tbc/item=2749/green-hills-of-stranglethorn-page-25#dropped-by;0-10-11+1
(30020, 2750, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 26'), -- https://www.wowhead.com/tbc/item=2750/green-hills-of-stranglethorn-page-26#dropped-by;0-10-11+1
(30020, 2751, 0, 1, 1, 1, 0, 'Green Hills of Stranglethorn - Page 27'); -- https://www.wowhead.com/tbc/item=2751/green-hills-of-stranglethorn-page-27#dropped-by;0-10-11+1

DELETE FROM `reference_loot_template_names` WHERE `entry` IN (24094,30020);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (30020, 'Green Hills of Stranglethorn - Page');

-- wotlk diff
-- 1059,1060,1061,1062,1094,1095,1096,1097,1142,1144,1421,1488,1489,1490,1491,1492,1493,1494,1561,1562,1563,1564,1565,1653
DELETE FROM `creature_loot_template` where `item` IN (2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751); -- -1509
DELETE FROM `creature_loot_template` WHERE `mincountOrRef` IN (-24094,-30020); -- +102 * 15 = 1530
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`)
SELECT `entry`, 30020, 10, 0, -30020, 1 FROM `creature_template` WHERE `entry` IN (
587, -- Bloodscalp Warrior
588, -- Bloodscalp Scout
595, -- Bloodscalp Hunter
597, -- Bloodscalp Berserker
660, -- Bloodscalp Witch Doctor
667, -- Skullsplitter Warrior
669, -- Skullsplitter Hunter
670, -- Skullsplitter Witch Doctor
671, -- Bloodscalp Headhunter
672, -- Skullsplitter Spiritchaser
674, -- Venture Co. Strip Miner
675, -- Venture Co. Foreman
676, -- Venture Co. Surveyor
677, -- Venture Co. Tinkerer
678, -- Mosh'Ogg Mauler
679, -- Mosh'Ogg Shaman
680, -- Mosh'Ogg Lord
694, -- Bloodscalp Axe Thrower
696, -- Skullsplitter Axe Thrower
697, -- Bloodscalp Shaman
699, -- Bloodscalp Beastmaster
701, -- Bloodscalp Mystic
702, -- Bloodscalp Scavenger
709, -- Mosh'Ogg Warmonger
710, -- Mosh'Ogg Spellcrafter
723, -- Mosh'Ogg Butcher
775, -- Kurzen's Agent
780, -- Skullsplitter Mystic
781, -- Skullsplitter Headhunter
782, -- Skullsplitter Scout
783, -- Skullsplitter Berserker
784, -- Skullsplitter Beastmaster
813, -- Colonel Kurzen
814, -- Sergeant Malthus
815, -- Bookie Herod
818, -- Mai'Zoth
871, -- Saltscale Warrior
873, -- Saltscale Oracle
875, -- Saltscale Tide Lord
877, -- Saltscale Forager
879, -- Saltscale Hunter
921, -- Venture Co. Lumberjack
937, -- Kurzen Jungle Fighter
938, -- Kurzen Commando
939, -- Kurzen Elite
940, -- Kurzen Medicine Man
941, -- Kurzen Headshrinker
942, -- Kurzen Witch Doctor
943, -- Kurzen Wrangler
978, -- Kurzen Subchief
979, -- Kurzen Shadow Hunter
1059, -- Ana'thek the Cruel
1060, -- Mogh the Undying
1061, -- Gan'zulah
1062, -- Nezzliok the Dire
1094, -- Venture Co. Miner
1095, -- Venture Co. Workboss
1096, -- Venture Co. Geologist
1097, -- Venture Co. Mechanic
1142, -- Mosh'Ogg Brute
1144, -- Mosh'Ogg Witch Doctor
1421, -- Private Merle
1488, -- Zanzil Zombie
1489, -- Zanzil Hunter
1490, -- Zanzil Witch Doctor
1491, -- Zanzil Naga
1492, -- Gorlash
1493, -- Mok'rash
1494, -- Negolash
1561, -- Bloodsail Raider
1562, -- Bloodsail Mage
1563, -- Bloodsail Swashbuckler
1564, -- Bloodsail Warlock
1565, -- Bloodsail Sea Dog
1653, -- Bloodsail Elder Magus
1907, -- Naga Explorer
2530, -- Yenniku
2534, -- Zanzil the Outcast
2535, -- Maury "Club Foot" Wilkins
2536, -- Jon-Jon the Crow
2537, -- Chucky "Ten Thumbs"
2541, -- Lord Sakrasis
2545, -- "Pretty Boy" Duncan
2546, -- Fleet Master Firallon
2547, -- Ironpatch
2548, -- Captain Keelhaul
2549, -- Garr Salthoof
2550, -- Captain Stillwater
2551, -- Brutus
2624, -- Gazban
4260, -- Venture Co. Shredder
4457, -- Murkgill Forager
4458, -- Murkgill Hunter
4459, -- Murkgill Oracle
4460, -- Murkgill Lord
4461, -- Murkgill Warrior
4505, -- Bloodsail Deckhand
4506, -- Bloodsail Swabby
4723, -- Foreman Cozzle
14487, -- Gluggle
14488, -- Roloch
14492); -- Verifonix

