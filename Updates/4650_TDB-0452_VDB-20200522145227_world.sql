-- Add your query below.
-- https://github.com/vmangos/core/commit/3c78fbc176786d08e29834d271caedcc831c8eb2

-- add path for Haggle
UPDATE `creature` SET `MovementType`= 2 WHERE `id`= 14041;
DELETE FROM `creature_movement_template` WHERE `entry` = 14041;
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(14041, 1, -18.4303, -17.2056, -4.29736, 100, 1, 1404104), -- walkrandom 1.3
(14041, 2, -21.9769, -16.6178, -4.29737, 100, 0, 0),
(14041, 3, -22.075, -9.7424, -4.29737, 100, 0, 0),
(14041, 4, -21.3471, -9.64024, -4.29737, 100, 7000, 1404101),
(14041, 5, -21.5384, -4.64424, -4.29737, 100, 0, 0),
(14041, 6, -19.3452, -3.74857, -4.29737, 100, 7000, 1404101),
(14041, 7, -18.3372, -5.60515, -4.29737, 100, 0, 0),
(14041, 8, -14.6721, -2.92183, -4.29737, 100, 0, 0),
(14041, 9, -14.6888, 21.1782, -4.29737, 100, 0, 0),
(14041, 10, -18.5379, 21.4816, -4.29737, 100, 7000, 1404101),
(14041, 11, -15.8772, 22.747, -4.29737, 100, 0, 0),
(14041, 12, -16.3983, 27.0335, -4.29736, 3.28968, 7000, 1404101),
(14041, 13, -13.5099, 25.3961, -4.29736, 100, 0, 0),
(14041, 14, -13.5378, -14.4996, -4.29736, 100, 0, 0),
(14041, 15, -18.4303, -17.2056, -4.29736, 100, 1, 1404105), -- walkrandom 1.3
(14041, 16, -11.0139, -22.3596, -4.29736, 100, 0, 0),
(14041, 17, -1.8459, -32.218, -4.29736, 100, 0, 0),
(14041, 18, 11.9946, -32.6701, -4.29736, 100, 0, 0),
(14041, 19, 15.9451, -21.4086, -4.29682, 100, 0, 0),
(14041, 20, 22.3069, -17.5599, -4.29682, 1.54051, 7000, 1404101),
(14041, 21, 32.003, -17.1321, -4.29682, 100, 0, 0),
(14041, 22, 39.2451, -11.5749, -4.29682, 100, 7000, 1404101),
(14041, 23, 37.5131, -10.4689, -4.29682, 100, 0, 0),
(14041, 24, 37.3969, -0.666123, -4.29682, 100, 0, 0),
(14041, 25, 39.244, 1.13247, -4.29682, 100, 7000, 1404101),
(14041, 26, 28.5052, 5.15199, -4.29682, 100, 0, 0),
(14041, 27, 21.3785, 14.6049, -4.29682, 100, 7000, 1404101),
(14041, 28, 27.9144, 16.4489, -4.29682, 100, 0, 0),
(14041, 29, 39.0292, 24.5663, -4.29649, 100, 7000, 1404101),
(14041, 30, 27.8659, 34.8872, -4.29649, 100, 0, 0),
(14041, 31, 20.0568, 35.1873, -4.29649, 100, 0, 0),
(14041, 32, 17.5395, 29.6719, -4.29649, 100, 0, 0),
(14041, 33, 17.0065, -13.1396, -4.29649, 100, 0, 0),
(14041, 34, 13.0492, -31.4141, -4.29695, 100, 0, 0),
(14041, 35, -1.66263, -31.2745, -4.29695, 100, 0, 0),
(14041, 36, -18.2959, -17.0123, -4.29695, 100, 1, 1404103), -- walkrandom 1.3
(14041, 37, -15.6317, -16.0231, -4.29695, 100, 0, 0),
(14041, 38, -15.5101, -3.39945, -4.29695, 100, 0, 0),
(14041, 39, -17.9317, -1.00978, -3.77108, 1.55107, 147000, 1404102),
(14041, 40, -16.4948, -1.13581, -4.29712, 100, 4000, 0),
(14041, 41, -14.8653, -3.04173, -4.29712, 100, 0, 0),
(14041, 42, -14.9341, -15.2129, -4.29712, 100, 0, 0);

-- add scripts for Haggle
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1404101,1404102,1404103,1404104,1404105);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `dataint`, `comments`) VALUES
(1404101, 0, 0, 0, 9141, 'Haggle - Text Emote'), -- %s sifts through the trash.
(1404101, 0, 1, 69, 0, 'Haggle - EMOTE_STATE_USESTANDING'),
(1404101, 6000, 1, 30, 0, 'Haggle - EMOTE_STATE_NONE'),
(1404102, 2000, 28, 3, 0, 'Haggle - UNIT_STAND_STATE_SLEEP'),
(1404102, 147000, 28, 0, 0, 'Haggle - UNIT_STAND_STATE_STAND');

INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `data_flags`, `dataint`, `comments`) VALUES
(1404103, 0, 20, 1, 1, 54000, 12, 0, 'Haggle - MovementType 1, Spawndist 1 (54secs)'),
(1404103, 54000, 0, 0, 0, 0, 0, 9147, 'Haggle - Text Emote'), -- %s yawns.

(1404104, 0, 20, 1, 1, 55000, 12, 0, 'Haggle - MovementType 1, Spawndist 1 (55secs)'),
(1404105, 0, 20, 1, 1, 40000, 12, 0, 'Haggle - MovementType 1, Spawndist 1 (40secs)');

UPDATE `broadcast_text` SET `ChatTypeId` = 2 WHERE `Id` IN (9141,9147);

-- add random text for Haggle
UPDATE `broadcast_text` SET `EmoteId1` = 1 WHERE `Id` IN (9088,9089,9098,9149,9150);
DELETE FROM `dbscript_random_templates` WHERE `id` = 1404101;
INSERT INTO `dbscript_random_templates` (id, type, target_id, chance, comments) VALUES
(1404101, 0, 9088, 0, 'Haggle - Random OOC Texts'), -- Spare some change?
(1404101, 0, 9089, 0, 'Haggle - Random OOC Texts'), -- I had it all!  I had it all and then I lost it.  Lost... all gone... like... my mind.  My mind is like... cheese.  I like cheese.  
(1404101, 0, 9098, 0, 'Haggle - Random OOC Texts'), -- Forty-two... forty-two... forty-two what?  It could be anything!  Forty-two... hmmm...
(1404101, 0, 9149, 0, 'Haggle - Random OOC Texts'), -- Rats everywhere.  Everywhere I see rats.  Always looking at me with their beedy little eyes.  I'll show them.  I'll show them all!
(1404101, 0, 9150, 0, 'Haggle - Random OOC Texts'); -- Rat-kabobs!  Get your tasty Rat-kabobs here!  Get them while they last!

-- End of migration.

