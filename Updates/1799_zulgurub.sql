-- Set the new ACID AIs 
-- (Gurubashi Blood Drinker, Gurubashi Warrior, Atal'ai Mistress, Zulian Stalker, Zulian Cub, Zulian Guardian, Zulian Crocolisk, Gurubashi Champion)
-- (Withered Mistress, Hooktooth Frenzy, Hakkari Oracle, Hakkari Witch Doctor, Hakkari Shadowcaster, Hakkari Shadow Hunter, Mad Servant, Mad Voidwalker)
-- (Razzashi Venombrood, Razzashi Broodwidow, Razzashi Raptor, Razzashi Serpent)
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `Entry` IN 
('11353', '11355', '14882', '15067', '11360', '15068', '15043', '11356', '14825', '11374', '11346', '11831', '11338', '11339', '15111', '15146', '14532', '11370', '14821', '11371');

-- Remove Acid from Hakkari Blood Priest and give script npc_hakkari_blood_priest
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_hakkari_blood_priest' WHERE `Entry`='11340';

-- Set new SD2 AIs (Zulian Prowler, Zulian Panther, Soulflayer)
UPDATE `creature_template` SET `ScriptName`='npc_zulian_prowler' WHERE `Entry`='15101';
UPDATE `creature_template` SET `ScriptName`='npc_zulian_panther' WHERE `Entry`='11365';
UPDATE `creature_template` SET `ScriptName`='npc_soulflayer' WHERE `Entry`='11359';

-- Remove Acid from Frenzied Bloodseeker Bat
UPDATE `creature_template` SET `AIName`='' WHERE `Entry`='14965';

-- Set for Voodoo Spirit the aura Spirit Burst
UPDATE `creature_template_addon` SET `auras`='24051' WHERE `entry`='15009';

-- Set for Portal of Madness the aura Portal of Madness
UPDATE `creature_template_addon` SET `auras`='24620' WHERE `entry`='15141';

-- Set for mobs with 100% certainty to have Thrash on spawn
-- (Son of Hakkar, Razzashi Adder, Razzashi Raptor, Atal'ai Mistress, Zulian Prowler, Gahz'ranka)
UPDATE `creature_template_addon` SET `auras`='8876' WHERE `entry` IN ('11357', '11372', '14821', '14882', '15101', '15114');
