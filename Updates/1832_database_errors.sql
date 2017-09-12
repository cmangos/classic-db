-- Fixed miscellaneous database errors

-- Fixed spawned creatures stats that were not updated after template update
UPDATE creature, creature_template SET creature.curhealth=creature_template.MinLevelHealth, creature.curmana=creature_template.MinLevelMana WHERE creature.id=creature_template.Entry AND RegenerateStats&1;

-- Removed addons that were not deleted along with their creature
DELETE FROM creature_addon WHERE guid IN (518, 54043);

-- Fixed addon applying triggered spell instead of aura
UPDATE creature_template_addon SET auras='8876' WHERE entry=14882;

-- Removed dbscript_string entries that were not migrated along with their script rework
DELETE FROM dbscript_string WHERE entry IN (2000000029, 2000000043, 2000005080, 2000005086, 2000005092, 2000005098);

-- Added missing scripts
DELETE FROM dbscripts_on_creature_movement WHERE id=6;
INSERT INTO dbscripts_on_creature_movement VALUES
(6, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Run Mode Off'),
(7, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Waypoint Pause');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (908301, 908601);
INSERT INTO dbscripts_on_creature_movement VALUES
(908601, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(908601, 1, 0, 0, 0, 0, 0, 0, 0, 2000005009, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE creature_movement_template SET textid1=0 WHERE textid1=2000005009;
UPDATE creature_movement_template SET script_id=908601 WHERE entry=9086 AND point=27;
UPDATE creature_movement_template SET script_id=7 WHERE entry IN (9083, 9085) AND point=27;

INSERT INTO creature_movement_template VALUES
(738, 0, 1, -11314.8, -204.607, 75.203, 1500000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 2, -11332.4, -206.361, 75.315, 0, 73801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 3, -11359.8, -211.463, 75.2206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 4, -11375.2, -216.39, 75.2315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 5, -11380.3, -237.589, 68.6761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 6, -11386.4, -256.732, 62.7537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 7, -11391.7, -277.99, 59.1781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 8, -11435.5, -287.409, 47.7495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 9, -11465.5, -291.57, 38.9963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 10, -11466.1, -293.09, 39.182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 11, -11431.3, -290.574, 49.3746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 12, -11394, -283.104, 58.5671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 13, -11384.1, -254.267, 63.6072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 14, -11376.5, -217.148, 75.1599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 15, -11354.1, -210.72, 75.2631, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 16, -11330.5, -206.941, 75.4113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(738, 0, 17, -11314.8, -204.607, 75.203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id=73801;
INSERT INTO dbscripts_on_creature_movement VALUES
(73801, 0, 0, 0, 0, 0, 0, 0, 0, 2000005235, 0, 0, 0, 0, 0, 0, 0, '');

-- Removed no longer used movement (handled by linking now)
DELETE FROM creature_movement WHERE id=79721;
UPDATE creature SET movementtype=0 WHERE guid=79721;

-- Deleted unused gossip_menu_option
DELETE FROM gossip_menu_option WHERE menu_id=10598;

-- Removed unused linking
DELETE FROM creature_linking_template WHERE entry IN (17647, 17996);

-- Remove npc_trainer_template entries with wrong spell ID
DELETE FROM npc_trainer_template WHERE spell=21084;
