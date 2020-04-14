-- Add missing condition for Ashbringer event
DELETE FROM conditions WHERE condition_entry=9000;
INSERT INTO `conditions` VALUES (9000, 3, 22691, 1, 'Player Has Item ID 22691 Equipped');

-- Fix trainer spells
UPDATE creature_template SET TrainerTemplateId=0 WHERE Entry=8128;

-- Moved creature: unused waypoints
DELETE FROM creature_movement WHERE id=134802;

-- Remove now unused NPC gossip (moved to gossip menu and broadcast text)
DELETE FROM npc_gossip WHERE npc_guid=143027;

-- Add missing creature loot for Mushgog
UPDATE creature_template SET LootId=11447 WHERE Entry=11447;

DELETE FROM creature_loot_template WHERE entry=11447 AND item=35015;
INSERT INTO `creature_loot_template` VALUES (11447, 35015, 100, 1, -35015, 2, 0, '');

DELETE FROM reference_loot_template WHERE entry=35015;
INSERT INTO `reference_loot_template` VALUES 
(35015, 1973, 0, 1, 1, 1, 0, 'Orb of Deception'),
(35015, 4696, 0, 1, 1, 1, 0, 'Lapidis Tankard of Tidesippe'),
(35015, 5267, 0, 1, 1, 1, 0, 'Scarlet Kris'),
(35015, 6622, 0, 1, 1, 1, 0, 'Sword of Zeal'),
(35015, 9402, 0, 1, 1, 1, 0, 'Earthborn Kilt'),
(35015, 13000, 0, 1, 1, 1, 0, 'Staff of Hale Magefire'),
(35015, 13001, 0, 1, 1, 1, 0, 'Maiden\'s Circle'),
(35015, 13002, 0, 1, 1, 1, 0, 'Lady Alizabeth\'s Pendant'),
(35015, 13004, 0, 1, 1, 1, 0, 'Torch of Austen'),
(35015, 13006, 0, 1, 1, 1, 0, 'Mass of McGowan'),
(35015, 13007, 0, 1, 1, 1, 0, 'Mageflame Cloak'),
(35015, 13015, 0, 1, 1, 1, 0, 'Serathil'),
(35015, 13023, 0, 1, 1, 1, 0, 'Eaglehorn Long Bow'),
(35015, 13028, 0, 1, 1, 1, 0, 'Bludstone Hammer'),
(35015, 13036, 0, 1, 1, 1, 0, 'Assassination Blade'),
(35015, 13044, 0, 1, 1, 1, 0, 'Demonslayer'),
(35015, 13047, 0, 1, 1, 1, 0, 'Twig of the World Tree'),
(35015, 13053, 0, 1, 1, 1, 0, 'Doombringer'),
(35015, 13060, 0, 1, 1, 1, 0, 'The Needler'),
(35015, 13070, 0, 1, 1, 1, 0, 'Sapphiron\'s Scale Boots'),
(35015, 13072, 0, 1, 1, 1, 0, 'Stonegrip Gauntlets'),
(35015, 13075, 0, 1, 1, 1, 0, 'Direwing Legguards'),
(35015, 13077, 0, 1, 1, 1, 0, 'Girdle of Uther'),
(35015, 13083, 0, 1, 1, 1, 0, 'Garrett Family Crest'),
(35015, 13091, 0, 1, 1, 1, 0, 'Medallion of Grand Marshal Morris'),
(35015, 13096, 0, 1, 1, 1, 0, 'Band of the Hierophant'),
(35015, 13101, 0, 1, 1, 1, 0, 'Wolfrunner Shoes'),
(35015, 13107, 0, 1, 1, 1, 0, 'Magiskull Cuffs'),
(35015, 13113, 0, 1, 1, 1, 0, 'Feathermoon Headdress'),
(35015, 13116, 0, 1, 1, 1, 0, 'Spaulders of the Unseen'),
(35015, 13118, 0, 1, 1, 1, 0, 'Serpentine Sash'),
(35015, 13123, 0, 1, 1, 1, 0, 'Dreamwalker Armor'),
(35015, 13133, 0, 1, 1, 1, 0, 'Drakesfire Epaulets'),
(35015, 13135, 0, 1, 1, 1, 0, 'Lordly Armguards'),
(35015, 13146, 0, 1, 1, 1, 0, 'Shell Launcher Shotgun'),
(35015, 23197, 0, 1, 1, 1, 0, 'Idol of the Moon'),
(35015, 23199, 0, 1, 1, 1, 0, 'Totem of the Storm'),
(35015, 23203, 0, 1, 1, 1, 0, 'Libram of Fervor');

