-- End script for quest 609 (Voodoo Dues)
UPDATE `quest_template` SET `CompleteScript` = 609 WHERE `entry` = 609;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 609;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(609, 1, 0, 2, 0, 0, 0, 0, 2000000067, 0, 0, 0, 0, 0, 0, 0, ''),
(609, 2, 0, 0, 0, 0, 0, 0, 2000000068, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000067, 2000000068);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000067, '%s tries opening Maury\'s Clubbed Foot...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000068, 'Bah! $N, this foot won\'t budge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 621 (Zanzil's Secret)
UPDATE `quest_template` SET `CompleteScript` = 621 WHERE `entry` = 621;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 621;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(621, 1, 0, 0, 0, 0, 0, 0, 2000000069, 0, 0, 0, 0, 0, 0, 0, ''),
(621, 2, 0, 0, 0, 0, 0, 0, 2000000070, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000069, 2000000070);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000069, 'Thank you, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000070, 'I\'m sure I can find a use for this mixture...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 630 (Message in a bottle)
UPDATE `quest_template` SET `CompleteScript` = 630 WHERE `entry` = 630;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 630;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(630, 2, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(630, 5, 0, 0, 0, 0, 0, 0, 2000000071, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` = 2000000071;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000071, 'Thank you again for your aid. May the wind always be at your back during your travels.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 640 (The Broken Sigil)
UPDATE `quest_template` SET `CompleteScript` = 640 WHERE `entry` = 640;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 640;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(640, 1, 15, 4093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(640, 6, 0, 0, 0, 0, 0, 0, 2000000072, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` = 2000000072;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000072, 'Easier than I expected... the sigil of Thoradin is whole, once again.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 670 (Sunken Treasure)
UPDATE `quest_template` SET `CompleteScript` = 670 WHERE `entry` = 670;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 670;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(670, 1, 0, 0, 0, 0, 0, 0, 2000000073, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` = 2000000073;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000073, 'Wait, $N!!! It looks like we\'re going to need some help here...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 702 (Guile of the Raptor)
UPDATE `quest_template` SET `CompleteScript` = 702 WHERE `entry` = 702;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 702;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(702, 0, 15, 4153, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(702, 5, 0, 2, 0, 0, 0, 0, 2000000077, 0, 0, 0, 0, 0, 0, 0, ''),
(702, 9, 0, 0, 0, 0, 0, 0, 2000000078, 0, 0, 0, 0, 0, 0, 0, ''),
(702, 13, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(702, 14, 0, 0, 0, 0, 0, 0, 2000000079, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000077, 2000000078, 2000000079);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000077, '%s watches as his blood begins to stir, and the guile of the raptor slips through him.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000078, 'What is this power that flows through me? Is this the power of shamanism that Tor\'gan spoke of...?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000079, 'Amazing! I feel... renewed. My strength returns!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 748 (Poison Water)
UPDATE `quest_template` SET `CompleteScript` = 748 WHERE `entry` = 748;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 748;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(748, 0, 15, 4983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(748, 0, 0, 2, 0, 0, 0, 0, 2000000080, 0, 0, 0, 0, 0, 0, 0, ''),
(748, 8, 0, 0, 3, 0, 0, 0, 2000000081, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000080, 2000000081);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000080, '%s begins a rite of creation...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000081, 'I have created the totem. You, $N, must cleanse the well.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 756 (Thunderhorn Totem)
UPDATE `quest_template` SET `CompleteScript` = 756 WHERE `entry` = 756;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 756;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(756, 0, 15, 4983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(756, 0, 0, 2, 0, 0, 0, 0, 2000000082, 0, 0, 0, 0, 0, 0, 0, ''),
(756, 8, 0, 0, 3, 0, 0, 0, 2000000083, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000082, 2000000083);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000082, '%s creates a new totem...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000083, 'The totem is made, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 759 (Wildmane Totem)
UPDATE `quest_template` SET `CompleteScript` = 759 WHERE `entry` = 759;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 759;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(759, 0, 15, 4983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(759, 0, 0, 2, 0, 0, 0, 0, 2000000084, 0, 0, 0, 0, 0, 0, 0, ''),
(759, 8, 0, 0, 3, 0, 0, 0, 2000000085, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000084, 2000000085);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000084, '%s transforms the items $N gave him into a totem of cleansing...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000085, 'The totem is made. The well may now be cleansed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 950 (Return to Onu)
UPDATE `quest_template` SET `CompleteScript` = 950 WHERE `entry` = 950;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 950;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(950, 1, 0, 2, 0, 0, 0, 0, 2000000086, 0, 0, 0, 0, 0, 0, 0, ''),
(950, 4, 0, 2, 0, 0, 0, 0, 2000000087, 0, 0, 0, 0, 0, 0, 0, ''),
(950, 8, 0, 0, 0, 0, 0, 0, 2000000088, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000086, 2000000087, 2000000088);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000086, 'Onu studies the parchment from the Twilight Tome...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000087, 'Onu is struck by unleashed magic!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000088, 'Hmm...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 1062 (Goblin Invaders)
UPDATE `quest_template` SET `CompleteScript` = 1062 WHERE `entry` = 1062;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1062;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1062, 1, 0, 0, 0, 0, 0, 0, 2000000089, 0, 0, 0, 0, 0, 0, 0, ''),
(1062, 4, 0, 0, 0, 0, 0, 0, 2000000090, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000089, 2000000090);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000089, 'The spirits of Stonetalon still rage, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000090, 'I fear we may never soothe them...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 1063 (The Elder Crone)
UPDATE `quest_template` SET `CompleteScript` = 1063 WHERE `entry` = 1063;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1063;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1063, 0, 0, 2, 0, 0, 0, 0, 2000000091, 0, 0, 0, 0, 0, 0, 0, ''),
(1063, 2, 0, 0, 0, 0, 0, 0, 2000000092, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000091, 2000000092);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000091, '%s listens to $N\'s plea.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000092, 'You were right to come. My wisdom will be yours.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 1066 (Blood of Innocents)
UPDATE `quest_template` SET `CompleteScript` = 1066 WHERE `entry` = 1066;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1066;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1066, 0, 0, 2, 0, 0, 0, 0, 2000000096, 0, 0, 0, 0, 0, 0, 0, ''),
(1066, 4, 0, 0, 0, 0, 0, 0, 2000000097, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000096, 2000000097);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000096, '%s creates his toxin...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000097, 'There we are, $N. The toxin is ready.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 1067 (Return to Thunder Bluff)
UPDATE `quest_template` SET `CompleteScript` = 1067 WHERE `entry` = 1067;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1067;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1067, 0, 0, 2, 0, 0, 0, 0, 2000000098, 0, 0, 0, 0, 0, 0, 0, ''),
(1067, 4, 0, 0, 0, 0, 0, 0, 2000000099, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000098, 2000000099);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000098, '%s fills a container with the toxin.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000099, 'The toxin is ready, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 1112 (Parts for Kravel)
UPDATE `quest_template` SET `CompleteScript` = 1112 WHERE `entry` = 1112;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1112;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1112, 1, 0, 2, 0, 0, 0, 0, 2000000100, 0, 0, 0, 0, 0, 0, 0, ''),
(1112, 2, 9, 632446, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'resp gobject'),
(1112, 4, 0, 2, 0, 0, 0, 0, 2000000101, 0, 0, 0, 0, 0, 0, 0, ''),
(1112, 8, 0, 0, 0, 0, 0, 0, 2000000102, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000100, 2000000101, 2000000102);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000100, '%s places the crate of parts on the ground.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000101, '%s grabs a part and puts it in his pocket...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000102, 'There, that should do it...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 1116 (Dream Dust in the Swamp)
UPDATE `quest_template` SET `CompleteScript` = 1116 WHERE `entry` = 1116;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1116;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1116, 0, 0, 2, 0, 0, 0, 0, 2000000103, 0, 0, 0, 0, 0, 0, 0, ''),
(1116, 1, 0, 2, 0, 0, 0, 0, 2000000104, 0, 0, 0, 0, 0, 0, 0, ''),
(1116, 1, 15, 6903, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1116, 4, 0, 0, 0, 0, 0, 0, 2000000105, 0, 0, 0, 0, 0, 0, 0, ''),
(1116, 7, 0, 0, 0, 0, 0, 0, 2000000105, 0, 0, 0, 0, 0, 0, 0, ''),
(1116, 9, 0, 0, 0, 0, 0, 0, 2000000106, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000103, 2000000104, 2000000105, 2000000106);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000103, '%s snorts a speck of dream dust up his nose...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000104, '%s is dazed...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000105, 'ACHOO!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000106, 'Wow! $N, that dream dust is powerful stuff!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 1117 (Rumors for Kravel)
UPDATE `quest_template` SET `CompleteScript` = 1117 WHERE `entry` = 1117;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1117;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1117, 1, 0, 2, 0, 0, 0, 0, 2000000108, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 2, 1, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 8, 0, 0, 0, 0, 0, 0, 2000000109, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000108, 2000000109);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000108, '%s begins to dance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000109, 'Hahah! $N, you make quite a partner!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 1169 (Identifying the Brood)
UPDATE `quest_template` SET `CompleteScript` = 1169 WHERE `entry` = 1169;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1169;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1169, 0, 0, 2, 0, 0, 0, 0, 2000000110, 0, 0, 0, 0, 0, 0, 0, ''),
(1169, 1, 15, 6741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1169, 11, 0, 0, 0, 0, 0, 0, 2000000111, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000110, 2000000111);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000110, '%s begins to cast a spell over the hearts and tongues.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000111, 'The brood of Onyxia!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 1176 (Load Lightening)
UPDATE `quest_template` SET `CompleteScript` = 1176 WHERE `entry` = 1176;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1176;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1176, 2, 0, 0, 0, 0, 0, 0, 2000000112, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000112);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000112, 'Okay, crew. Get to work on getting these bones installed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 1383 (Nothing But The Truth)
UPDATE `quest_template` SET `CompleteScript` = 1383 WHERE `entry` = 1383;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1383;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1284, 0, 10, 5088, 180000, 0, 0, 0, 0, 0, 0, 0, -3837.25, -4548.3, 9.29486, 0.786911, ''),
(1383, 0, 29, 2, 2, 5414, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '5414 - npc_flag removed'),
(1383, 1, 0, 0, 0, 0, 0, 0, 2000000113, 0, 0, 0, 0, 0, 0, 0, ''),
(1383, 4, 3, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 6.23291, ''),
(1383, 6, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1383, 10, 0, 0, 0, 0, 0, 0, 2000000114, 0, 0, 0, 0, 0, 0, 0, ''),
(1383, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1383, 15, 3, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 3.14159, ''),
(1383, 16, 0, 0, 0, 0, 0, 0, 2000000115, 0, 0, 0, 0, 0, 0, 0, ''),
(1383, 16, 29, 2, 1, 5414, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '5414 - npc_flag added');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000113, 2000000114, 2000000115);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000113, 'The serum will only take a few minutes to prepare, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000114, 'Almost done...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000115, 'At last, the serum is complete, $N. Now, come closer. We must talk.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 1391 (Nothing But The Truth)
UPDATE `quest_template` SET `CompleteScript` = 1391 WHERE `entry` = 1391;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1391;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1391, 0, 0, 2, 0, 0, 0, 0, 2000000116, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 2, 0, 0, 0, 0, 0, 0, 2000000117, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 7, 0, 0, 0, 0, 0, 0, 2000000118, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 8, 1, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 13, 0, 2, 0, 0, 0, 0, 2000000119, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 14, 0, 0, 0, 0, 0, 0, 2000000120, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 14, 15, 7293, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 16, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10423.5, -3240.63, 20.1786, 4.68979, ''),
(1391, 17, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10420.6, -3240.03, 20.1786, 2.11212, ''),
(1391, 19, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10422.1, -3237.58, 20.1786, 3.80072, ''),
(1391, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10424.4, -3239.73, 20.1786, 3.8633, ''),
(1391, 22, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10422.4, -3238.96, 20.1786, 0.236333, ''),
(1391, 26, 15, 5, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000000116 AND 2000000120;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000116, '%s takes big swig of ale.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000117, 'That was refreshing. Now there\'s information that needs to be told...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000118, 'I believe the Forsaken are misleading the allies of the Horde... wait... I feel so... dizzy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000119, '%s writhes in pain.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000120, 'AAAAAAAAAAAAAAAARGH!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 1445 (The Temple of Atal'Hakkar)
UPDATE `quest_template` SET `CompleteScript` = 1445 WHERE `entry` = 1445;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1445;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1445, 0, 0, 0, 0, 0, 0, 0, 2000000121, 0, 0, 0, 0, 0, 0, 0, ''),
(1445, 3, 15, 7437, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` = 2000000121;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000121, 'I hereby destroy these instruments of evil! For the Horde!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 3908 (It's a Secret to Everybody)
UPDATE `quest_template` SET `CompleteScript` = 3908 WHERE `entry` = 3908;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 3908;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(3908, 1, 0, 0, 0, 0, 0, 0, 2000000122, 0, 0, 0, 0, 0, 0, 0, ''),
(3908, 1, 29, 3, 2, 9298, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9298 - npc_flag removed'),
(3908, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6384.54, -2527.25, 538.736, 2.52438, ''),
(3908, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6370.12, -2525.52, 532.268, 2.82283, ''),
(3908, 15, 0, 0, 0, 0, 0, 0, 2000000123, 0, 0, 0, 0, 0, 0, 0, ''),
(3908, 20, 1, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3908, 21, 0, 2, 0, 0, 0, 0, 2000000124, 0, 0, 0, 0, 0, 0, 0, ''),
(3908, 23, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6364.25, -2524, 527.058, 2.9265, ''),
(3908, 26, 0, 0, 0, 0, 0, 0, 2000000125, 0, 0, 0, 0, 0, 0, 0, ''),
(3908, 27, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3908, 30, 0, 0, 0, 0, 0, 0, 2000000126, 0, 0, 0, 0, 0, 0, 0, ''),
(3908, 31, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6370.3, -2524.19, 532.27, 6.26836, ''),
(3908, 34, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6385.99, -2529.26, 539.03, 5.66753, ''),
(3908, 42, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6395.57, -2536.75, 541.548, 5.66753, ''),
(3908, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.86475, ''),
(3908, 48, 0, 0, 0, 0, 0, 0, 2000000127, 0, 0, 0, 0, 0, 0, 0, ''),
(3908, 49, 29, 3, 1, 9298, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9298 - npc_flag added');
DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000000122 AND 2000000127;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000122, 'Please, follow me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000123, 'I haven\'t really figured out what it is, but there\'s something strange about the hot springs...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000124, '%s tosses the sword into the shallow pool.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000125, 'I\'ve found that when I throw something into this water, it has improved incredibly when I retrieve it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000126, 'Well, whatever it is, it works quite well!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000127, 'And I am determined to find out more... So if you need my help again, you know where I\'ll be.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 4974 (For the Horde!)
UPDATE `quest_template` SET `CompleteScript` = 4974 WHERE `entry` = 4974;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 4974;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(4974, 1, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4974, 1, 0, 6, 0, 0, 0, 0, 2000000128, 0, 0, 0, 0, 0, 0, 0, ''),
(4974, 5, 15, 16609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4974, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4974, 6, 0, 6, 0, 0, 0, 0, 2000000129, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000128, 2000000129);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000128, 'Honor your heroes! On this day, they have dealt a great blow against one of our most hated enemies! The false Warchief, Rend Blackhand, has fallen!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000129, 'Be bathed in my power! Drink in my might! Battle for the glory of the Horde!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- End script for quest 5341 (Barov Family Fortune)
UPDATE `quest_template` SET `CompleteScript` = 5341 WHERE `entry` = 5341;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 5341;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(5341, 1, 0, 1, 0, 0, 0, 0, 2000000130, 0, 0, 0, 0, 0, 0, 0, ''),
(5341, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` = 2000000130;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000130, 'The deeds are mine, brother! Soon you shall be out of my way for good!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
