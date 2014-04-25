-- Added support for event in Blackrock Spire of Scarshield Infiltrator morphing into Vaelan
-- Source: http://www.youtube.com/watch?v=VVxOPiDVwNQ
-- This closes #411 

-- Added AI script for creature 10299 (Scarshield Infiltrator)
DELETE FROM `creature_ai_scripts` WHERE `id` IN (1029901, 1029902, 1029903, 1029904);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(1029901, 10299, 11, 0, 100, 0, 0, 0, 0, 0, -- Expires on spawn
22, 1, 0, 0,                                -- Set phase to 1 
0, 0, 0, 0,
0, 0, 0, 0,
'Scarshield Infiltrator - set phase to 0 on spawn'),
(1029902, 10299, 10, 5, 100, 0, 0, 15, 0, 0, -- Expire when player within 15 yards
36, 10296, 0, 0,    -- Morphs into Vaelan (creature 10296)
11, 16037, 6, 0,    -- Casts Mind Probe on player
23, 1, 0, 0,        -- increase phase
'Scarshield Infiltrator - Morphs into Vaelan, casts Mind Probe and increase phase on LOS'),
(1029903, 10299, 1, 3, 100, 0, 2000, 2000, 0, 0,
47, 0, 0, 0,        -- change STAND_STATE to stand
1, -9, 0, 0, 5, 1, 0, 0,
'Scarshield Infiltrator - stands and speech (Phase 2)'),
(1029904, 10299, 1, 3, 100, 0, 8000, 8000, 0, 0,
1, -10, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0,
'Scarshield Infiltrator -  - speech (Phase 2)');

DELETE FROM `creature_ai_texts` WHERE `entry` IN (-9, -10);
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(-9, 'At last: one among you is worthy of my knowledge. Worry not: I have probed your thoughts, no harm will come to you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Vaelan greetings'),
(-10, 'Listen carefully, for the lord of Blackrock will surely destroy you, should you not be prepared.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Vaelan greetings');

-- Set creature 10299 (Scarshield Infiltrator) to use AI scripts and allowed him to use Vaelan's gossip
UPDATE `creature_template` SET `AIName` = 'EventAI', `GossipMenuId` = 15014, `NpcFlags` = `NpcFlags`|1 WHERE `Entry` = 10299;

-- Removed Vaelan from game as it is spawned via script
DELETE FROM `creature` WHERE `id` = 10296;
