-- Set the new ACID AIs 
-- (Gurubashi Blood Drinker, Gurubashi Warrior, Atal'ai Mistress, Zulian Stalker, Zulian Cub, Zulian Guardian, Zulian Crocolisk, Gurubashi Champion, Voodoo Spirit)
-- (Withered Mistress, Hooktooth Frenzy, Hakkari Oracle, Hakkari Witch Doctor)
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `Entry` IN ('11353', '11355', '14882', '15067', '11360', '15068', '15043', '11356', '15009', '14825', '11374', '11346', '11831');

-- Remove Acid from Hakkari Blood Priest and give script npc_hakkari_blood_priest
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_hakkari_blood_priest' WHERE `Entry`='11340';

-- Give Zulian Prowler script npc_zulian_prowler
UPDATE `creature_template` SET `ScriptName`='npc_zulian_prowler' WHERE `Entry`='15101';

-- Set new SD2 AIs (Zulian Panther)
UPDATE `creature_template` SET `ScriptName`='npc_zulian_panther' WHERE `Entry`='11365';

-- Remove Acid from Frenzied Bloodseeker Bat
UPDATE `creature_template` SET `AIName`='' WHERE `Entry`='14965';

-- Set for Voodoo Spirit the aura Spirit Burst
UPDATE `creature_template_addon` SET `auras`='24051' WHERE `entry`='15009';

