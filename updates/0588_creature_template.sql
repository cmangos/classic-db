-- Fixed HP of creature 15467 (Omen) in Lunar Festival
-- Thanks Neotmiren for pointing. This closes #497 
-- Source: http://www.wowhead.com/npc=15467#comments:120
UPDATE `creature_template` SET `MinLevelHealth` = 1332400, `MaxLevelHealth` = 1332400, `HealthMultiplier` = 400 WHERE `Entry` = 15467;
