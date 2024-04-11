-- Qixdi Goodstitch 2849
-- vendor list corrected
-- rings
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (2849) AND item = 7338; -- Mood Ring
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (2849) AND item = 7339; -- Miniscule Diamond Ring
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (2849) AND item = 7340; -- Flawless Diamond Solitaire
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (2849) AND item = 7341; -- Cubic Zirconia Ring
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (2849) AND item = 7342; -- Silver Piffeny Band
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (2849) AND item = 7337; -- The Rock
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (2849) AND item = 37934; -- Noble\'s Elementium Signet - wotlk+
-- cloth armor
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (2849) AND item = 200; -- Thick Cloth Vest
UPDATE npc_vendor SET Slot = 9 WHERE entry IN (2849) AND item = 3597; -- Thick Cloth Belt
UPDATE npc_vendor SET Slot = 10 WHERE entry IN (2849) AND item = 201; -- Thick Cloth Pants
UPDATE npc_vendor SET Slot = 11 WHERE entry IN (2849) AND item = 202; -- Thick Cloth Shoes
UPDATE npc_vendor SET Slot = 12 WHERE entry IN (2849) AND item = 3598; -- Thick Cloth Bracers
UPDATE npc_vendor SET Slot = 13 WHERE entry IN (2849) AND item = 203; -- Thick Cloth Gloves
UPDATE npc_vendor SET Slot = 14 WHERE entry IN (2849) AND item = 2160; -- Padded Armor
UPDATE npc_vendor SET Slot = 15 WHERE entry IN (2849) AND item = 3591; -- Padded Belt
UPDATE npc_vendor SET Slot = 16 WHERE entry IN (2849) AND item = 2159; -- Padded Pants
UPDATE npc_vendor SET Slot = 17 WHERE entry IN (2849) AND item = 2156; -- Padded Boots
UPDATE npc_vendor SET Slot = 18 WHERE entry IN (2849) AND item = 3592; -- Padded Bracers
UPDATE npc_vendor SET Slot = 19 WHERE entry IN (2849) AND item = 2158; -- Padded Gloves
UPDATE npc_vendor SET Slot = 20 WHERE entry IN (2849) AND item = 2429; -- Russet Vest
UPDATE npc_vendor SET Slot = 21 WHERE entry IN (2849) AND item = 3593; -- Russet Belt
UPDATE npc_vendor SET Slot = 22 WHERE entry IN (2849) AND item = 2431; -- Russet Pants
UPDATE npc_vendor SET Slot = 23 WHERE entry IN (2849) AND item = 2432; -- Russet Boots
UPDATE npc_vendor SET Slot = 24 WHERE entry IN (2849) AND item = 3594; -- Russet Bracers
UPDATE npc_vendor SET Slot = 25 WHERE entry IN (2849) AND item = 2434; -- Russet Gloves
UPDATE npc_vendor SET Slot = 26 WHERE entry IN (2849) AND item = 3889; -- Russet Hat
UPDATE npc_vendor SET Slot = 27 WHERE entry IN (2849) AND item = 2435; -- Embroidered Armor
UPDATE npc_vendor SET Slot = 28 WHERE entry IN (2849) AND item = 3587; -- Embroidered Belt
UPDATE npc_vendor SET Slot = 29 WHERE entry IN (2849) AND item = 2437; -- Embroidered Pants
UPDATE npc_vendor SET Slot = 30 WHERE entry IN (2849) AND item = 2438; -- Embroidered Boots
UPDATE npc_vendor SET Slot = 31 WHERE entry IN (2849) AND item = 3588; -- Embroidered Bracers
UPDATE npc_vendor SET Slot = 32 WHERE entry IN (2849) AND item = 2440; -- Embroidered Gloves
UPDATE npc_vendor SET Slot = 33 WHERE entry IN (2849) AND item = 3892; -- Embroidered Hat

DELETE FROM `npc_vendor` WHERE `entry` =  2849 AND `item` = 7338;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(2849, 7338, 0, 0, 1, 0, 'Mood Ring');

