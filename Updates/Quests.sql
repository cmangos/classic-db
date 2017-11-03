/* Adding Exclusive Group to ensure only one Dearest Colara is chosen and completed + NextQuestId to ensure Dangerous is available only after completion of one of them */

UPDATE `quest_template` SET `MinLevel`= 1, `QuestLevel`= 60, `NextQuestId`= 8903,`ExclusiveGroup`= 8897 WHERE `entry` IN (8897, 8898, 8899);


/* Adding Exclusive Group to ensure only one Dearest Elenia is chosen and completed + NextQuestId to ensure Dangerous is available only after completion of one of them*/

UPDATE `quest_template` SET `MinLevel`= 1, `QuestLevel`= 60, `NextQuestId`= 8904, `ExclusiveGroup`= 8900 WHERE `entry` IN (8900, 8901, 8902);

-- Fixing a few errors
UPDATE `quest_template` SET `MinLevel`= 1,`QuestLevel`= 60 WHERE `entry`= 8903;
UPDATE `quest_template` SET `QuestLevel`= 60, `RequiredRaces`= 178 WHERE `entry`= 8904;

/* Adding entries to adjust Dangerous Love questline */
-- Alliance
UPDATE `quest_template` SET `MinLevel`= 1, `QuestLevel`= 60, `PrevQuestId`= 8903 WHERE `entry`= 9024; -- Aristan's Hunch
UPDATE `quest_template` SET `MinLevel`= 1, `QuestLevel`= 60, `PrevQuestId`= 9024 WHERE `entry`= 9025; -- Morgan's Discovery
UPDATE `quest_template` SET `MinLevel`= 1, `QuestLevel`= 60, `PrevQuestId`= 9025 WHERE `entry`= 9026; -- Tracing the Source(1)
UPDATE `quest_template` SET `MinLevel`= 1, `QuestLevel`= 60, `PrevQuestId`= 9026 WHERE `entry`= 9027; -- Tracing the Source(2)
UPDATE `quest_template` SET `MinLevel`= 1, `QuestLevel`= 60, `PrevQuestId`= 9027 WHERE `entry`= 9028; -- The Sourced Revealed

-- Horde
UPDATE `quest_template` SET `MinLevel`= 1, `QuestLevel`= 60, `PrevQuestId`= 8904 WHERE `entry`= 8979; -- Fenstad's Hunch
UPDATE `quest_template` SET `MinLevel`= 1, `QuestLevel`= 60, `PrevQuestId`= 8979 WHERE `entry`= 8980; -- Zinge's Assessment
UPDATE `quest_template` SET `MinLevel`= 1, `QuestLevel`= 60, `PrevQuestId`= 8980 WHERE `entry`= 8982; -- Tracing the Source(1)
UPDATE `quest_template` SET `MinLevel`= 1, `QuestLevel`= 60, `PrevQuestId`= 8982 WHERE `entry`= 8983; -- Tracing the Source(2)
UPDATE `quest_template` SET `MinLevel`= 1, `QuestLevel`= 60, `PrevQuestId`= 8983 WHERE `entry`= 8984; -- The Sourced Revealed

-- Common
UPDATE `quest_template` SET `PrevQuestId`= 9028 WHERE `entry`= 9029; -- The Bubbling Cauldron

/* Adding db acript string entries for Lerent discourse */

INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (2000000200, 'Staffron...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Annalise Dialogue 1');
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (2000000201, 'Annalise? Is that you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 1');
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (2000000202, 'My dear Staffron, have you forgotten what it is to love? The love that we once shared?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Annalise Dialogue 2');
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (2000000203, 'Have I forgotten? Of course I have... I have forgotten about love, happiness... of life itself.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 2');
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (2000000204, 'But i do know this - love makes the heart and body weak. It can be exploited. Without your love, I have only my work, Annalise.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 3');
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (2000000205, 'But of course I love you, Staffron. And it pains me to see you suffer so.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Annalise Dialogue 3');
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (2000000206, 'I pledge my love to you forever. Death cannot erase that, even as I am sure that you still remember your love for me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Annalise Dialogue 4');
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (2000000207, 'And if you do not, then I am truly lost.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Annalise Dialogue 5');
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (2000000208, 'How could you love me, Annalise? Look at me. I am not the man you once knew.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 4');
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (2000000209, 'Annalise? Annalise! No, don\'t leave me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 5');
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (2000000210, 'Annalise... You\'re right. I-I can\'t do this. I must find another way.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 6');
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (2000000211, 'You there. You\'re welcome to take the contents of my cauldron. It was to be the second stage of my plan - amorous clothing.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 7');

/* Dbscript entries triggered by completion of The Source Revealed */

UPDATE `quest_template` SET `CompleteScript`= 9029 WHERE `entry` IN (8984, 9028);

/* Adding WP Movement and 1 WP Annalise and Staffron*/

UPDATE `creature_template` SET `MovementType`= 2 WHERE `Entry`IN (16107, 16110);

INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES (16110, 1, 95.655884, -1713.355347, 220.825989, 70000, 1611001, 0, 0, 0, 0, 0, 0, 0, 4.267725, 0, 0);
UPDATE `creature` SET `MovementType`= 2 WHERE `id`= 16107;

INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 2, 10, 16110, 40000, 0, 0, 0, 0, 0, 0, 0, 95.655884, -1713.355347, 220.825989, 4.267725, 'Summon Annalise Lerent');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 5, 0, 0, 0, 16110, 10, 0, 2000000200, 0, 0, 0, 0, 0, 0, 0, 'Annalise Dialogue 1');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 9, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  1.024037, 'Staffron Turns to Annalise');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 13, 0, 0, 0, 0, 0, 0, 2000000201, 0, 0, 0, 0, 0, 0, 0, 'Staffron Dialogue 1');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 17, 0, 0, 0, 16110, 10, 0, 2000000202, 0, 0, 0, 0, 0, 0, 0, 'Annalise Dialogue 2');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 21, 0, 0, 0, 0, 0, 0, 2000000203, 0, 0, 0, 0, 0, 0, 0, 'Staffron Dialogue 2');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 25, 0, 0, 0, 0, 0, 0, 2000000204, 0, 0, 0, 0, 0, 0, 0, 'Staffron Dialogue 3');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 29, 0, 0, 0, 16110, 10, 0, 2000000205, 0, 0, 0, 0, 0, 0, 0, 'Annalise Dialogue 3');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 33, 0, 0, 0, 16110, 10, 0, 2000000206, 0, 0, 0, 0, 0, 0, 0, 'Annalise Dialogue 4');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 37, 0, 0, 0, 16110, 10, 0, 2000000207, 0, 0, 0, 0, 0, 0, 0, 'Annalise Dialogue 5');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 41, 0, 0, 0, 0, 0, 0, 2000000208, 0, 0, 0, 0, 0, 0, 0, 'Staffron Dialogue 4');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 45, 0, 0, 0, 0, 0, 0, 2000000209, 0, 0, 0, 0, 0, 0, 0, 'Staffron Dialogue 5');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 49, 0, 0, 0, 0, 0, 0, 2000000210, 0, 0, 0, 0, 0, 0, 0, 'Staffron Dialogue 6');
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9029, 53, 0, 0, 0, 0, 0, 0, 2000000211, 0, 0, 0, 0, 0, 0, 0, 'Staffron Dialogue 7');

