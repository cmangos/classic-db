-- Fixed model of two NPCs in BRD Ring of Law event
-- Thanks Tobschinski for pointing. This contributes to 793
UPDATE `creature_template` SET `ModelId1` = 7347 WHERE `Entry` = 8926;
UPDATE `creature_template` SET `ModelId1` = 1955 WHERE `Entry` = 8927;
