-- Noth 15954 faction specific loot - classic only!
-- https://www.wowhead.com/tbc/npc=15954/noth-the-plaguebringer
-- https://github.com/LightsHope/server/issues/372
UPDATE `creature_loot_template` SET `condition_id`=3 WHERE `entry`=15954 AND `item`=23005; -- Totem of Flowing Water (Horde Players)
UPDATE `creature_loot_template` SET `condition_id`=4 WHERE `entry`=15954 AND `item`=23006; -- Libram of Light (Alliance Players)

