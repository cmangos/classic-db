-- Linked Private Hendel and nearby Theramore Sentry to spawn together
DELETE FROM creature_linking_template WHERE entry=5184 AND master_entry=4966;
INSERT INTO creature_linking_template VALUES
(5184, 1, 4966, 128, 40);

-- Made quest 1324 (The Missing Diplomat part 16) completable by script
UPDATE quest_template SET SpecialFlags=2 WHERE entry=1324;

-- Added WP to NPC 4967 (Archmage Tervosh)
DELETE FROM creature_movement_template WHERE entry=4967;
INSERT INTO creature_movement_template VALUES
(4967, 0, 1, -2881.55, -3346.48, 34.15, 3*60*1000, 496701, 0, 0, 0, 0, 0, 0, 0, 3.16604, 0, 0);

SET @TIMER := 3 * 60 * 1000;

SET @ENTRY := 2000001343;

-- Texts used in speech
DELETE FROM dbscript_string WHERE entry BETWEEN @ENTRY AND @ENTRY + 4;
INSERT INTO dbscript_string VALUES
(@ENTRY, 'Why don\'t we deal with you now, Hendel? Lady Proudmoore will speak to you back in the tower.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'Archmage Tervosh q1324'),
(@ENTRY + 1, 'Please... please... Miss Proudmore. I didn\'t mean to...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'Private Hendel q1324'),
(@ENTRY + 2, 'I apologize for taking so long to get here. I wanted Lady Proudmoore to be present also.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'Archmage Tervosh q1324'),
(@ENTRY + 3, 'We can only stay a few moments before returning to the tower. If you wish to speak to us more you may find us there.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'Archmage Tervosh q1324'),
(@ENTRY + 4, 'Farewell. We shall speak again. I\'m sure.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 2, 'Archmage Tervosh q1324');

-- Scripted event
DELETE FROM dbscripts_on_creature_movement WHERE id=496701;
INSERT INTO dbscripts_on_creature_movement VALUES
(496701, 0, 29, 2, 2, 0, 4966, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Hendel - NPC Flags removed'),
(496701, 0, 20, 0, 0, 0, 4966, 70, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Hendel - Movement changed to Idle'),
(496701, 1, 3, 0, 0, 0, 4968, 20, 0, 0, 0, 0, 0, 0, 0, 0, 3.16604, 'Jaina Proudmore - Change Orientation'),
(496701, 1, 3, 0, 0, 0, 4965, 20, 0, 0, 0, 0, 0, 0, 0, 0, 3.16604, 'Pained - Change Orientation'),
(496701, 1, 1, 64, 0, 0, 4966, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Hendel - Emote stun'),
(496701, 2, 36, 0, 0, 0, 4966, 70, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Hendel - Faces Archmage Tervosh'),
(496701, 2, 15, 7081, 0, 0, 4966, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tervosh - Cast Encage on Private Hendel'),
(496701, 5, 0, 0, 0, 0, 0, 0, 0, @ENTRY, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tervosh - Say 1'),
(496701, 10, 0, 0, 0, 0, 4966, 50, 7, @ENTRY + 1, 0, 0, 0, 0, 0, 0, 0, 'Private Hendel - Say 1'),
(496701, 13, 15, 7079, 0, 0, 4966, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tervosh - Cast Teleport on Private Hendel'),
(496701, 13, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tervosh - NPC Flags restored'),
(496701, 14, 1, 30, 0, 0, 4966, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Hendel - Emote None'),
(496701, 14, 35, 5, 0, 0, 4966, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tervosh SEND_AI_EVENT - Private Hendel'),
(496701, 15, 18, 0, 0, 0, 4966, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tervosh - Despawn Private Hendel'),
(496701, 16, 0, 0, 0, 0, 0, 0, 0, @ENTRY + 2, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tervosh - Say 2'),
(496701, 23, 0, 0, 0, 0, 0, 0, 0, @ENTRY + 3, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tervosh - Say 3'),
(496701, 113, 0, 0, 0, 0, 0, 0, 0, @ENTRY + 4, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tervosh - Say 4'),
(496701, 119, 1, 3, 0, 0, 4968, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Jaina Proudmore - Emote Wave'),
(496701, 121, 15, 7078, 0, 0, 4968, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jaina Proudmore - Cast Simple Teleport Group'),
(496701, 124, 18, 0, 0, 0, 4968, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tervosh - Despawn Jaina Proudmoore'),
(496701, 124, 18, 0, 0, 0, 4965, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tervosh - Despawn Pained'),
(496701, 124, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tervosh - Despawn Self');

-- Ensuring the visual teleport spell effect is targeting the right NPC
DELETE FROM spell_script_target WHERE entry=7079;
INSERT INTO spell_script_target VALUES
(7079, 1, 4966, 0);
