-- Correct Rep Reward for The Savage Guard Quests and Libram of Focus/Protection/Rapidity
-- wotlk check if RewRepValueId1 = 7 is 500 or 200
-- https://www.wowhead.com/tbc/npc=14368/lorekeeper-lydros#ends
-- https://www.wowhead.com/tbc/npc=15042/zanza-the-restless#ends
UPDATE `quest_template` SET `RewRepFaction1` = 809, `RewRepValue1` = 200 WHERE `entry` IN (7483,7484,7485); -- 200 in classic, 7483 is missing rep completely
UPDATE `quest_template` SET `RewRepFaction1` = 270, `RewRepValue1` = 200 WHERE `entry` IN (9208,9209,9210); -- 200 in classic

