-- Updates equipement for creatures 16194 (Unholy Axe), 16215 (Unholy Staff), 16216 (Unholy Swords)
-- as it currently wrong, especially for Unholy Staff
-- Adds missing equipement with correct model for creature 16215 (Unholy Staff)
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` = 16216;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 1003;
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`)
VALUES  (1003, 23539, 0, 0, 285346306, 0, 0, 2, 0, 0);
-- Fixes equipement with correct model for creature 16215 (Unholy Swords)
UPDATE `creature_equip_template_raw` SET `equipmodel1` = 20167, `equipmodel2` = 20167, `equipmodel3` = 0, `equipinfo2` = 33490690, `equipinfo3`= 0, `equipslot1` = 781, `equipslot2` = 781,  `equipslot3` = 0 WHERE `entry` = 1726;
-- Fixes equipement with correct model for creature 16194 (Unholy Axe)
UPDATE `creature_equip_template_raw` SET `equipmodel1` = 22220, `equipmodel2` = 0,`equipmodel3` = 0 WHERE `entry` = 1725;
