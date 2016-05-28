-- Fixed teleport position for a few spells in Scholomance
-- Players put "in detention" by Darkmaster Gandling should
-- appears in the position of one of the six mini-bosses
-- and not in the middle of the room. That prevents them
-- from aggroing the adds before load
DELETE FROM `spell_target_position` WHERE `id` IN (17863, 17939, 17943, 17944, 17946, 17948);
INSERT INTO `spell_target_position` VALUES 
(17943, 289, 86.6634, -1.96039, 85.3117, 0.017453),
(17948, 289, 103.305, -1.67752, 75.2183, 6.17846),
(17939, 289, 182.246, -95.4371, 85.3117, 1.5694),
(17946, 289, 178.724, -91.0232, 70.8568, 1.64061),
(17863, 289, 274.877, 1.33366, 85.3117, 3.22886),
(17944, 289, 265.956, 0.903429, 75.3334, 3.07178);
