-- Fixed completion of quest 8868 (Elune's Blessing)
-- Added missing GO
DELETE FROM gameobject_template WHERE entry=180877;
INSERT INTO gameobject_template VALUES
(180877, 6, 0, 'Elune\'s Blessing TRAP QUESTCREDIT', 0, 0, 0, 1, 0, 0, 5, 26394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Fixed GO trap radius
UPDATE gameobject_template SET displayid=0, data2=5 WHERE entry=180876;
