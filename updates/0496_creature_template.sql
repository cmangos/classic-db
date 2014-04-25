-- Fixed stats for creature 8516 (Belnistrasz) in Razorfen Downs because he was too weak 
-- preventing the players to defend him successfully in the quest "Extinguishing the Idol"
-- Source: UDB
UPDATE `creature_template` SET `MinLevelHealth` = 10500, `MaxLevelHealth` = 10500, `Armor` = 1455 WHERE `Entry` = 8516;
UPDATE `creature` SET `curhealth` = 10500 WHERE `id` = 8516;
