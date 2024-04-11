-- remove dynguid from wareffort npcs (breaking game_event linking)
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`&~1048576 WHERE `Faction` = 370;
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`&~1048576 WHERE `entry` IN (
15414, -- Qiraji Wasp
15421, -- Qiraji Drone
15422, -- Qiraji Tank
15423, -- Kaldorei Infantry
15424 -- Anubisath Conqueror
-- 23872 -- Coren Direbrew // ?
);
-- bonus
UPDATE `gameobject_template` SET `ExtraFlags` = `ExtraFlags`&~2 WHERE `entry` = 180524;

