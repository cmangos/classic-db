-- Fixed creaturetype of a few totems which where wrongly set as 'unspecified'
-- they should now behave like totems instead of mindless and harmless melee creatures
-- also added a specific workaround for summoned creature 6066 (Earthgrab Totem)
-- this closes #13 
UPDATE `creature_template` SET `CreatureType` = 11 WHERE `Entry` IN (13916, 3560, 6017, 6016, 8510, 9637, 10183, 10217, 12141, 6066, 15363, 15304, 15112, 14667);
UPDATE `creature_template` SET `AIName` = 'TotemAI' WHERE `CreatureType` = 11;

-- Workaround because creature 6066 (Earthgrab Totem) is summoned by spell 8376 which has wrong spell effect 42 (SPELL_EFFECT_SUMMON_GUARDIAN)
-- instead of spell effect 87 (SPELL_EFFECT_SUMMON_TOTEM_SLOT1) preventing the summoned creature to properly use the TotemAI. Hence, we
-- emulate the right AI with ACID (eventAI)

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `Entry` = 6066;

DELETE FROM `creature_ai_scripts` WHERE `id` IN (606601);
INSERT INTO `creature_ai_scripts` VALUES
(606601, 6066, 11, 0, 100, 0, 0, 0, 0, 0,
21, 0, 0, 0,
20, 0, 0, 0,
11, 8378, 0, 1, 'Earthgrab totem - Prevent Combat Movement and Prevent Melee and cast earthgrab on Spawn');