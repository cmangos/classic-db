-- Obsidian Nullifier
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15312;
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(15312, 910, 0, 3, 0, 100, 0, 0, 0, 0);
