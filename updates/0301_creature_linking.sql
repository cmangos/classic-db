-- Linked boss creature 4428 (Death Speaker Jargba) to its two guards creatures
-- Source: http://www.wowwiki.com/Death_Speaker_Jargba#Strategies
DELETE FROM `creature_linking` WHERE `guid` IN (87401, 87405);
INSERT INTO `creature_linking` VALUES
(87401, 87400, 3),
(87405, 87400, 3);
