-- Made some of the Grim Guzzler patrons dance on the tables
UPDATE `creature_addon` SET `emote` = 10 WHERE `guid` IN (90741, 91011, 48168, 91066, 46620, 90738, 90888);

-- Fixed flags of NPC 9537 (Hurley Blackbreath) and NPCs 9541 (Blackbreath Crony)
UPDATE `creature_template` SET `FactionAlliance` = 54, `FactionHorde` = 54, `UnitFlags` = 33088, `MovementType` = 0 WHERE `Entry` IN (9537, 9541);

-- Fixed equipment of NPC 9537 (Hurley Blackbreath) and NPCs 9541 (Blackbreath Crony)
UPDATE `creature_template` SET `EquipmentTemplateId` = 1309 WHERE `Entry` = 9537;
UPDATE `creature_template` SET `EquipmentTemplateId` = 954 WHERE `Entry` = 9541;

DELETE FROM `creature_linking_template` WHERE `entry` = 9541;
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(9541, 230, 9537, 3, 0);
