-- Removed wrong AI scripts from various creatures and fixed random aggro text for others.
-- They were previously claiming to be part of the Defias Brotherhood on aggro though obviously were not (kobolds, skeletal mages and such)
-- Thanks The-Great-Sephiroth for pointing. This closes #548 
DELETE FROM `creature_ai_scripts` WHERE `id` IN (20303, 156404, 319803);

UPDATE `creature_ai_scripts` SET `action1_param1` = '-7' WHERE `id` = 47501; -- Kobold Tunneler
UPDATE `creature_ai_scripts` SET `action1_param1` = '-7', `action1_param2` = 0, `action1_param3` = 0 WHERE `id` IN (47603, 1191501, 1191702, 1191801); -- Kobold Geomancer and three types of Gogger Roc Kobolds
