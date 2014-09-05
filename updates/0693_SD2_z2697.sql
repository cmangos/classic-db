-- Applied SD2 Update z2697
-- https://github.com/scriptdev2/scriptdev2-classic/commit/93d4089cc651b7ad50652f054ad621f0e73c1591
-- quest 5944
DELETE FROM spell_script_target WHERE entry IN (18969,18811);
INSERT INTO spell_script_target VALUES
(18969,1,1842,0),
(18811,1,1836,0);
-- linkng
DELETE FROM creature_linking_template WHERE entry IN (12128);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(12128, 0, 1840, 513, 20);

UPDATE creature_template SET ScriptName='npc_taelan_fordring' WHERE entry=1842;
UPDATE creature_template SET ScriptName='npc_isillien' WHERE entry=1840;
UPDATE creature_template SET ScriptName='npc_tirion_fordring' WHERE entry=12126;
UPDATE creature_template SET ScriptName='npc_shay_leafrunner' WHERE entry=7774;
UPDATE creature_template SET ScriptName='npc_captured_arkonarin' WHERE entry=11016;
UPDATE creature_template SET ScriptName='npc_arei' WHERE entry=9598;

DELETE FROM scripted_areatrigger WHERE entry IN (4052);
INSERT INTO scripted_areatrigger VALUES
(4052,'at_temple_ahnqiraj');
