-- Fixed model of NPC 12423 (Guard Roberts) and 1642 (Northshire Guard) who
-- were using wrong alternate model
-- Thanks Metalica for pointing and Tobschinski for researching. This closes #696
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` IN (3257, 3258);
UPDATE `creature_template` SET `modelid2` = 0 WHERE `Entry` = 1642; -- Northshire Guard
UPDATE `creature_model_info` SET `modelid_other_gender` = 3167 WHERE `modelid` = 5446;

-- Fixed model of NPC 1281 (Mountaineer Zaren) who were using an male alternate model
-- though she is female. Dwarves are really strange...
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` IN (1812, 4887);
