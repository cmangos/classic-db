-- Fixed reputation awarded by many creatures in Temple of Ahn'Qiraj
-- Thanks Tobschinski for pointing. This closes #369 
-- Sources: http://web.archive.org/web/20061117105309/http://www.wowwiki.com/Cenarion_Circle_Reputation_Guide
-- http://web.archive.org/web/20061108193004/http://www.wowwiki.com/Brood_of_Nozdormu
-- http://web.archive.org/web/20061115215023/http://www.worldofwarcraft.com/info/basics/factions/broodofnozdormu/

-- Added reputation award to creature 15727 (C'Thun) to give 2500 Brood of Nozdormu reputation and 500 Cenarion Circle reputation
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15727;
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(15727, 910, 609, 7, 0, 2500, 7, 0, 500, 0); -- C'Thun

-- Set creatures 15230, 15235, 15236 & 15240 (Vekniss Warrior, Vekniss Stinger, Vekniss Wasp & Vekniss Hive Crawler) to give 100 Brood of Nozdormu reputation
-- and no Cenarion Circle reputation when killed
UPDATE `creature_onkill_reputation` SET `RewOnKillRepFaction2` = 0, `RewOnKillRepValue1` = 100, `MaxStanding2` = 0, `RewOnKillRepValue2` = 0 WHERE `creature_id` IN (15230, 15235, 15236, 15240); -- Vekniss Warrior, Vekniss Stinger, Vekniss Wasp, Vekniss Hive Crawler

-- Added reputation award to creature 15275 & 15276 (Twin Emperors) to give 210 (2x105) Brood of Nozdormu reputation
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = 105, `MaxStanding1` = 7 WHERE `creature_id` IN (15275, 15276); -- Twin Emperors
