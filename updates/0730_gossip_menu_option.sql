-- Mathrengyl Bearwalker <Druid Trainer>
-- sells Packets of Tharlendris Seeds and Evergreen Pouches once the character has finished the quest 'Morrowgrain Research'.
DELETE FROM conditions WHERE condition_entry = 965;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(965, 8, 3785, 0);
UPDATE gossip_menu_option SET condition_id = 965 WHERE menu_id = 1403 AND id = 1;
-- q. 3785 leads to 3803 with the same objective... and q.3803 is repeatable.
UPDATE quest_template SET SpecialFlags = 0 WHERE entry = 3785; -- q. should not be repeatable
-- Bashana Runetotem
-- sells Packets of Tharlendris Seeds and Evergreen Pouches once the character has finished the quest 'Morrowgrain Research'.
DELETE FROM gossip_menu_option WHERE menu_id = 1701;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_script_id, condition_id) VALUES
(1701, 0, 1, 'I\'d like to purchase more Tharlendris seeds.', 3, 128, 0, 0);
DELETE FROM conditions WHERE condition_entry = 974;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(974, 8, 3786, 0);
-- Mangy Wolf - Elvynn Forest
-- duplicates removed
DELETE FROM creature WHERE guid = 81089;
DELETE FROM creature_addon WHERE guid = 81089;
DELETE FROM creature_movement WHERE id = 81089;
DELETE FROM game_event_creature WHERE guid = 81089;
DELETE FROM game_event_creature_data WHERE guid = 81089;
DELETE FROM creature_battleground WHERE guid = 81089;
DELETE FROM creature_linking WHERE guid = 81089 OR master_guid = 81089;
DELETE FROM creature WHERE guid = 81088;
DELETE FROM creature_addon WHERE guid = 81088;
DELETE FROM creature_movement WHERE id = 81088;
DELETE FROM game_event_creature WHERE guid = 81088;
DELETE FROM game_event_creature_data WHERE guid = 81088;
DELETE FROM creature_battleground WHERE guid = 81088;
DELETE FROM creature_linking WHERE guid = 81088 OR master_guid = 81088;
