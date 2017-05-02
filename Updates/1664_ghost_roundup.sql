-- Updates for quest Ghost-o-plasm Round Up (6134) 
-- Closes #1262
UPDATE gameobject_template SET type=1,data2=11796480 WHERE entry=177746;
UPDATE creature_template SET FactionAlliance=7,FactionHorde=7 WHERE entry=11560;
DELETE FROM creature_template_addon WHERE entry=11560;
INSERT INTO creature_template_addon VALUES
(11560,0,0,1,16,0,0,'18146');
