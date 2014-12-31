-- Fixed faction of NPC 8440 (Shade of Hakkar) in Sunken Temple
-- Thanks TheTrueAnimal for pointinng and fixing. Values from UDB. This closes #666
UPDATE `creature_template` SET `FactionAlliance` = 35, `FactionHorde` = 35 WHERE `entry` = 8440;
 