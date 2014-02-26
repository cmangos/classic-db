-- Fixed a few text emotes in DB scripts after chat system refactoring core side (cmangos classic revision 2425)

-- Quest 753 A Humble Task
UPDATE `db_script_string` SET `content_default` = "%s gestures to the pitcher of water sitting on the edge of the well." WHERE `entry` = 2000000003;

-- Quest 771 Rite of Vision 
UPDATE `db_script_string` SET `content_default` = "%s begins chanting as he mixes the well stones and ambercom before the Tribal Fire." WHERE `entry` = 2000000017;

-- Quest 993 A Lost Master 
UPDATE `db_script_string` SET `content_default` = "%s begins to cast a spell as you take the cloak from him." WHERE `entry` = 2000000023;

-- Quest 1713 The Summoning
UPDATE `db_script_string` SET `content_default` = "%s begins a spell of summoning..." WHERE `entry` = 2000000043;

-- Quest 950 Return to Onu
UPDATE `db_script_string` SET `content_default` = "%s studies the parchment from the Twilight Tome..." WHERE `entry` = 2000000086;
UPDATE `db_script_string` SET `content_default` = "%s is struck by unleashed magic!" WHERE `entry` = 2000000087;

-- Quest 1064 Forsaken Aid
UPDATE `dbscripts_on_quest_start` SET `dataint` = 2000000033 WHERE `id` = 1064 AND `delay` = 2 AND `command` = 0;
DELETE FROM `db_script_string` WHERE `entry` = 2000000033;
INSERT INTO `db_script_string` VALUES
(2000000033, '%s summons a messenger...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, NULL);
UPDATE `dbscripts_on_creature_movement` SET `datalong2` = 0, `buddy_entry` = 3419, `search_radius` = 10 WHERE `id` = 406801 AND `delay` = 8 AND `command` = 0;
UPDATE `db_script_string` SET `content_default` = "%s smiles." WHERE `entry` = 2000000095;

-- Quest 985 How Big a Threat?
UPDATE `db_script_string` SET `content_default` = "%s roars at Terenthis to get his attention." WHERE `entry` = 2000005201;
UPDATE `db_script_string` SET `content_default` = "%s begins to moan and roar at Terenthis while stomping his paws on the ground." WHERE `entry` = 2000005203;
UPDATE `db_script_string` SET `content_default` = "%s begins to cast a spell on Grimclaw." WHERE `entry` = 2000005205;
UPDATE `db_script_string` SET `content_default` = "%s roars at Terenthis more, but this time the druid seems to understand the bear." WHERE `entry` = 2000005207;
UPDATE `db_script_string` SET `content_default` = "%s roars in acknowledgement at Terenthis." WHERE `entry` = 2000005209;
UPDATE `dbscripts_on_quest_end` SET `buddy_entry` = 3695, `search_radius` = 10 WHERE `dataint` IN (2000005201, 2000005203, 2000005207, 2000005209);

-- Quest 970 The Tower of Althalaxx
UPDATE `db_script_string` SET `content_default` = "Glowing Soulgem bursts open!" WHERE `entry` = 2000005241;
UPDATE `db_script_string` SET `content_default` = "%s fades into the mist..." WHERE `entry` = 2000005249;
UPDATE `dbscripts_on_quest_end` SET `buddy_entry` = 4509, `search_radius` = 10 WHERE `dataint` IN (2000005249);

-- Quest 943 The Absent Minded Prospector
UPDATE `db_script_string` SET `content_default` = "%s begins to manipulate the Stone of Relu over the two fossils." WHERE `entry` = 2000005303;
UPDATE `db_script_string` SET `content_default` = "%s dissipates before your eyes." WHERE `entry` = 2000005309;

-- Quest 963 For Love Eternal
UPDATE `db_script_string` SET `content_default` = "%s's soft voice trails away into the mists. \"Know that I love you always...\"" WHERE `entry` = 2000005344;

UPDATE `db_script_string` SET `type` = 2 WHERE `entry` IN (
-- on quest end
2000000008, 2000000067, 2000000077, 2000000080, 2000000082, 2000000084, 2000000017, 2000005303, 2000005309, 2000000086, 2000000087, 2000005344, 2000005241, 2000005249, 2000005201, 2000005203, 2000005205, 2000005207, 2000005209, 2000000091, 2000000096, 2000000098, 2000000100, 2000000101, 2000000103, 2000000104, 2000000108, 2000000110, 2000000116, 2000000119, 2000000124, 
-- on quest start
2000000003, 2000000023, 2000000043, 
-- on creature movement
2000000168, 2000000169, 2000000094, 2000000095
);
