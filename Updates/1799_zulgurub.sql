-- Set the new ACID AIs (Gurubashi Blood Drinker, Gurubashi Warrior)
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `Entry` IN ('11353', '11355');

-- Remove Acid from Hakkari Blood Priest and give script npc_hakkari_blood_priest
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_hakkari_blood_priest' WHERE `Entry`='11340';
