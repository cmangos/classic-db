-- Correct Required Races for Quest 5156 Verifying the Corruption: this quest is available for all races
-- Source: http://www.wowwiki.com/Quest:Verifying_the_Corruption
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 5156;