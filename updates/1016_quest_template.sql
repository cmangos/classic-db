-- Faction is wrongly set for quest 3642 (A Pledge for Secrecy) is was set to Alliance
-- while only Horde should be able to get it.
-- Thanks Kelzior for reporting and @Muehe for researching the issue. This closes #763 
-- Source: http://www.wowwiki.com/Quest:The_Pledge_of_Secrecy_%28Stranglethorn_Vale%29
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3642;
