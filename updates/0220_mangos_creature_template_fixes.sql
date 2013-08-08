-- Fixes NPC having the civilian flag (flag = 2) but not the correct value (1) in civilian field
UPDATE `creature_template` SET `Civilian` = 1 WHERE `flags_extra`&2;
