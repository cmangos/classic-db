-- Gwina Stonebranch 5138 does not sell copper rod
-- https://www.wowhead.com/classic/npc=5138/gwina-stonebranch
DELETE FROM `npc_vendor` WHERE `entry` = 5138 AND `item` = 6217; -- Copper Rod

