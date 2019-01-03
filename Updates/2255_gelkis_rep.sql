-- Add missing reputation on kill for Khan Shaka 5602
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 5602;
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(5602, 93, 92, 4, 0, 20, 4, 0, -100, 0);
