-- Thanks Neotmiren for poiting and fixing
-- Grime-Encrusted Ring has negative drop chance in ClassicDB
-- so it never drops because it is not quest collection item (it begins quest itself).
-- Source: http://www.wowhead.com/item=9326#dropped-by
-- Value from UDB
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 8 WHERE `item` = 9326;
