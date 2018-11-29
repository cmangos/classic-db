-- All data FROM `mangos`. https:--web.archive.org/web/20060614150250/http:--wow.allakhazam.com:80/dyn/mobs/rare.html
-- Discrepencies in the data such as %'s not adding up to 100 have been corrected.
-- Old entries which have copied the source drop rates exactly as allakhazan shows have also been rounded to be more Blizzlike. Old website drop data should be taken as a guide, not as gospel.



-- (65000,'NPC LOOT (Rare NPC Loot) - Thuros Lightfingers - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='70' WHERE `entry`='65000' and`item`='6203';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='30' WHERE `entry`='65000' and`item`='6202';

-- (65001,'NPC LOOT (Rare NPC Loot) - Narg the Taskmaster - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='10' WHERE `entry`='65001' and`item`='1913';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='90' WHERE `entry`='65001' and`item`='6147';

-- (65002,'NPC LOOT (Rare NPC Loot) - Morgaine the Sly - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='80' WHERE `entry`='65002' and`item`='6201';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`='65002' and`item`='1917';

-- (65004,'NPC LOOT (Rare NPC Loot) - Vultros - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65004' and `item`='4454';
DELETE FROM `mangos`.`reference_loot_template` WHERE `item` = 5971;
INSERT INTO `mangos`.`reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('65004', '5971', '75', '1', '1', '1', '0', 'Feathered Cape');

-- (65005,'NPC LOOT (Rare NPC Loot) - Mother Fang - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='10' WHERE `entry`='65005' and`item`='3000';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='90' WHERE `entry`='65005' and`item`='6148';

-- (65006,'NPC LOOT (Rare NPC Loot) - Fedfennel - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='30' WHERE `entry`='65006' and`item`='5744';
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='70' WHERE `entry`='65006' and`item`='3233';

-- (65007,'NPC LOOT (Rare NPC Loot) - Lord Malathrom - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65007' and`item`='1187';
DELETE FROM `mangos`.`reference_loot_template` WHERE `item` = 4462;
INSERT INTO `mangos`.`reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('65007', '4462', '50', '1', '1', '1', '0', 'Cloak of Rot');

-- (65010,'NPC LOOT (Rare NPC Loot) - Slark - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='60' WHERE `entry`='65010' and`item`='6180';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='40' WHERE `entry`='65010' and`item`='3188';

-- (65011,'NPC LOOT (Rare NPC Loot) - Brack - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='60' WHERE `entry`='65011' and`item`='6179';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='40' WHERE `entry`='65011' and`item`='2235';

-- (65016,'NPC LOOT (Rare NPC Loot) - Naraxis - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65016' and`item`='4449';
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65016' and`item`='4448';

-- (65020,'NPC LOOT (Rare NPC Loot) - Chatter - Special Items'),
DELETE FROM `mangos`.`reference_loot_template` WHERE `item` = 3229;
INSERT INTO `mangos`.`reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('65020', '3229', '25', '1', '1', '1', '0', 'Tarantula Silk Sash');

-- (65022,'NPC LOOT (Rare NPC Loot) - Commander Felstrom - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65022' and`item`='4465';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65022' and`item`='4464';

-- (65023,'NPC LOOT (Rare NPC Loot) - Rohh the Silent - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='75' WHERE `entry`='65023' and`item`='4447';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65023' and`item`='4446';

-- (65032,'NPC LOOT (Rare NPC Loot) - Razormaw Matriarch - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='60' WHERE `entry`='65032' and`item`='6198';
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='40' WHERE `entry`='65032' and`item`='4463';

-- (65034,'NPC LOOT (Rare NPC Loot) - Boss Galgosh - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='60' WHERE `entry`='65034' and`item`='1215';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='40' WHERE `entry`='65034' and`item`='1938';

-- (65035,'NPC LOOT (Rare NPC Loot) - Magosh - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65035' and`item`='2241';
DELETE FROM `mangos`.`reference_loot_template` WHERE `item` = 3571;
INSERT INTO `mangos`.`reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('65035', '3571', '50', '1', '1', '1', '0', 'Trogg Beater');

-- (65037,'NPC LOOT (Rare NPC Loot) - Grizlak - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65037' and`item`='6195';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65037' and`item`='2284';

-- (65040,'NPC LOOT (Rare NPC Loot) - Scale Belly - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='75' WHERE `entry`='65040' and`item`='4478';
DELETE FROM `mangos`.`reference_loot_template` WHERE `item` = 1604;
INSERT INTO `mangos`.`reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('65040', '1604', '25', '1', '1', '1', '0', 'Chromatic Sword');

-- (65049,'NPC LOOT (Rare NPC Loot) - Deeb - Special Items'),
DELETE FROM `mangos`.`reference_loot_template` WHERE `item` = 4303;
INSERT INTO `mangos`.`reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('65049', '4303', '25', '1', '1', '1', '0', 'Cranial Thumper');

-- (65050,'NPC LOOT (Rare NPC Loot) - Dalaran Spellscribe - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='60' WHERE `entry`='65050' and`item`='4436';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65050' and`item`='4437';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='15' WHERE `entry`='65050' and`item`='8491';
UPDATE `mangos`.`reference_loot_template` SET `groupid`='1' WHERE `entry`='65050' and`item`='8491';

-- (65051,'NPC LOOT (Rare NPC Loot) - Farmer Solliden - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='30' WHERE `entry`='65051' and`item`='3334';
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='70' WHERE `entry`='65051' and`item`='4261';
UPDATE `mangos`.`reference_loot_template` SET `groupid`='1' WHERE `entry`='65051' and`item`='4261';

-- (65052,'NPC LOOT (Rare NPC Loot) - Rot Hide Bruiser - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='75' WHERE `entry`='65052' and`item`='5975';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65052' and`item`='4439';

-- (65053,'NPC LOOT (Rare NPC Loot) - Snarlmane - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65053' and`item`='4445';

-- (65054,'NPC LOOT (Rare NPC Loot) - Ma\'ruk Wyrmscale - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='75' WHERE `entry`='65054' and`item`='5750';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65054' and`item`='5749';

-- (65055,'NPC LOOT (Rare NPC Loot) - Garneg Charskull - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='75' WHERE `entry`='65055' and`item`='6200';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65055' and`item`='3392';

-- (65063,'NPC LOOT (Rare NPC Loot) - Ravenclaw Regent - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65063' and`item`='6628';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='75' WHERE `entry`='65063' and`item`='5969';

-- (65064,'NPC LOOT (Rare NPC Loot) - Skhowl - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='75' WHERE `entry`='65064' and`item`='3011';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65064' and`item`='6331';


-- (65065,'NPC LOOT (Rare NPC Loot) - Lo\'Grosh - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65065' and`item`='4810';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65065' and`item`='6327';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65065' and`item`='1678';

-- (65066,'NPC LOOT (Rare NPC Loot) - Large Loch Crocolisk - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='65' WHERE `entry`='65066' and`item`='3563';
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='35' WHERE `entry`='65066' and`item`='6197';

-- (65067,'NPC LOOT (Rare NPC Loot) - Lord Sakrasis - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65067' and`item`='5029';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65067' and`item`='5028';

-- (65068,'NPC LOOT (Rare NPC Loot) - Singer - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='75' WHERE `entry`='65068' and`item`='5181';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65068' and`item`='5180';

-- (65069,'NPC LOOT (Rare NPC Loot) - Kovork - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65069' and`item`='5256';

-- (65072,'NPC LOOT (Rare NPC Loot) - Nimar the Slayer - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='10' WHERE `entry`='65072' and`item`='5257';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='90' WHERE `entry`='65072' and`item`='2622';

-- (65078,'NPC LOOT (Rare NPC Loot) - Prince Nazjak - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65078' and`item`='1404';

-- (65080,'NPC LOOT (Rare NPC Loot) - Ghost Howl - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`='65080' and`item`='4854';

-- (65081,'NPC LOOT (Rare NPC Loot) - Mazzranache - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65081' and`item`='4861';

-- (65084,'NPC LOOT (Rare NPC Loot) - Rathorian - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='75' WHERE `entry`='65084' and`item`='5111';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65084' and`item`='5112';

-- (65087,'NPC LOOT (Rare NPC Loot) - Trigore the Lasher - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='40' WHERE `entry`='65087' and`item`='5426';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='60' WHERE `entry`='65087' and`item`='5425';

-- (65088,'NPC LOOT (Rare NPC Loot) - Boahn - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='35' WHERE `entry`='65088' and`item`='5423';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='65' WHERE `entry`='65088' and`item`='5422';

-- (65091,'NPC LOOT (Rare NPC Loot) - Terrowulf Packlord - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='45' WHERE `entry`='65091' and`item`='5754';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='55' WHERE `entry`='65091' and`item`='5753';

-- (65092,'NPC LOOT (Rare NPC Loot) - Pridewing Patriarch - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='75' WHERE `entry`='65092' and`item`='5751';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65092' and`item`='5752';

-- (65094,'NPC LOOT (Rare NPC Loot) - Silithid Ravager - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65094' and`item`='8224';

-- (65110,'NPC LOOT (Rare NPC Loot) - The Rake - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`='65110' and`item`='17922';

-- (65114,'NPC LOOT (Rare NPC Loot) - Geolord Mottle - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65114' and`item`='6520';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65114' and`item`='6508';

-- (65120,'NPC LOOT (Rare NPC Loot) - Stonearm - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65120' and`item`='1355';

-- (65121,'NPC LOOT (Rare NPC Loot) - Brokespear - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65121' and`item`='7559';

-- (65122,'NPC LOOT (Rare NPC Loot) - Heggin Stonewhisker - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65122' and`item`='2035';

-- (65124,'NPC LOOT (Rare NPC Loot) - Digger Flameforge - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`='65124' and`item`='4785';

-- (65125,'NPC LOOT (Rare NPC Loot) - Geopriest Gukk\'rok - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65125' and`item`='1539';

-- (65135,'NPC LOOT (Rare NPC Loot) - General Fangferror - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65135' and`item`='17054';

-- (65139,'NPC LOOT (Rare NPC Loot) - Lady Vespira - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='60' WHERE `entry`='65139' and`item`='6333';

UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='40' WHERE `entry`='65139' and`item`='6332';

-- (65142,'NPC LOOT (Rare NPC Loot) - Omgorn the Lost - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`='65142' and`item`='17055';

-- (65172,'NPC LOOT (Rare NPC Loot) - Gibblewilt - Special Items'),
INSERT INTO `mangos`.`reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('65172', '10553', '50', '1', '1', '1', '0', 'Foreman Vest');

INSERT INTO `mangos`.`reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES ('65172', '10554', '50', '1', '1', '1', '0', 'Foreman Pants');

-- (65174,'NPC LOOT (Rare NPC Loot) - The Behemoth - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`='65174' and`item`='11603';

-- (65204,'NPC LOOT (Rare NPC Loot) - Lord Darkscythe - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`='65204' and`item`='16039';

-- (65251,'NPC LOOT (Rare NPC Loot) - Uruson - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`='65251' and`item`='18611';

-- (65254,'NPC LOOT (Rare NPC Loot) - Fury Shelda - Special Items'),
UPDATE `mangos`.`reference_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`='65254' and`item`='18612';
