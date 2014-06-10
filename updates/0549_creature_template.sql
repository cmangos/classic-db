-- Defias Enchanter has wrong Elite rank
-- Thanks Neotmiren for pointing and fixing. This closes #461 
UPDATE `creature_template` SET `Rank` = 0 WHERE `Entry` = 910;
