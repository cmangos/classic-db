-- Fixed faction of creatures 330 (Princess) and 390 (Porcine Entourage) in Elwynn Forest
-- Those creatures are neutral. Thanks Shubu for pointing. This closes #238 
-- Source: http://www.wowhead.com/npc=390/
-- http://www.wowhead.com/npc=330/
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` IN (330, 390);
-- (ou 1094 : Beast - boar)
-- Linked creatures 330 (Princess) and 390 (Porcine Entourage) in Elwynn Forest
DELETE FROM `creature_linking_template` WHERE `entry` = 390 AND `map` = 0;
INSERT INTO `creature_linking_template` VALUES
(390, 0, 330, 3, 0);
