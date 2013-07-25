-- Updated required races for quests 805 (Report to Sen'jin Village) and 794 (Burning Blade Medallion)
-- These quests are available to Horde and not limited to Trolls and Orcs
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` IN (794, 805);
