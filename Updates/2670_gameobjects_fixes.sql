-- Several fixes after GameObject templates data updates from sniffs
-- Some scripts, gossips, loot templates and so on where based on previous (erroneous) data
-- So this update correct them accordingly to new (official) data

DELETE FROM gameobject_loot_template WHERE entry=1697;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(1697, 1923, -100, 0, 1, 1, 0, 'Ambassador\'s Satchel');

DELETE FROM dbscripts_on_quest_end WHERE id=308 AND delay=11;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(308, 11, 40, 0, 0, 0, 269, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Despawn Guarded Thunder Ale Barrel GO');

UPDATE gameobject SET spawntimesecsmin=56, spawntimesecsmax=56 WHERE id=269;
UPDATE gameobject_template SET flags=4 WHERE entry=269;

UPDATE gameobject_loot_template SET entry=1570 WHERE entry=1765;

DELETE FROM gameobject_loot_template WHERE entry=4770;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(4770, 7389, -100, 0, 1, 1, 0, 'Venture Co. Ledger');

UPDATE gossip_menu SET text_id=2819 WHERE entry=2187;
DELETE FROM gossip_menu WHERE entry=2186;
INSERT INTO gossip_menu VALUES
(2186, 2820, 0, 0);
UPDATE gossip_menu_option SET action_menu_id=2186 WHERE menu_id=2187;

UPDATE gameobject_template SET ExtraFlags=1 WHERE entry=153556;
DELETE FROM dbscript_random_templates WHERE id=905;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(905, 0, 2000000353, 0, 'Thaurissan Relic - Random Texts'),
(905, 0, 2000000354, 0, 'Thaurissan Relic - Random Texts'),
(905, 0, 2000000355, 0, 'Thaurissan Relic - Random Texts'),
(905, 0, 2000000356, 0, 'Thaurissan Relic - Random Texts'),
(905, 0, 2000000357, 0, 'Thaurissan Relic - Random Texts'),
(905, 0, 2000000358, 0, 'Thaurissan Relic - Random Texts'),
(905, 0, 2000000359, 0, 'Thaurissan Relic - Random Texts'),
(905, 0, 2000000360, 0, 'Thaurissan Relic - Random Texts');
DELETE FROM dbscripts_on_go_use WHERE id IN (SELECT guid FROM gameobject WHERE id=153556);
DELETE FROM dbscripts_on_event WHERE id=3361;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3361, 1, 0, 905, 0, 0, 8887, 4603, 19, 0, 0, 0, 0, 0, 0, 0, 0, 'Thaurissan relic - random whisper');

UPDATE gameobject_loot_template SET ChanceOrQuestChance=100 WHERE item=12812;

UPDATE gameobject_loot_template SET entry=14285 WHERE entry=177241;

INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(177366, 2, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Despawn Self on Use'),
(177369, 2, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Despawn Self on Use'),
(177400, 2, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Despawn Self on Use'),
(177397, 2, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Despawn Self on Use'),
(177243, 2, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Despawn Self on Use'),
(177365, 2, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Despawn Self on Use'),
(177398, 2, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Despawn Self on Use'),
(177399, 2, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Despawn Self on Use');

UPDATE gameobject_loot_template SET entry=3597 WHERE entry=28604;

UPDATE gameobject SET id=176344 WHERE id IN (190484, 190483);
DELETE FROM gameobject_loot_template WHERE entry=13400;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(2774, 12765, -100, 0, 1, 1, 0, 'Secret Note #1'),
(2774, 12766, -100, 0, 1, 1, 239, 'Secret Note #2'),
(2774, 12768, -100, 0, 1, 1, 240, 'Secret Note #3');

DELETE FROM dbscripts_on_quest_end WHERE id IN (4446, 4461, 4443, 4444, 4447, 4462, 4343, 4115, 4222, 4403, 998, 4467, 1514,
4113, 4464, 2523, 2878, 4114, 4116, 4118, 4401, 3363) AND command=27;
UPDATE dbscripts_on_quest_end SET delay=0 WHERE id IN (4446, 4461, 4443, 4444, 4447, 4462, 4343, 4115, 4222, 4403, 998, 4467, 1514,
4113, 4464, 2523, 2878, 4114, 4116, 4118, 4401, 3363) AND command=9;
DELETE FROM dbscripts_on_quest_end WHERE id IN (4446, 4461, 4443, 4444, 4447, 4462, 4343, 4115, 4222, 4403, 998, 4467, 1514,
4113, 4464, 2523, 2878, 4114, 4116, 4118, 4401, 3363) AND command=40;
INSERT INTO dbscripts_on_quest_end VALUES
(4446, 1, 40, 0, 0, 0, 174607, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Whipper Root - Despawn Self on Use'),
(4461, 1, 40, 0, 0, 0, 174686, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Whipper Root - Despawn Self on Use'),
(4443, 1, 40, 0, 0, 0, 173284, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Whipper Root - Despawn Self on Use'),
(4444, 1, 40, 0, 0, 0, 174605, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Whipper Root - Despawn Self on Use'),
(4447, 1, 40, 0, 0, 0, 173324, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Night Dragon - Despawn Self on Use'),
(4462, 1, 40, 0, 0, 0, 174684, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Night Dragon - Despawn Self on Use'),
(4343, 1, 40, 0, 0, 0, 164887, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Windblossom - Despawn Self on Use'),
(4115, 1, 40, 0, 0, 0, 173327, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Windblossom - Despawn Self on Use'),
(4222, 1, 40, 0, 0, 0, 174600, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Windblossom - Despawn Self on Use'),
(4403, 1, 40, 0, 0, 0, 174601, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Windblossom - Despawn Self on Use'),
(998, 1, 40, 0, 0, 0, 174603, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Windblossom - Despawn Self on Use'),
(4467, 1, 40, 0, 0, 0, 174708, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Windblossom - Despawn Self on Use'),
(1514, 1, 40, 0, 0, 0, 174709, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Windblossom - Despawn Self on Use'),
(4113, 1, 40, 0, 0, 0, 174596, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Songflower - Despawn Self on Use'),
(4464, 1, 40, 0, 0, 0, 171942, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Songflower - Despawn Self on Use'),
(2523, 1, 40, 0, 0, 0, 164886, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Songflower - Despawn Self on Use'),
(2878, 1, 40, 0, 0, 0, 174594, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Songflower - Despawn Self on Use'),
(4114, 1, 40, 0, 0, 0, 174597, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Songflower - Despawn Self on Use'),
(4116, 1, 40, 0, 0, 0, 174598, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Songflower - Despawn Self on Use'),
(4118, 1, 40, 0, 0, 0, 174712, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Songflower - Despawn Self on Use'),
(4401, 1, 40, 0, 0, 0, 174713, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Songflower - Despawn Self on Use'),
(3363, 1, 40, 0, 0, 0, 174595, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Songflower - Despawn Self on Use');

UPDATE dbscripts_on_event SET command=13 WHERE id=3718;

UPDATE dbscripts_on_event SET id=4083 WHERE id=2244;
