-- Fixed quest Waking Legends(q.8447) by adding end script. Heavily based on commit https://github.com/unified-db/Database/commit/8d6e23b090ea95e4230e9f431229b6c02efe1da3
-- by @Grz3s for UDB but adjusted for Classic DB.
-- This closes #32 
-- Source: http://www.youtube.com/watch?v=7S6_U8qNU2U

SET @MALFURION := 15362;

DELETE FROM dbscripts_on_quest_start WHERE id = 8447;
INSERT INTO dbscripts_on_quest_start (id,  delay,  command,  datalong,  datalong2,  buddy_entry,  search_radius,  data_flags,  dataint,  dataint2,  dataint3,  dataint4,  x,  y,  z,  o,  comments) VALUES
(8447, 1, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remulos active'), 
(8447, 1, 29, 3, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '22832 - npc_flag removed'), 
(8447, 3, 0, 0, 0, 0, 0, 0, 2000000375, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7841.78, -2226.41, 468.062, 4.27031, ''), 
(8447, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7828.99, -2246.58, 463.559, 4.44419, ''), 
(8447, 11, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7824.59, -2280.33, 459.171, 4.52666, ''), 
(8447, 16, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7817.51, -2302.91, 456.077, 3.83315, ''), 
(8447, 19, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7808.83, -2304.32, 455.411, 3.81116, ''), 
(8447, 21, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7788.35, -2321.57, 454.651, 3.49596, ''), 
(8447, 24, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7775.52, -2324.3, 454.189, 3.10954, ''), 
(8447, 26, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7755.16, -2315.33, 455.235, 2.95796, ''), 
(8447, 31, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wp pause'), 
(8447, 35, 0, 0, 0, 0, 0, 0, 2000000376, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 40, 15, 25004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 50, 10, @MALFURION, 180000, 0, 0, 0, 0, 0, 0, 0, 7738.52, -2314.8, 454.679, 0.046443, 'summon'), 
(8447, 51, 15, 17321, 0, @MALFURION, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'cast spirit spawn-in'), 
(8447, 54, 0, 0, 0, 0, 0, 0, 2000000377, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 57, 0, 0, 0, @MALFURION, 20, 7, 2000000378, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 61, 1, 0, 0, @MALFURION, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 62, 0, 0, 0, 0, 0, 0, 2000000379, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 70, 0, 0, 0, @MALFURION, 20, 7, 2000000380, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 80, 1, 0, 0, @MALFURION, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 81, 0, 0, 0, 0, 0, 0, 2000000381, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 84, 0, 0, 0, @MALFURION, 20, 7, 2000000382, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 89, 0, 0, 0, 0, 0, 0, 2000000383, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 99, 0, 0, 0, @MALFURION, 20, 7, 2000000384, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 116, 1, 0, 0, @MALFURION, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 117, 0, 0, 0, @MALFURION, 20, 7, 2000000385, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 121, 1, 0, 0, @MALFURION, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 122, 0, 0, 0, 0, 0, 0, 2000000386, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 125, 18, 0, 0, @MALFURION, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'malfurion desp'), 
(8447, 125, 7, 8447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 126, 0, 0, 0, 0, 0, 0, 2000000387, 0, 0, 0, 0, 0, 0, 0, ''), 
(8447, 128, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7848.3, -2216.35, 470.888, 0.572632, ''), 
(8447, 148, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.90954, ''), 
(8447, 149, 29, 3, 0x01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '22832 - npc_flag added'), 
(8447, 149, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remulos unactive');

UPDATE quest_template SET StartScript = 8447 WHERE entry = 8447;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000375 AND 2000000387;
INSERT INTO db_script_string (entry,  content_default,  content_loc1,  content_loc2,  content_loc3,  content_loc4,  content_loc5,  content_loc6,  content_loc7,  content_loc8,  sound,  type,  language,  emote,  comment) VALUES
(2000000375, 'Come,  $N. The lake is around the bend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL), 
(2000000376, 'Stand near me,  $N. I will protect you should anything go wrong.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL), 
(2000000377, 'Malfurion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL), 
(2000000378, 'Remulos,  old friend. It is good to see you once more. I knew the message would find its way to you - one way or another.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL), 
(2000000379, 'It was shrouded in nightmares,  Malfurion. What is happening in the Dream? What could cause such atrocities?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL), 
(2000000380, 'I fear for the worst,  old friend. Within the Dream we fight a new foe,  born of an ancient evil. Ysera\'s noble brood has fallen victim to the old whisperings. It seems as if the Nightmare has broken through the realm to find a new host on Azeroth.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL), 
(2000000381, 'I sensed as much,  Malfurion. Dark days loom ahead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL), 
(2000000382, 'Aye Remulos,  prepare the mortal races.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL), 
(2000000383, 'You have been gone too long,  Malfurion. Peace between the Children of Azeroth has become tenuous at best. What of my father? Of your brother? Have you any news?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL), 
(2000000384, 'Cenarius fights at my side. Illidan sits atop his throne in Outland - brooding. I\'m afraid that the loss to Arthas proved to be his breaking point. Madness has embraced him,  Remulos. He replays the events in his mind a thousand times per day,  but in his mind,  he is the victor and Arthas is utterly defeated. He is too far gone,  old friend. I fear that the time may soon come that our bond is tested and it will not be as it was at the Well in Zin-Azshari. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL), 
(2000000385, 'Remulos,  I am being drawn back... Tyrande... send her my love... Tell her I am safe... Tell her... Tell her I will return... Farewell...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL), 
(2000000386, 'Farewell,  old friend... Farewell...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL), 
(2000000387, 'Let us return to the grove,  mortal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

DELETE FROM spell_target_position WHERE id = 25004;
INSERT INTO spell_target_position (id,  target_map,  target_position_x,  target_position_y,  target_position_z,  target_orientation) VALUES
(25004, 1, 7738.52, -2314.8, 452.679, 0);

-- Malfurion Stormrage -- update
UPDATE creature_template SET InhabitType = 5 WHERE entry = @MALFURION;
INSERT INTO creature_template_addon VALUES (@MALFURION, 0, 0, 1, 0, 0, 0, 24999);
DELETE FROM creature_template_addon WHERE entry = @MALFURION;
