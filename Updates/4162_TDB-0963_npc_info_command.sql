-- [Command] Improve Readout for .npc info unitflags/dynamicflags/extraflags
-- All New Lines befor and faction is displayed in the head of the printout for .npc info

-- Req. Core Update - [Command] Improve Readout for .npc info unitflags/dynamicflags/extraflags
-- Unit Flags: %u.
-- Dynamic Flags: %u.
-- Faction Template: %u.
UPDATE `mangos_string` set `content_default` = 'UnitFlags: %u | DynamicFlags: %u | ExtraFlags: %u' where entry = 542;

