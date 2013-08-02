-- Fixed required races for quests 829 (Neeru Fireblade), 809 (Ak'Zeloth) & 924 (The Demon Seed)
-- Their are for Horde players and were also including Blood Elf 
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE  `entry` IN (829, 809, 924);
