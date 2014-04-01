-- Fixed spawn time of creature 15229 (Vekniss Soldier) and 15300 (Vekniss Drone) 
-- In Temple of Ahn'Qiraj as they should respawn in 20 secs and not in minutes or hours
-- Source: http://www.wowwiki.com/Vekniss_Soldier_Packs
UPDATE `creature` SET `spawntimesecs` = 20 WHERE `id` IN (15229, 15300) AND `map` = 531;
