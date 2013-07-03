-- Prevent creature 647 (Captain Greenskin) from using wrong undead model instead of its goblin model
-- Thanks Neotmiren for pointing and fixing
-- Source: http://www.wowhead.com/npc=647
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 7113 AND `modelid_other_gender` = 3494;
