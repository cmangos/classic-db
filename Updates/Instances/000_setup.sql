-- INSTANCE FILES SETUP

DROP TABLE IF EXISTS tmp_creature;
DROP TABLE IF EXISTS tmp_gameobject;

CREATE TABLE tmp_creature (SELECT guid, id, map FROM creature WHERE map IN (30,33,34,36,43,47,48,70,90,109,129,189,209,229,230,249,289,309,329,349,389,409,429,449,450,469,509,529,531,533));
CREATE TABLE tmp_gameobject (SELECT guid, id, map FROM gameobject WHERE map IN (30,33,34,36,43,47,48,70,90,109,129,189,209,229,230,249,289,309,329,349,389,409,429,449,450,469,529,509,531,533));

ALTER TABLE tmp_creature ADD INDEX (guid);
ALTER TABLE tmp_creature ADD INDEX (id);
ALTER TABLE tmp_gameobject ADD INDEX (guid);
ALTER TABLE tmp_gameobject ADD INDEX (id);

DELETE FROM pool_template WHERE entry IN (SELECT mother_pool FROM pool_pool WHERE pool_id IN (SELECT pool_entry FROM pool_creature WHERE guid IN (SELECT guid FROM tmp_creature)));
DELETE FROM pool_template WHERE entry IN (SELECT mother_pool FROM pool_pool WHERE pool_id IN (SELECT pool_entry FROM pool_creature_template WHERE id IN (SELECT id FROM tmp_creature)));
DELETE FROM pool_pool WHERE pool_id IN (SELECT pool_entry FROM pool_creature WHERE guid IN (SELECT guid FROM tmp_creature));
DELETE FROM pool_pool WHERE pool_id IN (SELECT pool_entry FROM pool_creature_template WHERE id IN (SELECT id FROM tmp_creature));
DELETE FROM pool_template WHERE entry IN (SELECT pool_entry FROM pool_creature WHERE guid IN (SELECT guid FROM tmp_creature));
DELETE FROM pool_template WHERE entry IN (SELECT pool_entry FROM pool_creature_template WHERE id IN (SELECT id FROM tmp_creature));
DELETE FROM pool_creature WHERE guid IN (SELECT guid FROM tmp_creature);
DELETE FROM pool_creature_template WHERE id IN (SELECT id FROM tmp_creature);

DELETE FROM pool_template WHERE entry IN (SELECT mother_pool FROM pool_pool WHERE pool_id IN (SELECT pool_entry FROM pool_gameobject WHERE guid IN (SELECT guid FROM tmp_gameobject)));
DELETE FROM pool_template WHERE entry IN (SELECT mother_pool FROM pool_pool WHERE pool_id IN (SELECT pool_entry FROM pool_gameobject_template WHERE id IN (SELECT id FROM tmp_gameobject)));
DELETE FROM pool_pool WHERE pool_id IN (SELECT pool_entry FROM pool_gameobject WHERE guid IN (SELECT guid FROM tmp_gameobject));
DELETE FROM pool_pool WHERE pool_id IN (SELECT pool_entry FROM pool_gameobject_template WHERE id IN (SELECT id FROM tmp_gameobject));
DELETE FROM pool_template WHERE entry IN (SELECT pool_entry FROM pool_gameobject WHERE guid IN (SELECT guid FROM tmp_gameobject));
DELETE FROM pool_template WHERE entry IN (SELECT pool_entry FROM pool_gameobject_template WHERE id IN (SELECT id FROM tmp_gameobject));
DELETE FROM pool_gameobject WHERE guid IN (SELECT guid FROM tmp_gameobject);
DELETE FROM pool_gameobject_template WHERE id IN (SELECT id FROM tmp_gameobject);

