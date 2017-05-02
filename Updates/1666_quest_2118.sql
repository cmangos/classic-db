-- Added missing update for quest 2118 in Darkshore
DELETE FROM spell_script_target WHERE entry=9439;
INSERT INTO spell_script_target VALUES(9439, 1, 2164, 0);

UPDATE quest_template SET ReqSpellCast1=0 WHERE entry=2118;
UPDATE gameobject_template SET data2=10, data4=0 WHERE entry=109515;

