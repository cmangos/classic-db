-- Fixed faction and model of creature 13082 (Milton Beatings)
-- This NPC is spawned near the chest in the passageway to Ravenholdt.
-- He is neutral now and may appear female, but should be hostile male
-- source: http://www.wowwiki.com/Milton_Beats?oldid=1478132
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE  `modelid` = 4016;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 13082;
