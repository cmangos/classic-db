-- Fixed model used by trash mobs in the Ring of Law in Blackrock Depths
-- This updates #793
-- Thanks @Tobschinski for providing the data
UPDATE `creature_template` SET `ModelId1` = 7347, `ModelId2` = 3247, `ModelId3` = 2489 WHERE `Entry` = 8926; -- Deep Stinger
UPDATE `creature_template` SET `ModelId1` = 1195, `ModelId2` = 1954 WHERE `Entry` = 8927; -- Dark Screecher
UPDATE `creature_template` SET `ModelId1` = 8184, `ModelId2` = 9033, `ModelId3` = 3005, `ModelId4` = 2194 WHERE `Entry` = 8928; -- Burrowing Thundersnout
UPDATE `creature_template` SET `ModelId1` = 8182, `ModelId2` = 9030, `ModelId3` = 9031, `ModelId4` = 9032 WHERE `Entry` = 8925; -- Dredge Worm
UPDATE `creature_template` SET `ModelId1` = 8014, `ModelId2` = 909, `ModelId3` = 821, `ModelId4` = 520 WHERE `Entry` = 8933; -- Cave Creeper
UPDATE `creature_template` SET `ModelId1` = 7470, `ModelId2` = 9354, `ModelId3` = 9028, `ModelId4` = 9029 WHERE `Entry` = 8932; -- Borer Beetle