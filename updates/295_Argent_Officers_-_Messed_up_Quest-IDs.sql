-- File:	SQL
-- Name:	295_Argent_Officers_-_Messed_up_Quest-IDs
-- Desc:	Corrections to Argent Dawn Commission Quests and Restore-Options
-- Auth:	Shubu
-- Date:	2014/03/06

-- -------------------------------------------------------------------------

-- Argent Quartermaster Lightspark
DELETE FROM `mangos`.`creature_questrelation` WHERE `id`='10857' AND `quest`='5405';
DELETE FROM `mangos`.`creature_involvedrelation` WHERE `id`='10857' AND `quest`='5405';

-- Duke Nicholas Zverenoff
INSERT INTO `mangos`.`creature_questrelation` (`id`, `quest`) VALUES ('11039','5503');
INSERT INTO `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES ('11039','5503');

-- Argent Officer Pureheart
INSERT INTO `mangos`.`creature_questrelation` (`id`, `quest`) VALUES ('10840','5402');
INSERT INTO `mangos`.`creature_questrelation` (`id`, `quest`) VALUES ('10840','5403');
INSERT INTO `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES ('10840','5402');
INSERT INTO `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES ('10840','5403');
DELETE FROM `mangos`.`creature_questrelation` WHERE `id`='10840' AND `quest`='5407';
DELETE FROM `mangos`.`creature_questrelation` WHERE `id`='10840' AND `quest`='5408';
DELETE FROM `mangos`.`creature_involvedrelation` WHERE `id`='10840' AND `quest`='5407';
DELETE FROM `mangos`.`creature_involvedrelation` WHERE `id`='10840' AND `quest`='5408';

-- Argent Officer Garush
INSERT INTO `mangos`.`creature_questrelation` (`id`, `quest`) VALUES ('10839','5405');
INSERT INTO `mangos`.`creature_questrelation` (`id`, `quest`) VALUES ('10839','5407');
INSERT INTO `mangos`.`creature_questrelation` (`id`, `quest`) VALUES ('10839','5408');
INSERT INTO `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES ('10839','5405');
INSERT INTO `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES ('10839','5407');
INSERT INTO `mangos`.`creature_involvedrelation` (`id`, `quest`) VALUES ('10839','5408');
DELETE FROM `mangos`.`creature_questrelation` WHERE `id`='10839' AND `quest`='5402';
DELETE FROM `mangos`.`creature_questrelation` WHERE `id`='10839' AND `quest`='5403';
DELETE FROM `mangos`.`creature_questrelation` WHERE `id`='10839' AND `quest`='5503';
DELETE FROM `mangos`.`creature_involvedrelation` WHERE `id`='10839' AND `quest`='5402';
DELETE FROM `mangos`.`creature_involvedrelation` WHERE `id`='10839' AND `quest`='5403';
DELETE FROM `mangos`.`creature_involvedrelation` WHERE `id`='10839' AND `quest`='5503';

-- overhaul quests (faction-requirements, rep-gain, grouping)
UPDATE `mangos`.`quest_template` SET `RequiredRaces`='178', `SpecialFlags`='0', `RewRepFaction1`='529', `RewRepValue1`='10', `ExclusiveGroup`='5503' WHERE `entry`='5405';
UPDATE `mangos`.`quest_template` SET `RequiredRaces`='178', `RewRepFaction1`='529', `RewRepValue1`='25' WHERE `entry`='5406';
UPDATE `mangos`.`quest_template` SET `RequiredRaces`='178', `RewRepFaction1`='529', `RewRepValue1`='25' WHERE `entry`='5407';
UPDATE `mangos`.`quest_template` SET `RequiredRaces`='178', `RewRepFaction1`='529', `RewRepValue1`='25' WHERE `entry`='5408';

UPDATE `mangos`.`quest_template` SET `RequiredRaces`='77', `SpecialFlags`='0', `RewRepFaction1`='529', `RewRepValue1`='10', `ExclusiveGroup`='5503' WHERE `entry`='5401';
UPDATE `mangos`.`quest_template` SET `RequiredRaces`='77', `RewRepFaction1`='529', `RewRepValue1`='25' WHERE `entry`='5402';
UPDATE `mangos`.`quest_template` SET `RequiredRaces`='77', `RewRepFaction1`='529', `RewRepValue1`='25' WHERE `entry`='5403';
UPDATE `mangos`.`quest_template` SET `RequiredRaces`='77', `RewRepFaction1`='529', `RewRepValue1`='25' WHERE `entry`='5404';

UPDATE `mangos`.`quest_template` SET `RequiredRaces`='255', `SpecialFlags`='0', `RewRepFaction1`='529', `RewRepValue1`='10', `ExclusiveGroup`='5503' WHERE `entry`='5503';
UPDATE `mangos`.`quest_template` SET `RequiredRaces`='255', `RewRepFaction1`='529', `RewRepValue1`='25' WHERE `entry`='5508';
UPDATE `mangos`.`quest_template` SET `RequiredRaces`='255', `RewRepFaction1`='529', `RewRepValue1`='25' WHERE `entry`='5509'; 
UPDATE `mangos`.`quest_template` SET `RequiredRaces`='255', `RewRepFaction1`='529', `RewRepValue1`='25' WHERE `entry`='5510'; 

-- Conditions
-- Delete old entries
DELETE FROM `mangos`.`conditions` WHERE `condition_entry`='110';
DELETE FROM `mangos`.`conditions` WHERE `condition_entry`='109';
-- Quest Argent Dawn Commission - Alliance
INSERT INTO `mangos`.`conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (1400, 8, 5401, 0);
-- Quest Argent Dawn Commission - Horde
INSERT INTO `mangos`.`conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (1401, 8, 5405, 0);
-- Quest Argent Dawn Commission - Both
INSERT INTO `mangos`.`conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (1402, 8, 5503, 0);
-- Item Argent Dawn Commission
-- condition_entry 90
-- Faction - Alliance
-- condition_entry 4
-- Faction - Horde
-- condition_entry 3

-- Bulwark -  (quest OR quest) AND no_item AND horde
INSERT INTO `mangos`.`conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (1410, -2, 1401, 1402);
INSERT INTO `mangos`.`conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (1415, -1, 90, 1410);
INSERT INTO `mangos`.`conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (1416, -1, 3, 1415);

-- Chillwind Camp -  (quest OR quest) AND no_item AND alliance
INSERT INTO `mangos`.`conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (1411, -2, 1400, 1402);
INSERT INTO `mangos`.`conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (1417, -1, 90, 1411);
INSERT INTO `mangos`.`conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (1418, -1, 4, 1417);

-- Light's Hope Chapel -  (quest OR quest OR quest) AND no_item
INSERT INTO `mangos`.`conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (1412, -2, 1400, 1401);
INSERT INTO `mangos`.`conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (1413, -2, 1402, 1412);
INSERT INTO `mangos`.`conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE (1419, -1, 1413, 90);

UPDATE `mangos`.`gossip_menu_option` SET `condition_id`='1416' WHERE `menu_id`='3421' and`id`='0';
UPDATE `mangos`.`gossip_menu_option` SET `condition_id`='1418' WHERE `menu_id`='3441' and`id`='0';
UPDATE `mangos`.`gossip_menu_option` SET `condition_id`='1419' WHERE `menu_id`='3461' and`id`='0';