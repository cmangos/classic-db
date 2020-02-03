-- Remove passive Aura with CastTime from Ruul Snowhoof 12818 - should be handled in  npc_ruul_snowhoof
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 12818;
