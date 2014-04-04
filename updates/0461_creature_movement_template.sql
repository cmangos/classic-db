-- Added waypoint movement to creature (9099) Sraaz in Ironforge, Great Forge
-- Fixed a typo in its gossip
-- This closes #362 
-- Source: http://wowhead.com/npc=9099#map
DELETE FROM `creature_movement_template` WHERE `entry` = 9099;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(9099, 1, -4733.2, -1103.2, 502.218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590180, 4.54775, 0, 0),
(9099, 2, -4736.72, -1122.98, 502.214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590181, 4.35611, 0, 0),
(9099, 3, -4747.08, -1146.98, 502.213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590182, 3.81183, 0, 0),
(9099, 4, -4766.49, -1160.2, 502.198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590183, 3.59978, 0, 0),
(9099, 5, -4788.93, -1168.72, 502.211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590184, 3.18823, 0, 0),
(9099, 6, -4816.2, -1166.78, 502.207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590185, 2.8882, 0, 0),
(9099, 7, -4836.05, -1160.34, 502.211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590186, 2.45781, 0, 0),
(9099, 8, -4854.39, -1143.81, 502.197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590187, 2.19627, 0, 0),
(9099, 9, -4868.9, -1124.31, 502.212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 590188, 1.75116, 0, 0),
(9099, 10, -4872.48, -1098.5, 502.212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58308, 0, 0),
(9099, 11, -4861.55, -1089.7, 502.206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.071973, 0, 0),
(9099, 12, -4821.17, -1086.28, 502.213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.543213, 0, 0),
(9099, 13, -4812.93, -1079.11, 502.214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.43857, 0, 0),
(9099, 14, -4808.79, -1031.74, 502.211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.37102, 0, 0),
(9099, 15, -4791.55, -1029.26, 502.207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.004429, 0, 0),
(9099, 16, -4766.54, -1039.25, 502.211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.6271, 0, 0),
(9099, 17, -4749.26, -1054.1, 502.211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.30901, 0, 0),
(9099, 18, -4736.52, -1075.33, 502.211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.91081, 0, 0);

-- Enabled creature 9099 to use waypoints
UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 9099;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 9099;

-- Fixed a typo in gossip menu "homemeade" -> "home made"
UPDATE `npc_text` SET `text1_0` = 'Nana always said there was no greater thing in the whole world than a warm, toasty slice of fresh, home made cherry pie.', `text1_1` = 'Nana always said there was no greater thing in the whole world than a warm, toasty slice of fresh, home made cherry pie.' WHERE `id` = 2355;
