-- Fixed drop of item 22890 (Tome of Frost Ward rank V)
-- It should drop from world bosses, not basic NPCs in dungeons lvl 55+
DELETE FROM `creature_loot_template` WHERE `item` = 22890;
INSERT INTO `creature_loot_template` VALUES
(6109, 22890, 5, 0, 1, 1, 0),
(14887, 22890, 5, 0, 1, 1, 0),
(14888, 22890, 5, 0, 1, 1, 0),
(14889, 22890, 5, 0, 1, 1, 0),
(14890, 22890, 5, 0, 1, 1, 0);
