-- Two fixes for creatures involved in Anub'Rekhan encounter in Naxxramas

-- Added AI scripts to creature 16573 (Crypt Guard) in Anub'Rehkan encounter in Naxxramas
-- Source: http://www.wowhead.com/npc=16573#abilities
-- Script adapted from ACID wotlk
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16573;
DELETE FROM `creature_ai_scripts` WHERE `id` IN (1657301, 1657302, 1657303, 1657304);
INSERT INTO `creature_ai_scripts` VALUES 
(1657301, 16573, 0, 0, 100, 2, 0, 0, 0, 0, 11, 28969, 4, 32, 0, 0, 0, 0, 0, 0, 0, 0, 'Crypt Guard - Cast Acid Spit on Aggro'),
(1657302, 16573, 0, 0, 100, 3, 4000, 6000, 4000, 7000, 11, 28969, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crypt Guard - Cast Acid Spit'),
(1657303, 16573, 0, 0, 100, 7, 7000, 9000, 7000, 9000, 11, 20691, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crypt Guard - Cast Cleave'),
(1657304, 16573, 2, 0, 100, 7, 30, 0, 120000, 120000, 11, 8269, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Crypt Guard - Cast Frenzy at 30% HP');

-- Reduced damage of creature 16698 (Corpse Scarab) because their damage level was for WotLK (about 2k)
-- instead of the 400 it should be in Classic
UPDATE `creature_template` SET `dmg_multiplier` = 0.25 WHERE `entry` = 16698;
