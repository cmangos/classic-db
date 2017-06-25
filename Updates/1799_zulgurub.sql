-- Set the new ACID AIs (Gurubashi Blood Drinker, Gurubashi Warrior, Atal'ai Mistress, Zulian Stalker)
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `Entry` IN ('11353', '11355', '14882', '15067');

-- Remove Acid from Hakkari Blood Priest and give script npc_hakkari_blood_priest
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_hakkari_blood_priest' WHERE `Entry`='11340';

-- Give Zulian Prowler script npc_zulian_prowler
UPDATE `creature_template` SET `ScriptName`='npc_zulian_prowler' WHERE `Entry`='15101';
