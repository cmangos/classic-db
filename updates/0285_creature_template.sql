-- Thanks to Neotmiren for pointing and fixing
-- Fixed faction of creature 2638 (Syndicate Spectre), 13149 (Syndicate Brigand), 13150 (Syndicate Agent), 13151 (Syndicate Master Ryson), 14281 (Jimmy The Bleeder)
-- Source: http://www.wowhead.com/npc=14281#comments
UPDATE `creature_template` SET `faction_A` = 87, `faction_H` = 87 WHERE `entry` IN (2638, 14281);
UPDATE `creature_template` SET `faction_A` = 108, `faction_H` = 108 WHERE `entry` IN (13149, 13150, 13151);

-- Fixed model for creature 14281 (Jimmy The Bleeder) as it should not spawn as female
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 3616;
