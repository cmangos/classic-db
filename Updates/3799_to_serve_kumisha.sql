-- Main Script
DELETE FROM dbscripts_on_quest_end WHERE id='2521';
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
('2521', '0', '1', '21', '1', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11362.81','-2982.8386','0.780107', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Set ActiveObject'),
('2521', '0', '2', '32', '1', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Pause Waypoints'),
('2521', '112000', '0', '29', '2', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Remove Npc Flags'),
('2521', '112000', '0', '25', '1', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Set Run'),
('2521', '113000', '3', '3', '01', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11362.586' ,'-2976.938','0.048906326', '3.582', 'To Serve Kum\'isha: Kum\'isha the Collector - Move to crate'),
('2521', '121000', '0', '25', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Set Walk'),
('2521', '121000', '0', '0', '0', '0', '0', '0', '0', '0','3441', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Say Text'),
('2521', '122000', '0', '10', '7364', '15797', '0', '0', '0','0', '0', '0', '0', '0', '-11366.8', '-2979.6', '-0.198364', '0.628319', 'To Serve Kum\'isha: Summon Creature Flawless Draenethyst Sphere'),
('2521', '124000', '0', '1', '51', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - OneShotSpellCast'),
('2521', '124000', '0', '0', '0', '0', '0', '0', '0', '0','3442', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Say Text'),
('2521', '124000', '0', '15', '10387', '0', '0', '7364', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Flawless Draenethyst Sphere - Cast Spell Lightning Surge'),
('2521', '125000', '0', '10', '7365', '1609', '0', '0', '0','8', '0', '0', '0', '25210', '-11364.8', '-2978.08', '0.21003', '0.523599', 'To Serve Kum\'isha: Summon Creature Flawless Draenethyst Fragment'),
('2521', '127000', '0', '10', '7365', '3235', '0', '0', '0','8', '0', '0', '0', '25210', '-11365.2', '-2981.1', '0.722663', '1.01229', 'To Serve Kum\'isha: Summon Creature Flawless Draenethyst Fragment'),
('2521', '131000', '0', '10', '7365', '2828', '0', '0', '0','8', '0', '0', '0', '25210', '-11367.9', '-2980.55', '1.2531', '0.610865', 'To Serve Kum\'isha: Summon Creature Flawless Draenethyst Fragment'),
('2521', '134000', '0', '10', '7365', '2438', '0', '0', '0','8', '0', '0', '0', '25210', '-11367.9', '-2977.98', '0.831891', '0.226893', 'To Serve Kum\'isha: Summon Creature Flawless Draenethyst Fragment'),
('2521', '139000', '0', '9', '6000016', '35', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '03', 'To Serve Kum\'isha: Respawn GameObject Nether Rift'),
('2521', '142000', '0', '0', '0', '0', '0', '0', '0', '0','3475', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Say Text'),
('2521', '144000', '0', '10', '7401', '21641', '0', '0', '0','8', '0', '0', '0', '25219', '-11283.3', '-2978.3', '21.7695', '3.327', 'To Serve Kum\'isha: Summon Creature Draenei Refugee'),
('2521', '144000', '0', '10', '7401', '21641', '0', '0', '0','8', '0', '0', '0', '25218', '-11281.2', '-2979.6', '21.7026', '3.67157', 'To Serve Kum\'isha: Summon Creature Draenei Refugee'),
('2521', '144000', '0', '10', '7401', '21641', '0', '0', '0','8', '0', '0', '0', '25217', '-11278.9', '-2978.77', '22.0463', '3.69067', 'To Serve Kum\'isha: Summon Creature Draenei Refugee'),
('2521', '144000', '0', '10', '7401', '21641', '0', '0', '0','8', '0', '0', '0', '25216', '-11283', '-2977.42', '21.7573', '3.28084', 'To Serve Kum\'isha: Summon Creature Draenei Refugee'),
('2521', '144000', '0', '10', '7401', '23250', '0', '0', '0','8', '0', '0', '0', '25215', '-11326.5', '-2940.2', '26.2404', '4.56531', 'To Serve Kum\'isha: Summon Creature Draenei Refugee'),
('2521', '144000', '0', '10', '7401', '23250', '0', '0', '0','8', '0', '0', '0', '25214', '-11326.9', '-2945.39', '22.8358', '5.49779', 'To Serve Kum\'isha: Summon Creature Draenei Refugee'),
('2521', '144000', '0', '10', '7401', '19610', '0', '0', '0','8', '0', '0', '0', '25213', '-11346.9', '-2926.89', '20.1307', '3.9705', 'To Serve Kum\'isha: Summon Creature Draenei Refugee'),
('2521', '144000', '0', '10', '7401', '19610', '0', '0', '0','8', '0', '0', '0', '25212', '-11350', '-2927.87', '19.9723', '4.73971', 'To Serve Kum\'isha: Summon Creature Draenei Refugee'),
('2521', '144000', '0', '10', '7401', '19610', '0', '0', '0','8', '0', '0', '0', '25211', '-11353.1', '-2930.6', '19.0882', '4.99767', 'To Serve Kum\'isha: Summon Creature Draenei Refugee'),
('2521', '157000', '0', '0', '0', '0', '0', '0', '0', '0','3476', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Say Text'),
('2521', '172000', '0', '10', '7409', '10890', '0', '0', '0','8', '0', '0', '0', '0', '-11366.1', '-2979.03', '1.05193', '0.541052', 'To Serve Kum\'isha: Summon Creature Faltering Draenethyst Sphere'),
('2521', '172000', '1', '15', '10451', '0', '0', '7409', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Flawless Draenethyst Sphere - Cast Spell Implosion'),
('2521', '182000', '0', '28', '7', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Set Stand State to UNIT_STAND_STATE_DEAD'),
('2521', '184000', '0', '0', '0', '0', '0', '0', '0', '0','3477', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Say Text'),
('2521', '187000', '0', '28', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Set Stand State to UNIT_STAND_STATE_STAND'),
('2521', '187000', '0', '21', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Remove ActiveObject'),
('2521', '187000', '0', '29', '2', '1', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Add Npc Flags'),
('2521', '197000', '0', '32', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Kum\'isha the Collector - Start Waypoints - Custom');
-- On TBC retail he get stuck at the crate and dont starts his waypoint movement again. Custom fixed this

UPDATE quest_template SET CompleteScript=2521 WHERE entry=2521;

-- Spawn script for Creature Flawless Draenethyst Fragment (Entry: 7365)
DELETE FROM dbscripts_on_relay WHERE id='25210';
INSERT INTO dbscripts_on_relay (id, delay,  command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
('25210', '0', '15', '10387', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Flawless Draenethyst Fragment - Cast Spell Lightning Surge');

-- Spawn script for Creature Draenei Refugee (Entry: 7401 Guid: 566)
DELETE FROM dbscripts_on_relay WHERE id='25211';
INSERT INTO dbscripts_on_relay (id, delay,  command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
('25211', '0', '25', '1', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Draenei Refugee - Set Run'),
('25211', '0', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11348.5', '-2953.11', '12.658', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25211', '1000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', ' -11338.8', '-2967.93', '5.33431', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25211', '4000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11355.9', '-2970.98', '3.94515', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25211', '6000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11361.9', '-2974.77', '0.459062', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25211', '9000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '3.96035', 'To Serve Kum\'isha: Draenei Refugee - Set Orientation'),
('25211', '16000', '25', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Draenei Refugee - Set Move'),
('25211', '16000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11365.2', '-2978.34', '0.422498', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25211', '19000', '15', '10454', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Draenei Refugee - Cast Spell Into the Rift');

-- Spawn script for Creature Draenei Refugee (Entry: 7401 Guid: 567)
DELETE FROM dbscripts_on_relay WHERE id='25212';
INSERT INTO dbscripts_on_relay (id, delay,  command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
('25212', '0', '25', '1', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Draenei Refugee - Set Run'),
('25212', '0', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11349.7', '-2939.2', '16.1839', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25212', '1000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11350.9', '-2949.05', '13.9437', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25212', '3000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11345.8', '-2979.93', '2.34017', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25212', '4000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11328.9', '-2978.01', '6.29086', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25212', '6000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11341.1', '-2974.63', '4.26326', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25212', '8000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11370.3', '-2977', '1.17285', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25212', '9000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11358.6', '-2975.7', '0.505263', '3.57665', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25212', '17000', '25', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Draenei Refugee - Set Move'),
('25212', '17000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11370.8', '-2980.29', '1.62647', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25212', '18000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11360.4', '-2976.36', '-0.204024', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25212', '19000', '15', '10454', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Draenei Refugee - Cast Spell Into the Rift');


-- Spawn script for Creature Draenei Refugee (Entry: 7401 Guid: 568)
DELETE FROM dbscripts_on_relay WHERE id='25213';
INSERT INTO dbscripts_on_relay (id, delay,  command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
('25213', '0', '25', '1', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Draenei Refugee - Set Run'),
('25213', '0', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11362.3', '-2943.75', '11.5691', '0','To Serve Kum\'isha: Draenei Refugee - Move'),
('25213', '1000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11356.4', '-2958.47', '8.06084', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25213', '3000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11346.8', '-2975.13', '4.92269', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25213', '4000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11325.5', '-2981.46', '5.90365', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25213', '6000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11343.4', '-2969.88', '6.56185', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25213', '8000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11373.3', '-2981.32', '1.25147', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25213', '9000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11357', '-2975.08', '1.37361', '3.56286', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25213', '17000', '25', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Draenei Refugee - Set Move'),
('25213', '17000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11366.8', '-2978.97', '0.703126', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25213', '18000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11364.7', '-2978.15', '0.210527', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25213', '19000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11360.9', '-2976.63', '-0.183267', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25213', '19000', '15', '10454', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Draenei Refugee - Cast Spell Into the Rift');

-- Spawn script for Creature Draenei Refugee (Entry: 7401 Guid: 569)
DELETE FROM dbscripts_on_relay WHERE id='25214';
INSERT INTO dbscripts_on_relay (id, delay,  command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
('25214', '0', '25', '1', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Draenei Refugee - Set Run'),
('25214', '0', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11313.6', '-2963.89', '13.2191', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25214', '1000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11318.9', '-2968.2', '10.3099', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25214', '3000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11333.5', '-2967.46', '6.05769', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25214', '5000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11349.8', '-2968.26', '5.39607', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25214', '6000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11355.3', '-2971.07', '4.12825', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25214', '10000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0','3.79078', 'To Serve Kum\'isha: Draenei Refugee - Set Orientation'),
('25214', '10000', '25', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Draenei Refugee - Set Move'),
('25214', '16000', '3', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '-11365.1', '-2978.47', '0.500289', '0', 'To Serve Kum\'isha: Draenei Refugee - Move'),
('25214', '23000', '15', '10454', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', 'To Serve Kum\'isha: Draenei Refugee - Cast Spell Into the Rift');

-- Spawn script for Creature Draenei Refugee (Entry: 7401 Guid: 570)
DELETE FROM dbscripts_on_relay WHERE id='25215';
INSERT INTO dbscripts_on_relay (id, delay,  command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(25215, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Set Run'),
(25215, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11331.2, -2971.91, 6.30893, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25215, 1000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11320.7, -2951.67, 19.3695, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25215, 3000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11314.7, -2961.97, 14.3817, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25215, 5000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11334.7, -2982.36, 3.20003, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25215, 6000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11355.5, -2961.02, 7.11431, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25215, 8000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11355.1, -2965.21, 4.44267, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25215, 10000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11355.2, -2970.92, 4.20467, 3.88553, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25215, 18000, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Set Walk'),
(25215, 18000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11358.2, -2973.6, 1.57649, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25215, 19000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11366.7, -2979.83, 0.724122, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25215, 21000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11367.1, -2979.92, 0.868654, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25215, 23000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11364.6, -2978.09, 0.267391, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25215, 23000, 15, 10454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Cast Spell Into the Rift');

-- Spawn script for Creature Draenei Refugee (Entry: 7401 Guid: 571)
DELETE FROM dbscripts_on_relay WHERE id=25216;
INSERT INTO dbscripts_on_relay (id, delay,  command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(25216, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Set Run'),
(25216, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11299.1, -2979.68, 12.1386, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25216, 1000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11312, -2977.58, 5.92587, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25216, 3000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11329.7, -2979.38, 5.9122, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25216, 5000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11342.5, -2978.24, 2.99373, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25216, 6000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11353.4, -2978.62, 1.41072, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25216, 11000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0, 0, 0, 3.17752, 'To Serve Kum\'isha: Draenei Refugee - Set Orientation'),
(25216, 16000, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Set Walk'),
(25216, 16000, 3,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11364.9, -2979.03, 0.251054, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25216, 21000, 15, 10454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Cast Spell Into the Rift');

-- Spawn script for Creature Draenei Refugee (Entry: 7401 Guid: 572)
DELETE FROM dbscripts_on_relay WHERE id=25217;
INSERT INTO dbscripts_on_relay (id, delay,  command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(25217, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Set Run'),
(25217, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11284.5, -2982.16, 20.1828, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25217, 1000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11311.7, -2978.35, 5.68393, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25217, 3000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11325.2, -2979.2, 6.81064, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25217, 5000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11321, -2975.09, 7.59311, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25217, 6000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11326, -2979, 6.69443, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25217, 8000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11359.7, -2974.61, 0.782793, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25217, 10000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11353.4, -2978.62, 1.41072, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25217, 11000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.20598, 'To Serve Kum\'isha: Draenei Refugee - Set Orientation'),
(25217, 18000, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Set Walk'),
(25217, 18000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11357.4, -2977.98, 0.0071578, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25217, 19000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11360, -2977.72, -0.576094, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25217, 21000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11359.8, -2978.5, -0.481123, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25217, 21000, 15, 10454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Cast Spell Into the Rift');

-- Spawn script for Creature Draenei Refugee (Entry: 7401 Guid: 573)
DELETE FROM dbscripts_on_relay WHERE id=25218;
INSERT INTO dbscripts_on_relay (id, delay,  command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(25218, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Set Run'),
(25218, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11291, -2985.36, 15.1545, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25218, 1000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11299.2, -2986.88, 9.09321, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25218, 3000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11326, -2973.74, 7.4144, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25218, 5000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11317, -2982.33, 5.50229, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25218, 6000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11344.4, -2978.03, 2.86263, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25218, 8000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11357.5, -2982.74, 0.692216, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25218, 10000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11348.6, -2979.74, 2.15193, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25218, 11000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.02438, 'To Serve Kum\'isha: Draenei Refugee - Set Orientation'),
(25218, 18000, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Set Walk'),
(25218, 18000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11357.4, -2981.32, 0.238359, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25218, 19000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11361, -2981.5, 0.482988, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25218, 21000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11360.7, -2980.06, 0.0288863, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25218, 21000, 15, 10454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Cast Spell Into the Rift');

-- Spawn script for Creature Draenei Refugee (Entry: 7401 Guid: 574)
DELETE FROM dbscripts_on_relay WHERE id=25219;
INSERT INTO dbscripts_on_relay (id, delay,  command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(25219, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Set Run'),
(25219, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11296.8, -2980.83, 13.6188, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25219, 1000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11302.3, -2981.52, 9.18246, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25219, 3000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11314.9, -2980.12, 5.34286, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25219, 5000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11322.8, -2979.72, 6.19955, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25219, 6000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11326, -2979, 6.69443, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25219, 8000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11359.7, -2973.27, 1.31282, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25219, 10000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11350.6, -2978.15, 2.58602, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25219, 11000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.22069, 'To Serve Kum\'isha: Draenei Refugee - Set Orientation'),
(25219, 18000, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Set Walk'),
(25219, 18000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11359.9, -2977.36, -0.520674, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25219, 19000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11364.1, -2977.47, 0.0489058, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25219, 21000, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -11362.4, -2978.61, -0.218916, 0, 'To Serve Kum\'isha: Draenei Refugee - Move'),
(25219, 21000, 15, 10454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To Serve Kum\'isha: Draenei Refugee - Cast Spell Into the Rift');

DELETE FROM creature_spawn_data_template WHERE entry IN (25210, 25211, 25212, 25213, 25214, 25215, 25216, 25217, 25218, 25219);
INSERT INTO creature_spawn_data_template (Entry, RelayId) VALUES 
('25210', '25210'),
('25211', '25211'),
('25212','25212'),
('25213','25213'),
('25214','25214'),
('25215','25215'),
('25216','25216'),
('25217','25217'),
('25218','25218'),
('25219','25219');

-- Correct creature data.
UPDATE creature_template SET Faction=35, UnitFlags=768, SpeedWalk=1, SpeedRun=1.14286 WHERE entry=7364;
UPDATE creature_template SET Faction=35, UnitFlags=768, SpeedWalk=1, SpeedRun=1.14286 WHERE entry=7365;
UPDATE creature_template SET Faction=120, UnitFlags=768, SpeedWalk=1.11111, SpeedRun=1.14286, MovementType='0' WHERE entry=7401;
UPDATE creature_template SET Faction=14, UnitFlags=33555200, SpeedWalk=1, SpeedRun=1.14286 WHERE entry=7409;

-- Define targets for spell Implosion.
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES ('10451', '1', '7363');

-- Add GameObject Spawn Nether Rift, gets respawned during event
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, state, animprogress) VALUES
(6000016, 137167, 0, -11365.9, -2979.07, 0.413705, 2.02458, 0, 0, 0, 0, -1, -1, 1, 100);

-- This text should be yelled.
UPDATE broadcast_text SET ChatTypeID=1 WHERE Id=3475;
-- This text should be a Text Emote
UPDATE broadcast_text SET ChatTypeID=2 WHERE Id=3441;

-- Kum'isha the Collector Waypoints
DELETE FROM creature_movement_template WHERE entry=7363;
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES 
(7363, 0, 1, -11369.783,-2980.7336,1.626466, 0, 0, 0),
(7363, 0, 2, -11371.476,-2982.291,1.6745617, 100, 34000, 0),
(7363, 0, 3, -11368.286,-2973.2224,1.7229016, 0, 0, 0),
(7363, 0, 4, -11366.904,-2969.5007,3.308595, 100, 36000, 0),
(7363, 0, 5, -11358.768,-2974.8843,0.7884078, 0, 0, 0),
(7363, 0, 6, -11352.053,-2983.638,1.3909469, 100, 33000, 0),
(7363, 0, 7, -11345.372,-2987.4346,1.9239058, 0, 0, 0),
(7363, 0, 8, -11334.677,-2994.1604,2.6868453, 0, 0, 0),
(7363, 0, 9, -11321.647,-3000.6702,5.484984, 0, 0, 0),
(7363, 0, 10, -11310.01,-3005.1047,13.2843, 0, 0, 0),
(7363, 0, 11, -11317.975,-3011.9966,17.597532, 0, 0, 0),
(7363, 0, 12, -11324.759,-3019.852,18.524046, 100, 52000, 0),
(7363, 0, 13, -11325.033,-3026.8516,15.752073, 0, 0, 0),
(7363, 0, 14, -11343.012,-3034.8528,-0.007590294, 0, 0, 0),
(7363, 0, 15, -11357.836,-3038.5696,-4.3359594, 0, 0, 0),
(7363, 0, 16, -11375.748,-3039.175,-4.518797, 100, 1000, 0),
(7363, 0, 17, -11366.477,-3033.189,-4.500754, 100, 8000, 0),
(7363, 0, 18, -11367.095,-3033.581,-4.347527, 0, 0, 0),
(7363, 0, 19, -11376.28,-3030.0205,-4.4655366, 0, 0, 0),
(7363, 0, 20, -11372.103,-3021.3464,-4.3405366, 0, 0, 0),
(7363, 0, 21, -11361.419,-2998.49,-0.008955479, 0, 0, 0),
(7363, 0, 22, -11362.81,-2982.8386,0.780107, 100, 450000, 0);

UPDATE creature SET MovementType='2' WHERE (id='7363');
