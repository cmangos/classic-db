-- The Attack!(q.434) -A

SET @STRING := 2000000169;
DELETE FROM db_script_string WHERE entry BETWEEN @STRING + 1 AND @STRING + 16;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(@STRING + 1,'By your command!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(@STRING + 2,'Wait here, $N. Spybot will make Lescovar come out as soon as possible. Be ready! Attack only after you\'ve overheard their conversation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@STRING + 3,'Good day to you both. I would speak to Lord Lescovar.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@STRING + 4,'Of course. He awaits you in the library.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@STRING + 5,'Thank you. The Light be with you both.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@STRING + 6,'Milord, your guest has arrived. He awaits your presence.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@STRING + 7,'Ah, thank you kindly. I will leave you to the library while I tend to this small matter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@STRING + 8,'I shall use this time wisely, milord. Thank you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,2,NULL),
(@STRING + 9,'It\'s time for my meditation, leave me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@STRING + 10,'Yes, sir!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(@STRING + 11,'%s waits for the guards to be out of sight.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(@STRING + 12,'There you are. What news from Westfall?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@STRING + 13,'VanCleef sends word that the plans are underway. But he\'s heard rumors about someone snooping about.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(@STRING + 14,'Hmm, it could be that meddler Shaw. I will see what I can discover. Be off with you. I\'ll contact you again soon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(@STRING + 15,'Very well. I will return then.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(@STRING + 16,'That\'s it! That\'s what you were waiting for! KILL THEM!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

UPDATE quest_template SET StartScript = 434 WHERE entry = 434;
UPDATE creature_template SET Scale = 1 WHERE Entry = 7779;

DELETE FROM dbscripts_on_quest_start WHERE id = 434;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(434,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(434,1,3,0,0,0,0,0,0,0,0,0,0,0,0,6.26784,''),
(434,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(434,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(434,8,0,0,0,8856,15,7,@STRING + 1,0,0,0,0,0,0,0,'force buddy to: say text'),
(434,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(434,10,15,7671,0,8856,15,7,0,0,0,0,0,0,0,0,'cast 7671 on buddy'),
(434,10,3,0,0,0,0,0,0,0,0,0,0,0,0,2.251,''),
(434,11,23,7779,0,8856,15,7,0,0,0,0,0,0,0,0,'morph into 7779'),
(434,11,0,0,0,0,0,0,@STRING + 2,0,0,0,0,0,0,0,''),
(434,15,20,2,0,8856,50,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(434,177,7,434,0,0,0,0,0,0,0,0,0,0,0,0,''),
(434,210,3,0,0,1756,10523,7 | 0x10,0,0,0,0,0,0,0,0.711,''),
(434,210,3,0,0,1756,10524,7 | 0x10,0,0,0,0,0,0,0,3.773,'');

-- Tyrion's Spybot 
UPDATE creature SET spawntimesecs = 10 WHERE guid = 45707;
DELETE FROM creature_movement_template WHERE entry = 8856;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(8856,1,-8409.1,454.405,123.759,0,0,0,0,0,0,0,0,0,0,1.55551,0,0),
(8856,2,-8408.57,461.702,123.759,0,0,0,0,0,0,0,0,0,0,0.550206,0,0),
(8856,3,-8404.36,462.399,123.759,0,0,0,0,0,0,0,0,0,0,6.07313,0,0),
(8856,4,-8392.61,452.583,123.759,12000,885601,0,0,0,0,0,0,0,0,5.4511,0,0),
(8856,5,-8387.08,446.018,122.275,0,0,0,0,0,0,0,0,0,0,5.4177,0,0),
(8856,6,-8357.03,407.012,122.275,0,0,0,0,0,0,0,0,0,0,4.08331,0,0),
(8856,7,-8363.85,397.714,122.275,0,0,0,0,0,0,0,0,0,0,5.30068,0,0),
(8856,8,-8352.34,383.887,122.275,0,0,0,0,0,0,0,0,0,0,0.564722,0,0),
(8856,9,-8335.86,393.578,122.275,11000,885602,0,0,0,0,0,0,0,0,0.58043,0,0),
(8856,10,-8351.56,383.447,122.275,0,0,0,0,0,0,0,0,0,0,2.2703,0,0),
(8856,11,-8363.64,398.716,122.275,0,0,0,0,0,0,0,0,0,0,1.05293,0,0),
(8856,12,-8358.44,409.568,122.275,0,0,0,0,0,0,0,0,0,0,2.32842,0,0),
(8856,13,-8384.23,442.599,122.275,0,0,0,0,0,0,0,0,0,0,3.6911,0,0),
(8856,14,-8408.03,426.547,122.275,0,0,0,0,0,0,0,0,0,0,2.57112,0,0),
(8856,15,-8415.88,433.865,122.275,4000,885603,0,0,0,0,0,0,0,0,2.27018,0,0);

DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 885601 AND 885603; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(885601,3,0,0,0,0,0,0,@STRING + 3,0,0,0,0,0,0,0,''),
(885601,5,1,16,0,1756,10523,7 | 0x10,0,0,0,0,0,0,0,0,''),
(885601,5,1,16,0,1756,10524,7 | 0x10,0,0,0,0,0,0,0,0,''),
(885601,8,0,0,0,1756,15,7,@STRING + 4,0,0,0,0,0,0,0,'force buddy to: say text'),
(885601,10,0,0,0,0,0,0,@STRING + 5,0,0,0,0,0,0,0,''),
(885602,1,3,0,0,1754,15,7,0,0,0,0,0,0,0,3.84895,''),
(885602,3,0,0,0,0,0,0,@STRING + 6,0,0,0,0,0,0,0,''),
(885602,5,0,0,0,1754,15,7,@STRING + 7,0,0,0,0,0,0,0,'force buddy to: say text'),
(885602,7,3,0,0,1754,15,7,0,0,0,0,0,0,0,2.596,''),
(885602,8,20,2,0,1754,20,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(885602,9,0,0,0,0,0,0,@STRING + 8,0,0,0,0,0,0,0,''),
(885603,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(885603,0,15,7671,0,0,0,0,0,0,0,0,0,0,0,0,'cast 7671 on buddy'),
(885603,1,23,0,0,0,0,0,0,0,0,0,0,0,0,0,'demorph'),
(885603,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');

-- Lord Gregor Lescovar
UPDATE creature SET spawntimesecs = 10 WHERE guid = 10502;
DELETE FROM creature_movement_template WHERE entry = 1754;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(1754,1,-8336.44,398.293,122.274,0,0,0,0,0,0,0,0,0,0,1.598,0,0),
(1754,2,-8336.895508,403.524048,122.274452,0,0,0,0,0,0,0,0,0,0,2.344913,0,0),
(1754,3,-8346.306641,414.936646,122.274452,0,0,0,0,0,0,0,0,0,0,3.659671,0,0),
(1754,4,-8357.951172,409.592560,122.274452,0,0,0,0,0,0,0,0,0,0,2.304858,0,0),
(1754,5,-8387.138672,445.790863,122.274780,0,0,0,0,0,0,0,0,0,0,2.257747,0,0),
(1754,6,-8392.396484,452.201996,123.760300,10000,175401,0,0,0,0,0,0,0,0,2.257747,0,0),
(1754,7,-8400.86,463.355,123.76,40000,175402,0,0,0,0,0,0,0,0,2.07666,0,0),
(1754,8,-8386.97,445.847,122.275,0,0,0,0,0,0,0,0,0,0,5.40122,0,0),
(1754,9,-8358.15,410.531,122.275,0,0,0,0,0,0,0,0,0,0,0.16575,0,0),
(1754,10,-8345.4,414.187,122.275,0,0,0,0,0,0,0,0,0,0,5.402,0,0),
(1754,11,-8336.05,402.219,122.275,0,0,0,0,0,0,0,0,0,0,4.95197,0,0),
(1754,12,-8334.01,394.723,122.275,3000,175403,0,0,0,0,0,0,0,0,2.56278,0,0);

DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 175401 AND 175403; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(175401,3,0,0,0,0,0,0,@STRING + 9,0,0,0,0,0,0,0,''),
(175401,6,1,66,0,1756,10523,7 | 0x10,0,0,0,0,0,0,0,0,''),
(175401,6,1,66,0,1756,10524,7 | 0x10,0,0,0,0,0,0,0,0,''),
(175401,8,0,0,0,1756,15,7,@STRING + 10,0,0,0,0,0,0,0,'force buddy to: say text'),
(175401,9,3,0,0,1756,10523,7 | 0x10,0,0,0,0,-8381.06,429.38,122.275,0.984174,''),
(175401,9,3,0,0,1756,10524,7 | 0x10,0,0,0,0,-8372.24,436.54,122.275,3.9302,''),
(175402,3,0,0,0,0,0,0,@STRING + 11,0,0,0,0,0,0,0,''),
(175402,8,10,1755,300000,0,0,0,0,0,0,0,-8406.6,487.658,123.76,4.51923,''),
(175402,9,15,6634,0,1755,100,7,0,0,0,0,0,0,0,0,'cast 6634 on buddy'),
(175402,9,3,0,0,1755,50,7,0,0,0,0,-8403.89,469.689,123.76,5.19074,''),
(175402,16,0,0,0,0,0,0,@STRING + 12,0,0,0,0,0,0,0,''),
(175402,20,0,0,0,1755,20,7,@STRING + 13,0,0,0,0,0,0,0,'force buddy to: say text'),
(175402,24,0,0,0,0,0,0,@STRING + 14,0,0,0,0,0,0,0,''),
(175402,28,0,0,0,1755,20,7,@STRING + 15,0,0,0,0,0,0,0,'force buddy to: say text'),
(175402,28,20,2,0,1755,20,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(175402,29,0,0,0,7766,50,7,@STRING + 16,0,0,0,0,0,0,0,'force buddy to: say text'),
(175402,30,3,0,0,1756,10523,7 | 0x10,0,0,0,0,-8394,448.942,123.76,0.711,''),
(175402,30,3,0,0,1756,10524,7 | 0x10,0,0,0,0,-8389,452.936,123.76,3.773,''),
(175402,29,29,3,1,7766,50,7,0,0,0,0,0,0,0,0,'npc_flag added'),
(175402,31,22,7,1,1755,20,7,0,0,0,0,0,0,0,0,''),
(175402,31,22,7,1,0,0,0,0,0,0,0,0,0,0,0,''),
(175403,1,22,12,1,0,0,0,0,0,0,0,0,0,0,0,''),
(175403,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');

-- Marzon the Silent Blade
DELETE FROM creature_movement_template WHERE entry = 1755;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(1755,1,-8403.89,469.689,123.76,15000,0,0,0,0,0,0,0,0,0,5.19074,0,0),
(1755,2,-8421.35,488.745,122.275,0,0,0,0,0,0,0,0,0,0,3.32384,0,0),
(1755,3,-8443.96,471.661,122.275,0,0,0,0,0,0,0,0,0,0,4.80903,0,0),
(1755,4,-8439.43,464.675,122.275,2000,175501,0,0,0,0,0,0,0,0,5.36195,0,0);

DELETE FROM dbscripts_on_creature_movement WHERE id = 175501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(175501,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(175501,1,22,12,1,0,0,0,0,0,0,0,0,0,0,0,''),
(175501,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');

DELETE FROM creature_linking_template WHERE entry = 1755; -- link between Lord Gregor Lescovar and Marzon the Silent Blade
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(1755,0,1754,3,100);

-- DELETE
-- Priestess Tyriona -- spawned(morphed) by quest 434
DELETE FROM creature WHERE guid = 43690;
-- Marzon the Silent Blade -- spawned for quest 434
DELETE FROM creature WHERE guid = 10504;
