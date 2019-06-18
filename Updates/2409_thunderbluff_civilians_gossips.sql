-- Adding Game event entries

-- Vendors
INSERT INTO game_event_creature_data VALUES (26576, 0, 0, 0, 27654, 0, 8); -- Pakwa
INSERT INTO game_event_creature_data VALUES (26573, 0, 0, 0, 27654, 0, 8); -- Kuruk
INSERT INTO game_event_creature_data VALUES (26575, 0, 0, 0, 27654, 0, 8); -- Shadi Mistrunner
INSERT INTO game_event_creature_data VALUES (26617, 0, 0, 0, 27654, 0, 8); -- Jyn Stonehoof
INSERT INTO game_event_creature_data VALUES (26569, 0, 0, 0, 27654, 0, 8); -- Elki
INSERT INTO game_event_creature_data VALUES (26565, 0, 0, 0, 27654, 0, 8); -- Hewa
INSERT INTO game_event_creature_data VALUES (26572, 0, 0, 0, 27654, 0, 8); -- Chepi
INSERT INTO game_event_creature_data VALUES (26622, 0, 0, 0, 27654, 0, 8); -- Fyr Mistrunner
INSERT INTO game_event_creature_data VALUES (26621, 0, 0, 0, 27654, 0, 8); -- Kurm Stonehoof
INSERT INTO game_event_creature_data VALUES (26619, 0, 0, 0, 27654, 0, 8); -- Taur Stonehoof
INSERT INTO game_event_creature_data VALUES (26635, 0, 0, 0, 27654, 0, 8); -- Tand
INSERT INTO game_event_creature_data VALUES (26629, 0, 0, 0, 27654, 0, 8); -- Mani Winterhoof
INSERT INTO game_event_creature_data VALUES (26631, 0, 0, 0, 27654, 0, 8); -- Nata Dawnstrider
INSERT INTO game_event_creature_data VALUES (26624, 0, 0, 0, 27654, 0, 8); -- Mahu
INSERT INTO game_event_creature_data VALUES (24710, 0, 0, 0, 27654, 0, 8); -- Tagain
INSERT INTO game_event_creature_data VALUES (24712, 0, 0, 0, 27654, 0, 8); -- Fela
INSERT INTO game_event_creature_data VALUES (24711, 0, 0, 0, 27654, 0, 8); -- Grod
INSERT INTO game_event_creature_data VALUES (26634, 0, 0, 0, 27654, 0, 8); -- Kuna Thunderhorn
INSERT INTO game_event_creature_data VALUES (26636, 0, 0, 0, 27654, 0, 8); -- Nan Mistrunner
INSERT INTO game_event_creature_data VALUES (26633, 0, 0, 0, 27654, 0, 8); -- Nida Winterhoof
INSERT INTO game_event_creature_data VALUES (26641, 0, 0, 0, 27654, 0, 8); -- Sunn Ragetotem
INSERT INTO game_event_creature_data VALUES (26648, 0, 0, 0, 27654, 0, 8); -- Kaga Mistrunner
INSERT INTO game_event_creature_data VALUES (26653, 0, 0, 0, 27654, 0, 8); -- Sewa Mistrunner
INSERT INTO game_event_creature_data VALUES (26637, 0, 0, 0, 27654, 0, 8); -- Hogor Thunderhoof
INSERT INTO game_event_creature_data VALUES (26638, 0, 0, 0, 27654, 0, 8); -- Delgo Ragetotem
INSERT INTO game_event_creature_data VALUES (26639, 0, 0, 0, 27654, 0, 8); -- Etu Ragetotem
INSERT INTO game_event_creature_data VALUES (26642, 0, 0, 0, 27654, 0, 8); -- Ohanko
INSERT INTO game_event_creature_data VALUES (26640, 0, 0, 0, 27654, 0, 8); -- Kard Ragetotem
INSERT INTO game_event_creature_data VALUES (26645, 0, 0, 0, 27654, 0, 8); -- Sura Wildmane
INSERT INTO game_event_creature_data VALUES (26650, 0, 0, 0, 27654, 0, 8); -- Naal Mistrunner