-- Exclude Outland, Northrend, Ebon Hold
DELETE FROM spawn_group WHERE `Id` BETWEEN 700000 AND 799999 OR `Id` BETWEEN 900000 AND 999999 OR `Id` BETWEEN 1090000 AND 5299999 OR `Id` BETWEEN 5310000 AND 5709999 OR `Id` BETWEEN 5720000 AND 6089999 OR `Id` BETWEEN 6100000 AND 9009999;
DELETE FROM spawn_group_entry WHERE `Id` BETWEEN 700000 AND 799999 OR `Id` BETWEEN 900000 AND 999999 OR `Id` BETWEEN 1090000 AND 5299999 OR `Id` BETWEEN 5310000 AND 5709999 OR `Id` BETWEEN 5720000 AND 6089999 OR `Id` BETWEEN 6100000 AND 9009999;
DELETE FROM spawn_group_spawn WHERE `Guid` BETWEEN 700000 AND 799999 OR `Guid` BETWEEN 900000 AND 999999 OR `Guid` BETWEEN 1090000 AND 5299999 OR `Guid` BETWEEN 5310000 AND 5709999 OR `Guid` BETWEEN 5720000 AND 6089999 OR `Guid` BETWEEN 6100000 AND 9009999;
DELETE FROM spawn_group_formation WHERE `Id` BETWEEN 700000 AND 799999 OR `Id` BETWEEN 900000 AND 999999 OR `Id` BETWEEN 1090000 AND 5299999 OR `Id` BETWEEN 5310000 AND 5709999 OR `Id` BETWEEN 5720000 AND 6089999 OR `Id` BETWEEN 6100000 AND 9009999;
DELETE FROM spawn_group_linked_group WHERE `Id` BETWEEN 700000 AND 799999 OR `Id` BETWEEN 900000 AND 999999 OR `Id` BETWEEN 1090000 AND 5299999 OR `Id` BETWEEN 5310000 AND 5709999 OR `Id` BETWEEN 5720000 AND 6089999 OR `Id` BETWEEN 6100000 AND 9009999;
DELETE FROM waypoint_path WHERE `PathId` BETWEEN 700000 AND 799999 OR `PathId` BETWEEN 900000 AND 999999 OR `PathId` BETWEEN 1090000 AND 5299999 OR `PathId` BETWEEN 5310000 AND 5709999 OR `PathId` BETWEEN 5720000 AND 6089999 OR `PathId` BETWEEN 6100000 AND 9009999;
DELETE FROM waypoint_path_name WHERE `PathId` BETWEEN 700000 AND 799999 OR `PathId` BETWEEN 900000 AND 999999 OR `PathId` BETWEEN 1090000 AND 5299999 OR `PathId` BETWEEN 5310000 AND 5709999 OR `PathId` BETWEEN 5720000 AND 6089999 OR `PathId` BETWEEN 6100000 AND 9009999;

DELETE FROM creature_movement WHERE id IN (SELECT guid FROM tmp_creature);
DELETE FROM creature_movement_template WHERE entry IN (SELECT id FROM tmp_creature WHERE id NOT IN (12999,15378,15379,15380,21075,23033,24110)); -- Exclude NPCs spawned in both instance and open world
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM tmp_creature);
DELETE FROM creature_template_addon WHERE entry IN (SELECT id FROM tmp_creature WHERE id NOT IN(2267,9699,15378,15379,15380,15475,17378,21075)); -- Exclude NPCs spawned in both instance and open world
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM tmp_creature);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM tmp_creature);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM tmp_creature) OR master_guid IN (SELECT guid FROM tmp_creature);
DELETE FROM creature_linking_template WHERE map IN (SELECT map FROM tmp_creature);
DELETE FROM dbscripts_on_creature_death WHERE id IN (SELECT id FROM tmp_creature WHERE id NOT IN (15214,24110)); -- Exclude NPCs spawned in both instance and open world
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM tmp_creature);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM tmp_creature);
DELETE FROM creature_spawn_entry WHERE guid IN (SELECT guid FROM tmp_creature);
DELETE FROM creature_spawn_data WHERE guid IN (SELECT guid FROM tmp_creature);
DELETE FROM creature_conditional_spawn; -- currently used by wotlk-instances only
DELETE FROM creature WHERE guid IN (SELECT guid FROM tmp_creature);

DELETE FROM dbscripts_on_go_use WHERE id IN (SELECT guid FROM tmp_gameobject);
DELETE FROM dbscripts_on_go_template_use WHERE id IN (SELECT id FROM tmp_gameobject);
DELETE FROM game_event_gameobject WHERE guid IN (SELECT guid FROM tmp_gameobject);
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM tmp_gameobject);
DELETE FROM gameobject_addon WHERE guid IN (SELECT guid FROM tmp_gameobject);
DELETE FROM gameobject_spawn_entry WHERE guid IN (SELECT guid FROM tmp_gameobject);
DELETE FROM gameobject WHERE guid IN (SELECT guid FROM tmp_gameobject);

DROP TABLE IF EXISTS tmp_creature;
DROP TABLE IF EXISTS tmp_gameobject;


