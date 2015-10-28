/* Removing creature_addon entries for midsummer npcs and adding creature_template_addon entries for each midsummer npc type */

-- Midsummer Celebrant

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 16781);

INSERT INTO `creature_template_addon` VALUES (16781, 0, 0, 1, 16, 0, 0, (NULL));

-- Firebreathers

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 17038);

INSERT INTO `creature_template_addon` VALUES (17038, 0, 0, 1, 16, 0, 0, (NULL));

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 17048);

UPDATE `creature_template_addon` SET `auras`= '(NULL)' WHERE `entry`= 17048;                                                             

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 17049);

UPDATE `creature_template_addon` SET `auras`= '(NULL)' WHERE `entry`= 17049;                                                             
 

-- Fireeaters

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 17041);

INSERT INTO `creature_template_addon` VALUES (17041, 0, 0, 1, 16, 0, 0, (NULL));

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 17050);

INSERT INTO `creature_template_addon` VALUES (17050, 0, 0, 1, 16, 0, 0, (NULL));

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 17051);

INSERT INTO `creature_template_addon` VALUES (17051, 0, 0, 1, 16, 0, 0, (NULL));

-- Flamekeepers

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 16788);

INSERT INTO `creature_template_addon` VALUES (16788, 0, 0, 1, 16, 0, 0, (NULL));

-- Loremasters

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 16817);

-- This npc(16817) already in DB

-- Talespinners

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 16818);

INSERT INTO `creature_template_addon` VALUES (16818, 0, 0, 1, 16, 0, 0, (NULL));

-- Deleting wrong version objects and npcs

/* Removing Alliance, Horde, Ahune Bonfires*/

DELETE FROM `gameobject_template` WHERE `name` IN ('Alliance Bonfire', 'Horde Bonfire', 'Ahune Bonfire');


/* Missed deleting Stranglethorn Alliance Station (just outside Booty) on first cleanup, so deleting now */

DELETE FROM `gameobject` WHERE `guid` IN (50681, 50682, 51011, 51028, 51798, 51525, 51797, 50778, 50785, 50781, 50784, 51526, 51545, 50868, 50871, 52541, 52559, 51782, 51799);

DELETE FROM `game_event_gameobject` WHERE `guid` IN (50681, 50682, 51011, 51028, 51798, 51525, 51797, 50778, 50785, 50781, 50784, 51526, 51545, 50868, 50871, 52541, 52559, 51782, 51799);


DELETE FROM `creature` WHERE `guid` IN (94603, 94550, 94551, 94552, 94820, 94839, 94899, 94880);

DELETE FROM `game_event_creature` WHERE `guid` IN (94603, 94550, 94551, 94552, 94820, 94839, 94899, 94880);

DELETE FROM `creature_addon` WHERE `guid` IN (94820, 94839, 94899, 94880);

/* Deleting Midsummer Bonfire + Despawner creature and creature_template entries */

DELETE FROM `creature_template` WHERE `ENTRY` IN (16592, 16606);

DELETE FROM `creature` WHERE `id`= 16592;

DELETE FROM `game_event_creature` WHERE `guid` IN (47614, 94864, 94873, 94910, 94913, 94918);

DELETE FROM `creature_addon` WHERE `guid` IN (47614, 94864, 94873, 94910, 94913, 94918);

DELETE FROM `creature_template_addon` WHERE `entry`= 16592;