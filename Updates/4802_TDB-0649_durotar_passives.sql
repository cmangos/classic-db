-- Rechecked passives and AI for all enemy npcs in Durotar
-- Readd passives via acid for npcs that cast spell after spawn (onspawn hook)
-- readd passives via creature_template_addon for everything else

-- Scorpid Worker
-- Passive via creature_template_addon 
DELETE FROM creature_template_addon WHERE entry = 3124;
INSERT INTO creature_template_addon (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (3124, 0, 0, 1, 0, 0, 6752);

-- Clattering Scorpid
-- Passive via creature_template_addon 
DELETE FROM creature_template_addon WHERE entry = 3125;
INSERT INTO creature_template_addon (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (3125, 0, 0, 1, 0, 0, 11959);

-- Kul Tiras Marine
-- should cast shield bash on current player, was random player casting before
DELETE FROM `creature_spell_list` WHERE `Id` = 312901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(312901, 1, 11972, 0, -1, 1, 0, 100, 0, 1000, 6000, 16000, 32000, 'Kul Tiras Marine - Shield Bash - current');

-- Lieutenant Benedict
-- Doesnt have any defensive aura in classic sniffs
DELETE FROM creature_template_addon WHERE entry = 3192;
INSERT INTO creature_template_addon (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (3192 , 0, 0, 1, 0, 0, NULL);


-- Corrupted Mottled Boar 
-- We had this npc with passive (6823) (that triggers the debuff on melee) in acid and creature_template_addom
-- There is no eveidence (from classic sniffs) that the npc should have the passive, but instead just cast the spell on current target
DELETE FROM creature_template_addon WHERE entry = 3225;
-- Keeping the old thing in here for safty
-- INSERT INTO creature_template_addon (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (3225, 0, 0, 1, 0, 0, 6823);
DELETE FROM `creature_spell_list` WHERE `Id` = 322501;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(322501, 2, 3385, 0, -1, 2, 0, 100, 0, 0, 10000, 10000, 20000, 'Corrupted Mottled Boar - Boar Charge - self'),
(322501, 1, 6818, 0, -1, 1, 0, 100, 0, 2000, 8000, 12000, 18000, 'Corrupted Mottled Boar - Corrupted Intellect - current');


-- Corrupted Scorpid
-- Was missing Poison Proc (15%) (11959) before 
DELETE FROM creature_template_addon WHERE entry = 3226;
INSERT INTO creature_template_addon (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (3226, 0, 0, 1, 0, 0, 11959);

-- Sarkoth
-- Confirmed with classic sniffs that he has passive on spawn
DELETE FROM creature_template_addon WHERE entry = 3281;
INSERT INTO creature_template_addon (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES (3281, 0, 0, 1, 0, 0, 11919);

