-- Modified faction of creature 11470 (Eldreth Sorcerer) and 11469 (Eldreth Seether) as it was wrongly set to Darnassus
-- instead of being hostile to players
-- source: http://www.wowwiki.com/Eldreth_Sorcerer
-- source: http://www.wowwiki.com/Eldreth_Seether
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` IN (11469, 11470);
