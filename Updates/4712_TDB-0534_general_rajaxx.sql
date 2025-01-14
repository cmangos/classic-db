UPDATE broadcast_text SET SoundEntriesId1=8604,ChatTypeID=1 WHERE Id IN(11433);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1534100);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(1534100, 0, 6713, 7000, 9000, 7000, 9000, 0, 100, 0, 100, 2, 'General Rajaxx - Disarm on Random Player'),
(1534100, 1, 25599, '12000','18000','16000','21000', 0, 0, 0, 100, 2, 'General Rajaxx - Thundercrash'),
(1534100, 2, 8269, '600000','600000','120000','120000', 0, 0, 9005, 100, 2, 'General Rajaxx - Enrage');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1534100);
INSERT INTO `creature_spell_list_entry` VALUES
(1534100, 'AQ20 - General Rajaxx', 0, 0);

UPDATE `creature_template` SET `SpellList`=1534100 WHERE `entry` IN (15341);

DELETE FROM dbscripts_on_relay WHERE Id IN(9005) AND command=0;
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
('9005', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1191', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Rajaxx - Say Frenzy');


