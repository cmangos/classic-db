-- 180717 The Scarab Gong
-- 8743 Bang a Gong!
DELETE FROM gameobject_questrelation WHERE id=180717 AND quest=8743;
INSERT INTO gameobject_questrelation (id, quest) VALUES
(180717, 8743);
DELETE FROM gameobject_involvedrelation WHERE id=180717 AND quest=8743;
INSERT INTO gameobject_involvedrelation (id, quest) VALUES
(180717, 8743);

-- The Scarab Gong - change to GAMEOBJECT_TYPE_QUESTGIVER
UPDATE gameobject_template SET type=2 WHERE entry=180717;
