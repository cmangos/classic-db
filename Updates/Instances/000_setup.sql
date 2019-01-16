-- INSTANCE FILES SETUP
-- supported maps (33,34,36,43,47,48,70,90,109,129,189,209,229,230,249,289,309,329,349,389,409,429,469,509,529,531,533)

DROP TABLE IF EXISTS tmp_creature;
DROP TABLE IF EXISTS tmp_gameobject;

CREATE TABLE tmp_creature (SELECT guid, id, map FROM creature WHERE map IN (33,34,36,43,47,48,70,90,109,129,189,209,229,230,249,289,309,329,349,389,409,429,469,509,529,531,533));
CREATE TABLE tmp_gameobject (SELECT guid, id, map FROM gameobject WHERE map IN (33,34,36,43,47,48,70,90,109,129,189,209,229,230,249,289,309,329,349,389,409,429,469,509,529,531,533));

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

DELETE FROM creature_movement WHERE id IN (SELECT guid FROM tmp_creature);
DELETE FROM creature_movement_template WHERE entry IN (SELECT id FROM tmp_creature WHERE id NOT IN (12999,21075,23033)); -- Exclude NPCs spawned in both instance and open world
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM tmp_creature);
DELETE FROM creature_template_addon WHERE entry IN (SELECT id FROM tmp_creature WHERE id NOT IN(2267,9699,15475,17378,21075)); -- Exclude NPCs spawned in both instance and open world
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM tmp_creature);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM tmp_creature);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM tmp_creature) OR master_guid IN (SELECT guid FROM tmp_creature);
DELETE FROM creature_linking_template WHERE map IN (SELECT map FROM tmp_creature);
DELETE FROM dbscripts_on_creature_death WHERE id IN (SELECT id FROM tmp_creature);
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM tmp_creature);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM tmp_creature);
DELETE FROM creature WHERE guid IN (SELECT guid FROM tmp_creature);

DELETE FROM dbscripts_on_go_use WHERE id IN (SELECT guid FROM tmp_gameobject);
DELETE FROM dbscripts_on_go_template_use WHERE id IN (SELECT id FROM tmp_gameobject);
DELETE FROM game_event_gameobject WHERE guid IN (SELECT guid FROM tmp_gameobject);
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM tmp_gameobject);
DELETE FROM gameobject WHERE guid IN (SELECT guid FROM tmp_gameobject);

DROP TABLE IF EXISTS tmp_creature;
DROP TABLE IF EXISTS tmp_gameobject;


