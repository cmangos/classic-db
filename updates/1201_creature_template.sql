-- Fixed damage of NPC 14986 (Shade of Jin'do): they must do shadow damage instead of physical
UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `Entry` = 14986;