-- Questgivers
INSERT INTO game_event_creature_data VALUES (24933, 0, 0, 0, 27654, 0, 8); -- Sage Truthseeker
INSERT INTO game_event_creature_data VALUES (24778, 0, 0, 0, 27654, 0, 8); -- Auld Stonespire
INSERT INTO game_event_creature_data VALUES (26574, 0, 0, 0, 27654, 0, 8); -- Eyahn Eagletalon
INSERT INTO game_event_creature_data VALUES (24678, 0, 0, 0, 27654, 0, 8); -- Orm Stonehoof
INSERT INTO game_event_creature_data VALUES (26777, 0, 0, 0, 27654, 0, 8); -- Veren Tallstrider
INSERT INTO game_event_creature_data VALUES (24790, 0, 0, 0, 27654, 0, 8); -- Zangen Stonehoof
INSERT INTO game_event_creature_data VALUES (26567, 0, 0, 0, 27654, 0, 8); -- Clarice Foster
INSERT INTO game_event_creature_data VALUES (24707, 0, 0, 0, 27654, 0, 8); -- Xanis Flameweaver
INSERT INTO game_event_creature_data VALUES (24934, 0, 0, 0, 27654, 0, 8); -- Nara Wildmane

-- Non Questgiver/Vendors
INSERT INTO game_event_creature_data VALUES (26646, 0, 0, 0, 27654, 0, 8); -- Tah Winterhoof
INSERT INTO game_event_creature_data VALUES (26792, 0, 0, 0, 27654, 0, 8); -- Pawe Mistrunner
INSERT INTO game_event_creature_data VALUES (26754, 0, 0, 0, 27654, 0, 8); -- Sheza Wildmane
-- Adding/Removing Gossip Options
-- Vendors
-- Pakwa
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=8364;  

-- Kuruk
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=8362; 

-- Shadi Mistrunner
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=8363;

-- Jyn Stonehoof
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=2997;

-- Elki
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=8360; 

-- Hewa
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=8358;

-- Chepi
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=8361;

-- Fyr Mistrunner
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3003;

-- Kurm Stonehoof
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3002;

-- Taur Stonehoof
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=2999;

-- Tand
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3016;

-- Mani Winterhoof
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3010;

-- Nata Dawnstrider
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3012;

-- Mahu
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3005;

-- Tagain
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3092;

-- Fela
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3095;

-- Grod
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3093;

-- Kuna Thinderhorn
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3015;

-- Nan Mistrunner
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3017;

-- Nida Winterhoof
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3014;

-- Sunn Ragetotem
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3022;

-- Kaga Mistrunner
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3025;

-- Sewa Mistrunner
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3029;

-- Hogor Thunderhoof
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3018;

-- Delgo Ragetotem
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3019;

-- Etu Ragetotem
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3020;

-- Ohanko
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=8398;

-- Kard Ragetotem
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3021;

-- Sura Wildmane
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3023;

-- Naal Mistrunner
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3027;

-- Questgivers
-- Sage Truthseeker
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3978;

-- Auld Stonespire
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=4451;

-- Eyahn Eagletalon
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=2987;

-- Orm Stonehoof
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=6410;

-- Veren Tallstrider
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3050;

-- Zangen Stonehoof
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=4721;

-- Clarice Foster
UPDATE creature_template SET GossipMenuId=12858 WHERE Entry=5543;

-- Xanis Flameweaver
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=5906;

-- Nara Wildmane
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=5770;

-- Non Questgiver/Vendors
-- Tah Winterhoof
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3024;

-- Pawe Mistrunner
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3447;

-- Sheza Wildmane
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3037;

-- Ahanu, Thrumn, Krumn, Apothecary Zamrah, Saern Priderunner, Bluff Runner Windstrider(specific gossip), Magatha, Cor and Gorm Grimtotem, Hamuul Runetotem, Rahauro, Kon Yelloweyes + Melor Stonehoof + Henen Ragetotem + Mosarn(faction 83)
