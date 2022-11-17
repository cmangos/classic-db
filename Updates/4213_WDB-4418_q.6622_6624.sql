-- q.6622 'Triage' -- Horde
-- q.6624 'Triage' -- Allinace

-- Injured Soldier 12923
-- Badly Injured Soldier 12924
-- Critically Injured Soldier 12925
-- Badly Injured Alliance Soldier 12936
-- Critically Injured Alliance Soldier 12937
-- Injured Alliance Soldier 12938
UPDATE creature_template SET RegenerateStats=0 WHERE entry IN (12923,12924,12925,12936,12937,12938);
DELETE FROM `creature_template_addon` WHERE `entry` IN (12923,12924,12925,12936,12937,12938);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(12923, 0, 0, 0, 1, 0, 0, NULL),
(12924, 0, 0, 0, 1, 0, 0, NULL),
(12925, 0, 0, 0, 1, 0, 0, NULL),
(12936, 0, 0, 0, 1, 0, 0, NULL),
(12937, 0, 0, 0, 1, 0, 0, NULL),
(12938, 0, 0, 0, 1, 0, 0, NULL);

