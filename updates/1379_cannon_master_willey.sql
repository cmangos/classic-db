-- Fixed event for Cannon Master Willey in Stratholme
-- Added missing spell position target
-- This closes #193

-- Summoned Crimson Rifleman at the right place
DELETE FROM spell_script_target WHERE entry = 17279;
INSERT INTO spell_script_target VALUES
(17279, 0, 176211, 0);

-- Updated Cannonball trap: it was damaging players getting close to it
UPDATE gameobject_template SET data2 = 0 WHERE entry = 176211;

-- Added scripts for activating the Scarlet Cannons
DELETE FROM dbscripts_on_go_template_use WHERE id IN (176216, 176217);
INSERT INTO dbscripts_on_go_template_use VALUES
(176216, 1, 13, 0, 0, 176211, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Cannonball trap'),
(176217, 1, 13, 0, 0, 176211, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Cannonball trap');
