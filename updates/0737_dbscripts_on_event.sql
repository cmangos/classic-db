-- Improved end script of quest 2520 (Sathrah's Sacrifice)
-- Spirit of Sathrah - will now walk around  fountain...
UPDATE `dbscripts_on_event` SET `x` = 9639.5, `y` = 2528.97, `z` = 1331.72, `o` = 5.28395 WHERE `id` = 2313;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `Entry` = 7411; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 7411;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,wpguid,orientation,model1,model2) VALUES
(7411,1,9642.47,2523.25,1331.54,0,0,0,0,0,0,0,0,0,0,4.70163,0,0),
(7411,2,9640.32,2517.43,1331.57,0,0,0,0,0,0,0,0,0,0,4.00734,0,0),
(7411,3,9635.62,2514.35,1331.4,0,0,0,0,0,0,0,0,0,0,3.21959,0,0),
(7411,4,9630.91,2515.59,1331.72,0,0,0,0,0,0,0,0,0,0,2.56535,0,0),
(7411,5,9626.52,2520.1,1331.73,0,0,0,0,0,0,0,0,0,0,1.9496,0,0),
(7411,6,9625.02,2526.36,1331.61,0,0,0,0,0,0,0,0,0,0,1.20975,0,0),
(7411,7,9630.56,2532.58,1331.39,0,0,0,0,0,0,0,0,0,0,0.604212,0,0),
(7411,8,9636.59,2532.65,1331.73,0,0,0,0,0,0,0,0,0,0,5.88602,0,0),
(7411,9,9640.05,2529.06,1331.77,3000,741101,0,0,0,0,0,0,0,0,5.3818,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 741101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(741101,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
