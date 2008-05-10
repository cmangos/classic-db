-- ScriptDev2 DB ACID Release 0.0.1 (883 Creatures)

-- ------------------------------------------------------------------



-- Initial Table Structure for ACID DB

-- ----------------------------------

DROP TABLE IF EXISTS `eventai_scripts`;

CREATE TABLE IF NOT EXISTS `eventai_scripts` (

`id` int(11) unsigned NOT NULL COMMENT 'Identifier' AUTO_INCREMENT,

`creature_id` int(11) unsigned NOT NULL default '0' COMMENT 'Creature Template Identifier',



`event_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Event Type',

`event_inverse_phase_mask` int(11) signed NOT NULL default '0' COMMENT 'Mask which phases this event will not trigger in',

`event_chance` int(3) signed NOT NULL default '100',

`event_param1` int(11) signed NOT NULL default '0',

`event_param2` int(11) signed NOT NULL default '0',

`event_param3` int(11) signed NOT NULL default '0',



`action1_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',

`action1_param1` int(11) signed NOT NULL default '0',

`action1_param2` int(11) signed NOT NULL default '0',

`action1_param3` int(11) signed NOT NULL default '0',



`action2_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',

`action2_param1` int(11) signed NOT NULL default '0',

`action2_param2` int(11) signed NOT NULL default '0',

`action2_param3` int(11) signed NOT NULL default '0',



`action3_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',

`action3_param1` int(11) signed NOT NULL default '0',

`action3_param2` int(11) signed NOT NULL default '0',

`action3_param3` int(11) signed NOT NULL default '0',



`comment` varchar(255) NOT NULL default '' COMMENT 'Event Comment',



  PRIMARY KEY  (`id`)

) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Scripts';



DROP TABLE IF EXISTS `localized_texts`;

CREATE TABLE IF NOT EXISTS `localized_texts` (

  `id` int(11) unsigned NOT NULL COMMENT 'Identifier' AUTO_INCREMENT,

`locale_0` varchar(255) NOT NULL default '',

`locale_1` varchar(255) NOT NULL default '',

`locale_2` varchar(255) NOT NULL default '',

`locale_3` varchar(255) NOT NULL default '',

`locale_4` varchar(255) NOT NULL default '',

`locale_5` varchar(255) NOT NULL default '',

`locale_6` varchar(255) NOT NULL default '',

`locale_7` varchar(255) NOT NULL default '',



`comment` varchar(255) NOT NULL default '' COMMENT 'Text Comment',

  PRIMARY KEY  (`id`)

) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Localized Text';



DROP TABLE IF EXISTS `eventai_summons`;

CREATE TABLE IF NOT EXISTS `eventai_summons` (

`id` int(11) unsigned NOT NULL COMMENT 'Location Identifier' AUTO_INCREMENT,

`position_x` float NOT NULL default '0',

`position_y` float NOT NULL default '0',

`position_z` float NOT NULL default '0',

`orientation` float NOT NULL default '0',

`spawntimesecs` int(11) unsigned NOT NULL default '120',

`comment` varchar(255) NOT NULL default '' COMMENT 'Summon Comment',

PRIMARY KEY (`id`)

) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Summoning Locations';



DROP TABLE IF EXISTS `db_version`;

CREATE TABLE `db_version` (

`version` varchar(255) NOT NULL default '' COMMENT 'Database version string'

) ENGINE=MyISAM DEFAULT CHARSET=utf8;



-- DROP TABLE IF EXISTS `sd2_db_version`;

-- CREATE TABLE `sd2_db_version` (

-- `version` varchar(255) NOT NULL default '' COMMENT 'Database version string'

-- ) ENGINE=MyISAM DEFAULT CHARSET=utf8;



-- Delete all entries used by the release and create temporary table for custom entries

-- -----------------------------------------------------------------------------------------

DELETE FROM `eventai_scripts` WHERE `creature_id` IN (6,38,40,46,79,80,97,103,116,122,257,299,314,441,448,474,475,476,478,589,590,594,598,599,619,622,634,636,639,641,642,644,645,646,647,657,688,689,690,728,731,746,1051,1052,1053,1054,1130,1137,1169,1196,1222,1393,1534,1550,1551,1552,1553,1554,1561,1562,1563,1564,1565,1653,1663,1666,1696,1706,1707,1708,1711,1715,1716,1717,1725,1726,1729,1731,1732,1763,1804,1815,1816,1867,1888,1889,1911,1912,1913,1914,1915,1920,2018,2019,2020,2021,2163,2164,2271,2272,2306,2336,2337,2358,2368,2369,2370,2371,2529,2575,2577,2595,2596,2598,2990,3374,3375,3377,3378,3461,3577,3631,3632,3633,3636,3654,3655,3662,3669,3670,3671,3672,3673,3674,3725,3727,3728,3818,3840,3851,3853,3854,3855,3857,3859,3861,3863,3864,3866,3868,3872,3873,3875,3877,3887,3987,4018,4019,4023,4024,4025,4026,4027,4035,4041,4042,4044,4053,4062,4120,4142,4143,4144,4147,4150,4151,4275,4278,4286,4289,4290,4291,4292,4294,4295,4297,4298,4301,4302,4303,4306,4416,4417,4418,4428,4515,4516,4517,4518,4519,4539,4540,4627,4670,4671,4672,4673,4674,4675,4728,4729,4818,4819,4820,4825,4842,4847,4852,4853,4854,4860,4861,5048,5053,5055,5056,5274,5299,5419,5420,5421,5441,5450,5451,5453,5454,5648,5649,5650,5682,5755,5756,5761,5775,5823,5839,5840,5844,5846,5990,5991,6212,6228,6235,6426,6427,6489,6523,6788,6789,6910,7011,7012,7022,7030,7040,7041,7044,7047,7153,7154,7155,7156,7157,7158,7206,7246,7247,7268,7269,7276,7291,7335,7337,7369,7371,7372,7379,7396,7397,7443,7444,7445,7446,7604,7605,7606,7607,7608,7789,7846,7872,8095,8120,8138,8156,8302,8535,8540,8541,8542,8566,8600,8601,8602,8637,8761,8876,8877,8927,8956,8957,8958,9026,9437,9438,9439,9441,9442,9443,9445,9461,9583,9692,9693,9716,9717,10077,10356,10357,10381,10382,10383,10387,10388,10389,10390,10391,10394,10398,10400,10405,10406,10407,10408,10409,10411,10412,10413,10414,10416,10417,10418,10419,10420,10421,10422,10423,10424,10425,10426,10463,10464,10642,10697,10737,10814,10827,10876,10947,10948,11043,11054,11064,11318,11319,11320,11322,11323,11324,11340,11350,11351,11352,11368,11372,11469,11470,11471,11472,11473,11475,11517,11518,11519,11520,11658,11659,11661,11663,11664,11666,11667,11668,11746,11747,11777,11778,11780,11781,11782,11785,11786,11830,12119,12236,12237,12258,12265,12377,12457,12459,12460,12461,12463,12464,12465,12467,12557,12579,12876,13285,13596,13599,13601,13996,14232,14261,14262,14263,14264,14265,14388,14398,14750,15196,15205,15547,15548,15551,16036,16037,16170,16171,16173,16174,16175,16176,16177,16178,16321,16329,16354,16355,16406,16407,16408,16409,16410,16411,16414,16415,16424,16425,16459,16460,16461,16468,16470,16471,16472,16473,16481,16482,16485,16488,16489,16491,16492,16504,16525,16526,16529,16530,16540,16544,16545,16595,16809,16873,17014,17067,17156,17187,17201,17259,17264,17269,17270,17271,17280,17281,17283,17309,17347,17348,17370,17371,17395,17397,17399,17414,17416,17455,17477,17478,17491,17517,17624,17626,17672,17681,17721,17722,17723,17724,17725,17726,17727,17728,17729,17730,17731,17732,17734,17735,17767,17771,17800,17801,17802,17803,17805,17842,17871,17882,17888,17895,17897,17898,17899,17905,17906,17907,17908,17916,17919,17920,17922,17928,17932,17933,17935,17936,17938,17940,17941,17942,17952,17957,17958,17959,17960,17961,17963,17964,17975,17976,17978,17991,17993,17994,18048,18049,18050,18051,18052,18053,18054,18059,18062,18064,18086,18087,18105,18176,18177,18179,18182,18259,18309,18311,18312,18313,18314,18315,18317,18331,18394,18404,18405,18411,18419,18420,18421,18422,18429,18461,18463,18647,18731,18829,18860,18970,19136,19166,19167,19168,19218,19219,19231,19307,19389,19434,19456,19486,19493,19505,19507,19508,19509,19510,19511,19512,19513,19530,19532,19543,19632,19633,19706,19712,19713,19716,19730,19735,19754,19756,19792,19796,19806,19825,19826,19827,19843,19865,19874,19875,19946,19947,19953,19958,19962,19964,19969,19978,19979,20031,20032,20033,20034,20035,20039,20041,20043,20046,20052,20059,20075,20083,20143,20208,20216,20279,20280,20405,20502,20607,20867,20868,20870,20872,20878,20885,20886,20887,20924,20925,20988,20990,21050,21200,21221,21224,21225,21226,21227,21228,21246,21298,21299,21338,21339,21346,21350,21384,21385,21386,21497,21694,21695,21696,21704,21708,21729,21816,21854,22016,22017,22018,22241,22242,22243,22295,22315,22341,22342,22343,22362,22363,22393,22394,22844,22845,22846,22849,22853,22855,22869,22873,22874,22875,22876,22877,22878,22879,22880,22881,22882,22883,22884,22885,22939,22945,22953,22954,22955,22956,22957,22959,22962,22964,23018,23029,23035,23047,23049,23083,23136,23153,23196,23216,23219,23235,23236,23237,23247,23249,23318,23332,23337,23339,23368,23390,23391,23393,23394,23397,23400,23402,23403,23414,23523,23524,23542,23574,23580,23581,23582,23584,23586,23587,23596,23597,23834,23889,24043,24047,24064,24065,24179,24530,24656,24683,24684,24685,24686,24687,24688,24689,24690,24696,24697,24698,24761,24762,24815,24858,25545,25547,25551,25553,25563,25565,25566,25567,25568,25569,25570,25572,25575,25576,25577);

DELETE FROM `localized_texts` WHERE `id` BETWEEN 1 AND 186;

DELETE FROM `eventai_summons` WHERE `id` = 1;



DROP TABLE IF EXISTS `temp_scripts`;

CREATE TABLE `temp_scripts` AS SELECT `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_param1`, `event_param2`, `event_param3`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment` FROM `eventai_scripts`;



TRUNCATE `eventai_scripts`;



-- EventAI Scripts

-- ---------------



INSERT INTO `eventai_scripts` (`id`,`creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_param1`, `event_param2`, `event_param3`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES



-- Garrick Padfoot

(10301, 103, 6, 2, 100, 100, 0, 0, 11, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garrick Padfoot - Defensive Stance Spell (Phase 1)'), 

(10302, 103, 1, 2, 100, 1000, 100, 0, 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garrick Padfoot - 1 Second Delay and Increment Phase'), 

(10303, 103, 1, 1, 100, 0, 100, 0, 6, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Garrick Padfoot - Random Say (Phase 2)'), 



-- Defias Thug

(3801, 38, 6, 0, 40, 40, 0, 0, 6, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Thug - Random Chance Say'), 



-- Riverpaw Runt

(9701, 97, 6, 0, 50, 50, 0, 0, 6, 5, 6, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Riverpaw Runt - Random Say'), 

(9702, 97, 4, 0, 100, 15, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Riverpaw Runt - Low HP Flee'), 



-- Hogger 

(44801, 448, 6, 0, 75, 75, 0, 0, 6, 5, 6, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Chance Random Say'), 

(44802, 448, 6, 0, 100, 100, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Rushing Charge'), 

(44803, 448, 0, 0, 50, 6000, 6000, 0, 11, 6016, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Armor Pierce'), 

(44804, 448, 0, 0, 50, 10000, 10000, 0, 11, 6730, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hogger - Head Butt'), 



-- Narg The Taskmaster

(7901, 79, 6, 0, 100, 100, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Narg the Taskmaster - Cast Battleshout'), 

(7902, 79, 0, 0, 50, 4000, 4000, 0, 11, 6016, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Narg the Taskmaster - Cast Pierce Armor'), 



-- Murloc Forager (Corrected in ACID 0.0.1 from Confirmed Official Data)

(4601, 46, 4, 0, 100, 40, 0, 0, 11, 3368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Forager - Drink Minor Potion at 40% HP'), 



-- Kobold Miner

(4001, 40, 6, 0, 25, 25, 0, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kobold Miner - Random Chance Say'), 

(4002, 40, 1, 0, 100, 4000, 100, 0, 11, 6016, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kobold Miner - Pierce Armor'), 



-- Kobold Vermin/Worker/Labourer/Tunneler

(601, 6, 6, 0, 50, 50, 0, 0, 6, 7, 8, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Kobold Vermin - Random Chance Say'), 

(8001, 80, 6, 0, 50, 50, 0, 0, 6, 7, 8, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Kobold Worker - Random Chance Say'), 

(25791, 257, 6, 0, 50, 50, 0, 0, 6, 7, 8, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Kobold Labourer - Random Chance Say'), 

(47501, 475, 6, 0, 25, 25, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kobold Tunneler - Chance Say'), 



-- Defias Bandit

(11601, 116, 0, 0, 50, 5000, 5000, 0, 11, 15618, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Bandit - Cast Snap Kick'), 

(11602, 116, 6, 0, 25, 25, 0, 0, 6, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Bandit - Random Chance Say'), 



-- Thorngrin the Tender 

(1797801, 17978, 6, 0, 100, 100, 0, 0, 2, 9, 0, 0, 4, 11205, 0, 0, 0, 0, 0, 0, 'Thorngrin the Tender - Aggro Yell and Sound'), 

(1797802, 17978, 7, 0, 100, 0, 100, 0, 2, 15, 0, 0, 4, 11207, 0, 0, 0, 0, 0, 0, 'Thorngrin the Tender - Player Death Yell and Sound'), 

(1797803, 17978, 8, 0, 100, 100, 0, 0, 2, 16, 0, 0, 4, 11212, 0, 0, 0, 0, 0, 0, 'Thorngrin the Tender - Creature Death Yell and Sound'), 

(1797804, 17978, 4, 0, 100, 50, 21, 0, 2, 12, 0, 0, 4, 11209, 0, 0, 0, 0, 0, 0, 'Thorngrin the Tender - Creature 50% Health Yell and Sound'), 

(1797805, 17978, 4, 0, 100, 20, 1, 0, 2, 13, 0, 0, 4, 11206, 0, 0, 0, 0, 0, 0, 'Thorngrin the Tender - Creature 20% Health Yell and Sound'), 

(1797806, 17978, 0, 0, 85, 25000, 25000, 0, 11, 34661, 5, 0, 4, 11208, 0, 0, 2, 14, 0, 0, 'Thorngrin the Tender - Cast Sacrifice with Sound and Yell'), 

(1797807, 17978, 0, 0, 80, 18000, 18000, 0, 11, 39132, 1, 0, 9, 11211, 11210, -1, 7, 10, 11, -1, 'Thorngrin the Tender - Cast Hellfire with Random Yell and Sound'), 

(1797808, 17978, 4, 0, 100, 20, 0, 0, 11, 26527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thorngrin the Tender - Cast Enrage at 20% HP'), 



-- High Botanist Freywinn with Seedlings and Protector 

(1797501, 17975, 6, 0, 100, 100, 0, 0, 2, 17, 0, 0, 4, 11144, 0, 0, 0, 0, 0, 0, 'High Botanist Freywinn - Aggro Yell and Sound'), 

(1797502, 17975, 7, 0, 100, 0, 100, 0, 2, 20, 0, 0, 4, 11145, 0, 0, 0, 0, 0, 0, 'High Botanist Freywinn - Player Death Yell and Sound'), 

(1797503, 17975, 8, 0, 100, 100, 0, 0, 2, 21, 0, 0, 4, 11149, 0, 0, 0, 0, 0, 0, 'High Botanist Freywinn - Creature Death Yell and Sound '), 

(1797504, 17975, 0, 0, 75, 20000, 2000, 0, 11, 34759, 0, 0, 2, 18, 0, 0, 4, 11148, 0, 0, 'High Botanist Freywinn - Cast Plant White Seedling'), 

(1797505, 17975, 0, 0, 75, 20500, 20500, 0, 11, 34761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'High Botanist Freywinn - Cast Plant Green Seedling'), 

(1797506, 17975, 0, 0, 75, 21000, 21000, 0, 11, 34762, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'High Botanist Freywinn - Cast Plant Blue Seedling'), 

(1797507, 17975, 0, 0, 75, 21500, 21500, 0, 11, 34763, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 'High Botanist Freywinn - Cast Plant Red Seedling'), 

(1797508, 17975, 4, 0, 100, 20, 0, 0, 11, 33891, 0, 0, 2, 19, 0, 0, 4, 11147, 0, 0, 'High Botanist Freywinn - Cast Tree of Life'), 

(1797509, 17975, 4, 0, 100, 15, 0, 0, 11, 34550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'High Botanist Freywinn - Cast Tranquility'), 

(1797510, 19958, 0, 0, 75, 10000, 12000, 0, 11, 34782, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'White Seedling - Cast Freeze'), 

(1797511, 17975, 0, 0, 75, 45000, 45000, 0, 11, 34557, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'High Botanist Freywinn - Cast Summon Frayer Protector'), 

(1797512, 19964, 0, 0, 75, 13000, 9000, 0, 11, 25028, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Red Seedling - Cast Fire Blast'), 

(1797513, 19969, 0, 0, 75, 20000, 5000, 0, 11, 25812, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Green Seedling - Cast Toxic Volley'), 

(1797514, 19962, 0, 0, 75, 15000, 10000, 0, 11, 22357, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blue Seedling - Cast Icebolt'), 

(1797515, 19953, 0, 0, 75, 10000, 5000, 0, 11, 34663, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frayer Protector - Cast Thorns'), 



-- Rhahk'zor

('64401','644','0','0','80','15000','15000','0','11','6304','1','0','0','0','0','0','0','0','0','0', 'Rhahk\'Zor - Casts Rhahk\'Zor Slam'), 

('64402','644','6','0','100','100','0','0','2','22','0','0','4','5774','0','0','0','0','0','0', 'Rhahk\'Zor - Aggro Yell and Sound'), 



-- Oggleflint

(1151701, 11517, 0, 0, 70, 8000, 8000, 0, 11, 5532, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Oggleflint - Adds Cleave'), 



-- Jergosh The Invoker

(1151801, 11518, 0, 0, 75, 30000, 12000, 0, 11, 9034, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jergosh the Invoker - Cast Immolate'), 

(1151802, 11518, 0, 0, 85, 120000, 30000, 0, 11, 8552, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jergosh the Invoker - Cast Curse of Weakness'), 



-- Ragefire Trogg

(1131801, 11318, 0, 0, 100, 12000, 6000, 0, 11, 19730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ragefire Trogg - Casts Strike'), 



-- Earthborer

(1132001, 11320, 0, 0, 70, 10000, 6000, 0, 11, 18070, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Earthborer - Casts Earthborer Acid'), 

 

-- Searing Blade Cultist

(1132201, 11322, 0, 0, 85, 30000, 12000, 0, 11, 14868, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Searing Blade Cultist - Casts Curse of Agony'), 



-- Searing Blade Enforcer

(1132301, 11323, 0, 0, 75, 10000, 8000, 0, 11, 8242, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Searing Blade Enforcer - Casts Shield Slam'), 



-- Searing Blade Warlock

(1132401, 11324, 0, 0, 75, 8000, 6000, 0, 11, 9613, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Searing Blade Warlock - Casts Shadow Bolt'), 



-- Kobold Geomancer

(47601, 476, 6, 2, 100, 100, 0, 0, 11, 168, 0, 0, 6, 7, -1, -1, 0, 0, 0, 0, 'Kobold Geomancer - Self Cast Frost Armor (Phase 1)'), 

(47602, 476, 1, 2, 100, 1000, 100, 0, 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kobold Geomancer - 1 Second Delay and Increment Phase'), 

(47603, 476, 1, 1, 40, 0, 40, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kobold Geomancer - Random Chance Say (Phase 2)'), 

(47604, 476, 0, 0, 50, 4000, 1500, 0, 11, 133, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kobold Geomancer - Casts Fireball'), 



-- Sneed\'s Shredder

(64201, 642, 0, 0, 85, 20000, 9000, 0, 11, 3603, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sneed\'s shredder - Casts Distracting Pain'), 

(64202, 642, 0, 0, 80, 30000, 18000, 0, 11, 7399, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sneed\'s Shredder - Casts Terrify'), 

(64203, 642, 8, 0, 100, 100, 0, 0, 12, 643, 1, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 'Sneed\'s Shredder - Spawns Sneed After Shredder is Destroyed (Workaround)'), 



-- Quagmirran

(1794201, 17942, 0, 0, 75, 13000, 7000, 0, 11, 38655, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quagmirran - Cast Poison Volley'), 

(1794202, 17942, 0, 0, 80, 20000, 15000, 0, 13, 100, 5, 0, 11, 38739, 1, 0, 0, 0, 0, 0, 'Quagmirran - Threat Mod and Cast Acid Geyser'), 



-- The Black Stalker

(1788201, 17882, 0, 0, 80, 10500, 10500, 0, 11, 31715, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Black Stalker - Cast Static Charge'), 

(1788202, 17882, 0, 0, 80, 7000, 7000, 0, 11, 31330, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Black Stalker - Cast Chain Lightning'), 

(1788203, 17882, 0, 0, 80, 12000, 12000, 0, 11, 31704, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Black Stalker - Cast Levitate'), 



-- Wrath-Scryer Soccothrates

(2088601, 20886, 1, 0, 70, 1000, 19000, 0, 11, 36051, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates - Cast Fel Immolation'), 

(2088602, 20886, 0, 0, 70, 45000, 13000, 0, 11, 35759, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates - Cast Felfire Shock'), 

(2088603, 20886, 0, 0, 85, 35000, 25000, 0, 11, 40434, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates - Cast Knock Away'), 

(2088604, 20886, 0, 0, 100, 35000, 25100, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates - Stop move'), 

(2088605, 20886, 0, 0, 85, 35000, 25500, 0, 11, 35770, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates - Cast Felfire Line Up'), 

(2088606, 20886, 0, 0, 85, 35000, 26500, 0, 11, 20508, 4, 0, 7, 23, 24, 24, 9, 11241, 11242, 11242, 'Wrath-Scryer Soccothrates - Cast Charge and Random Say/Sound'), 

(2088607, 20886, 0, 0, 100, 35000, 28000, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates - Start move'), 

(2088608, 20886, 8, 0, 100, 100, 0, 0, 2, 25, 0, 0, 4, 11243, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates - On Creature Death Say/Sound'), 

(2088609, 20886, 7, 0, 100, 0, 100, 0, 2, 26, 0, 0, 4, 11239, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates - On Player Death Say/Sound'), 

(2088610, 20886, 6, 0, 100, 100, 0, 0, 2, 27, 0, 0, 4, 11238, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates - Aggro Say/Sound'), 

(2088611, 20886, 3, 0, 100, 31000, 100, 0, 4, 11237, 0, 0, 2, 28, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates - Not in Combat Sound/Yell'), 

(2088612, 20886, 3, 0, 40, 5000, 40, 0, 4, 11236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrath-Scryer Soccothrates - Not in Combat Sound'), 



-- Bazzalan 

(1151901, 11519, 0, 0, 75, 20000, 3000, 0, 11, 2818, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bazzalan - Casts Poison'), 

(1151902, 11519, 0, 0, 85, 16000, 8000, 0, 11, 15581, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bazzalan - Casts Sinister Strike'), 



-- Ragefire Shaman

(1131901, 11319, 0, 0, 85, 15000, 9000, 0, 11, 12167, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ragefire Shamen - Casts Lightning Bolt'), 

(1131902, 11319, 4, 0, 100, 40, 0, 33000, 11, 11986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ragefire Shamen - Casts Healing Wave'), 



-- Young WOlf

(29901, 299, 3, 0, 70, 120000, 70, 0, 4, 1018, 0, 0, 5, 393, 0, 0, 0, 0, 0, 0, 'Young Wolf - Out of Combat Sound and Emote'), 



-- Zereketh The Unbound

(2087001, 20870, 6, 0, 100, 100, 0, 0, 2, 29, 0, 0, 4, 11250, 0, 0, 0, 0, 0, 0, 'Zereketh The Unbound - Yell and Sound on Aggro'), 

(2087002, 20870, 7, 0, 100, 0, 100, 0, 7, 31, 32, -1, 9, 11251, 11252, 0, 0, 0, 0, 0, 'Zereketh The Unbound - Yell and Sound at Player Death'), 

(2087003, 20870, 8, 0, 100, 100, 0, 0, 2, 33, 0, 0, 4, 11255, 0, 0, 0, 0, 0, 0, 'Zereketh The Unbound - Yell and Sound on Creature Death'), 

(2087004, 20870, 4, 0, 100, 50, 0, 0, 2, 30, 0, 0, 4, 11253, 0, 0, 0, 0, 0, 0, 'Zereketh The Unbound - Yell and Sound at 50%'), 

(2087005, 20870, 0, 0, 80, 32000, 32000, 0, 11, 30533, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zereketh The Unbound - Casts Void Zone'), 

(2087006, 20870, 0, 0, 80, 15000, 15000, 0, 11, 32863, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zereketh The Unbound - Casts Seed of Corruption'), 

(2087007, 20870, 0, 0, 80, 40000, 40000, 0, 11, 36127, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zereketh The Unbound - Casts Shadow Nova'), 

(2087008, 20870, 4, 0, 100, 98, 0, 0, 11, 36127, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zereketh The Unbound - Casts Shadow Nova'), 



-- Taragaman The Hungerer

(1152001, 11520, 0, 0, 80, 8000, 8000, 0, 11, 8502, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Taragaman the Hungerer - Fire Nova'), 

(1152002, 11520, 0, 0, 80, 7000, 7000, 0, 11, 10966, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Taragaman the Hungerer - Uppercut'), 



-- Full Mana Tombs Trash Mobs 

(1830901, 18309, 0, 0, 100, 3000, 3000, 1000, 11, 38233, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Scavenger - Shield Bash'), 

(1831101, 18311, 0, 0, 100, 6000, 3000, 2000, 11, 31911, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Crypt Raider - Cast Mortal Strike'), 

(1831102, 18311, 0, 0, 100, 7000, 4000, 2000, 11, 37359, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Crypt Raider - Cast Charge with Interrupt'), 

(1831201, 18312, 1, 0, 100, 8000, 100, 0, 11, 32316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Spellbinder - summons 1 wraith'), 

(1831202, 18312, 1, 0, 100, 8200, 100, 0, 11, 32316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Spellbinder - summons 2 wraith'), 

(1831203, 18312, 0, 0, 100, 4000, 1000, 2000, 11, 20294, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Spellbinder - Immolate'), 

(1831204, 18312, 1, 0, 100, 8000, 100, 0, 12, 18394, 4, 300000, 12, 18394, 4, 300000, 0, 0, 0, 0, 'Ethereal Spellbinder - Summons 2 Wraiths'), 

(1831301, 18313, 1, 0, 100, 8000, 100, 0, 11, 32353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Sorcerer - summon 1 arcane fiend'), 

(1831302, 18313, 1, 0, 100, 8200, 100, 0, 11, 32353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Sorcerer - summon 2 arcane fiend'), 

(1831303, 18313, 0, 0, 100, 7000, 2000, 1000, 11, 31742, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Sorcerer - Cast Arcane Missiles'), 

(1831304, 18313, 1, 0, 100, 8200, 100, 0, 12, 18429, 4, 30000, 12, 18429, 4, 300000, 0, 0, 0, 0, 'Ethereal Sorcerer - Summon 2 Arcane Fiends'), 

(1831401, 18314, 0, 0, 100, 6000, 5000, 2000, 11, 29425, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nexus Stalker - Gouge'), 

(1831402, 18314, 0, 0, 100, 11000, 3000, 1000, 11, 36872, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nexus Stalker - Deadly Poison'), 

(1831501, 18315, 0, 0, 100, 10000, 2000, 2000, 11, 30838, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Theurgist - Polymorph'), 

(1831502, 18315, 0, 0, 100, 8000, 7000, 2000, 11, 30092, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Theurgist - Blast Wave'), 

(1831701, 18317, 4, 0, 100, 50, 1, 5000, 11, 39378, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Priest - Cast Heal Self'), 

(1831702, 18317, 0, 0, 100, 8000, 1000, 2000, 11, 36052, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Priest - Shield Self'), 

(1833101, 18331, 0, 0, 100, 4000, 3000, 2000, 11, 27992, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Darkcaster - Cast Mana Burn'), 

(1833102, 18331, 0, 0, 100, 4000, 1000, 2000, 11, 24212, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Darkcaster - Shadow Word Pain'), 

(1839401, 18394, 0, 0, 100, 6000, 1000, 2000, 11, 30267, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summoned Wraith - Shadowbolt Volley'), 

(1842901, 18429, 0, 0, 100, 3000, 1000, 1000, 11, 30266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Fiend - Arcane Explosion'), 

(1930701, 19307, 0, 0, 100, 7000, 7000, 2000, 11, 34322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nexus Terror - Psychic Scream'),



-- Hyjal Summit Trash Mobs  

('1789501','17895','4','0','100','7','0','0','11','20578','0','0','0','0','0','0','0','0','0','0','Ghoul - Cannibalize'), 

('1789701','17897','0','0','80','25000','25000','0','11','28991','1','0','0','0','0','0','0','0','0','0','Crypt Fiend - Casts Web'), 

('1789801','17898','0','0','80','10000','5000','5000','11','31390','1','0','0','0','0','0','0','0','0','0','Abomination - Cast Knockdown'),

('1789802','17898','6','0','100','100','0','0','11','29865','0','0','0','0','0','0','0','0','0','0','Abomination - Poison Aura on Aggro'),

('1789803','17898','1','0','100','1000','1000','0','11','37256','0','0','0','0','0','0','0','0','0','0','Abomination - Apply Disease Cloud'),

('1789901','17899','0','0','80','30000','30000','0','11','24672','0','0','0','0','0','0','0','0','0','0','Shadowy Necromancer - Casts Unholy Frenzy'), 

('1789902','17899','0','0','80','20000','20000','0','11','36986','1','0','0','0','0','0','0','0','0','0','Shadowy Necromancer - Casts Shadow Bolt'), 

('1789903','17899','0','0','80','25000','25000','0','11','20812','4','0','0','0','0','0','0','0','0','0','Shadowy Necromancer - Casts Cripple'), 

('1789904','17899','4','0','100','30','0','0','11','17204','0','0','0','0','0','0','0','0','0','0','Shadowy Necromancer - Casts Summon Skeleton at 30% HP'), 

('1790501','17905','0','0','80','22000','22000','0','11','31651','1','0','0','0','0','0','0','0','0','0','Banshee - Casts Banshee Curse'), 

('1790502','17905','0','0','80','15000','15000','0','11','38183','1','0','0','0','0','0','0','0','0','0','Banshee - Casts Banshee Wail'), 

('1790503','17905','0','0','80','60000','60000','0','11','31662','0','0','0','0','0','0','0','0','0','0','Banshee - Casts Anti-Magic Shell'), 

('1790601','17906','0','0','80','14000','14000','0','11','31664','1','0','0','0','0','0','0','0','0','0','Gargoyle - Casts Gargoyle Strike'), 

('1790701','17907','0','0','80','14000','14000','0','11','31688','1','0','0','0','0','0','0','0','0','0','Frost Wyrm - Casts Frost Breath'), 

('1790801','17908','6','0','100','0','0','0','11','40719','0','0','0','0','0','0','0','0','0','0','Giant Infernal - Casts F11lame Buffet'), 

('1790802','17908','0','0','80','24000','24000','0','11','40719','0','0','0','0','0','0','0','0','0','0','Giant Infernal - Casts Flame Buffet'), 

('1790803','17908','0','0','80','14000','14000','0','11','37059','0','0','0','0','0','0','0','0','0','0','Giant Infernal - Casts Immolation'), 

('1791601','17916','0','0','80','9000','9000','0','11',' 2947','4','0','0','0','0','0','0','0','0','0','Fel Stalker - Casts Mana Burn'), 



-- Commander Sarannis

(1797601, 17976, 6, 0, 100, 100, 0, 0, 2, 34, 0, 0, 4, 11071, 0, 0, 0, 0, 0, 0, 'Commander Sarannis - Aggro Say and Sound'), 

(1797602, 17976, 7, 0, 100, 0, 100, 0, 2, 35, 0, 0, 4, 11072, 0, 0, 0, 0, 0, 0, 'Commander Sarannis - Player Kill Say and Sound'), 

(1797603, 17976, 8, 0, 100, 100, 0, 0, 2, 36, 0, 0, 4, 11079, 0, 0, 0, 0, 0, 0, 'Commander Sarannis - Creature Death Say and Sound'), 

(1797604, 17976, 0, 0, 100, 22000, 22000, 0, 11, 34794, 1, 0, 2, 37, 0, 0, 4, 11076, 0, 0, 'Commander Sarannis - Cast Arcane Resonance with Say and Sound'), 

(1797605, 17976, 0, 0, 100, 45000, 45000, 0, 11, 31457, 1, 0, 2, 38, 0, 0, 4, 11077, 0, 0, 'Commander Sarannis - Cast Arcane Blast with Say and Sound'), 

(1797606, 17976, 4, 0, 100, 50, 0, 0, 2, 39, 0, 0, 4, 11078, 0, 0, 12, 20078, 4, 600000, 'Commander Sarannis - at 50% Health Say and Sound with Creature Summon'), 

(1797607, 17976, 4, 0, 100, 50, 0, 0, 12, 20078, 4, 600000, 12, 20078, 4, 600000, 12, 19633, 4, 600000, 'Commander Sarannis - More Creature Summons'), 



-- Anzu 

(2303501, 23035, 0, 0, 80, 17000, 9000, 0, 11, 22120, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Anzu - Casts Charge'), 

(2303502, 23035, 4, 0, 100, 33, 0, 0, 12, 23132, 4, 46000, 12, 23132, 4, 46000, 12, 23132, 4, 46000, 'Anzu - 33% Summon 3 Brood of Anzu'), 

(2303503, 23035, 4, 0, 100, 66, 0, 0, 12, 23132, 4, 46000, 12, 23132, 4, 46000, 12, 23132, 4, 46000, 'Anzu - 66% Summon 3 Brood of Anzu'), 

(2303504, 23035, 4, 0, 100, 33, 0, 0, 12, 23132, 4, 46000, 12, 23132, 4, 46000, 11, 42354, 0, 0, 'Anzu - 33% Summon 2 Brood of Anzu and Cast Banish on self'), 

(2303505, 23035, 4, 0, 100, 66, 0, 0, 12, 23132, 4, 46000, 12, 23132, 4, 46000, 11, 42354, 0, 0, 'Anzu - 66% summon 2 Brood of Anzu and Cast banish on self'), 

(2303506, 23035, 0, 0, 75, 26000, 14000, 0, 11, 40184, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Anzu - Casts Paralyzing Screech'), 

(2303507, 23035, 0, 0, 85, 21000, 5000, 0, 11, 40321, 5, 0, 0, 0, 5, 0, 0, 0, 0, 0, 'Anzu - Casts Cyclone of Feathers'), 

(2303508, 23035, 0, 0, 75, 30000, 22000, 0, 11, 40303, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Anzu - Casts Spell Bomb'), 

(2303509, 23035, 6, 0, 85, 85, 0, 0, 11, 40184, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Anzu - Casts Paralyzing Screech'), 



-- Riverpaw Outrunner

(47801, 478, 6, 0, 50, 50, 0, 0, 6, 5, 6, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Riverpaw Outrunner - Random Chance Say'), 

(47802, 478, 0, 0, 60, 2000, 2000, 0, 11, 3391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Riverpaw Outrunner - Cast Thrash Spell'), 



-- Spectral Charger

(1554701, 15547, 0, 0, 75, 300000, 16000, 0, 11, 15547, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Charger - Howl of Terror'), 

(1554702, 15547, 0, 0, 85, 15000, 5000, 0, 11, 36140, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Charger - Charge'), 

 

-- Spectral Stallion 

(1554801, 15548, 0, 0, 75, 13000, 6000, 0, 11, 29323, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Stallion - Cast Absorb Vitality'), 



-- Spectral Stable Hand 

(1555101, 15551, 0, 0, 85, 15000, 7000, 0, 11, 5164, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Stable Hand - Cast Knockdown'), 

(1555102, 15551, 8, 0, 100, 100, 0, 0, 7, 40, 41, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Stable Hand - Yell on Creature Death'), 

 

-- Spectral Chef 

(1641101, 16411, 0, 0, 85, 20000, 9000, 0, 11, 29675, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Chef - Cast Roast'), 



-- Phantom Guest 

(1640901, 16409, 0, 0, 70, 40000, 40000, 0, 11, 29521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Guest - Cast Dance Vibe'), 

(1640902, 16409, 0, 0, 70, 17000, 17000, 0, 11, 29582, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Guest - Cast Throw'), 

(1640903, 16409, 0, 0, 70, 20000, 20000, 0, 11, 8812, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Guest - Heal self'), 

(1640904, 16409, 0, 0, 70, 13000, 13000, 0, 11, 29583, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Guest - Cast Impale'), 

(1640905, 16409, 0, 0, 70, 22000, 22000, 0, 11, 36638, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Guest - Cast Immolate'), 

(1640906, 16409, 0, 0, 70, 30000, 30000, 0, 11, 29492, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Guest - Cast Searing Pain'), 

(1640907, 16409, 0, 0, 70, 45000, 45000, 0, 11, 29930, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Guest - Cast Curse of Agony'), 

(1640908, 16409, 8, 0, 100, 100, 0, 0, 2, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Guest - Yell on Creature Death'), 



-- Skeletal Waiter

(1641501, 16415, 0, 0, 40, 120000, 15000, 0, 11, 32441, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skeletal Waiter - Cast Brittle Bones'), 



-- Spectral Servant 

(1640701, 16407, 6, 0, 100, 100, 0, 0, 11, 29540, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Servant - Cast Curse of Past Burdens'), 

(1640702, 16407, 0, 0, 70, 30000, 12000, 0, 11, 29540, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Servant - Cast Curse of Past Burdens'), 

(1640703, 16407, 8, 0, 100, 100, 0, 0, 7, 43, 44, 45, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Servant - On Creature Death Random Yell'), 

 

-- Ghostly Steward

(1641401, 16414, 0, 0, 75, 15000, 8000, 0, 11, 29690, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ghostly Steward - Cast Drunken Skull Crack'), 

(1641402, 16414, 4, 0, 100, 22, 20, 0, 11, 26527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ghostly Steward - Cast Enrage'), 

(1641403, 16414, 8, 0, 100, 100, 0, 0, 2, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ghostly Steward - Yell on Creature Death'), 



-- Phantom Valet 

(1640801, 16408, 0, 0, 85, 35000, 9000, 0, 11, 19778, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Valet - Cast Demoralizing Shout'), 

(1640802, 16408, 8, 0, 100, 100, 0, 0, 2, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Valet - Yell on Creature Death'), 



-- Phantom Attendant 

(1640601, 16406, 8, 0, 100, 100, 0, 0, 7, 52, 53, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Attendant - Yell on Creature Death'), 

(1640602, 16406, 0, 0, 75, 25000, 17000, 0, 11, 29543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Attendant - Cast Shadow Rejuvantation'), 

(1640603, 16406, 0, 0, 80, 30000, 7000, 0, 11, 29930, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Attendant - Cast Curse of Agony'), 



-- Spectral Retainer 

(1641001, 16410, 0, 0, 70, 25000, 17000, 0, 11, 29543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Retainer - Cast Shadow Rejuvanation'), 

(1641002, 16410, 0, 0, 75, 30000, 10000, 0, 11, 39897, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Retainer - Cast Mass Dispel'), 

(1641003, 16410, 0, 0, 80, 20000, 13000, 0, 11, 36798, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Retainer - Cast Mind Control'), 



-- Phantom Guardsman

(1642501, 16425, 4, 0, 100, 75, 70, 0, 11, 29537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Guardsman - Cast Summon Phantom Hound'), 

(1642502, 16425, 0, 0, 80, 15000, 6000, 0, 11, 5164, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Guardsman - Cast Knockdown'), 



-- Phantom Hound 

(1706701, 17067, 0, 0, 80, 10000, 6000, 0, 11, 29574, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Hound - Cast Rend'), 



-- Spectral Sentry 

(1642401, 16424, 0, 0, 75, 20000, 12000, 0, 11, 30990, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Sentry - Cast Multishot'), 

(1642402, 16424, 8, 0, 100, 100, 0, 0, 7, 54, 55, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Sentry - Yell on Creature Death'), 



-- Night Mistress

(1646001, 16460, 4, 0, 100, 50, 48, 0, 11, 29488, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Night Mistress - Transforms at 50% HP'), 

(1646002, 16460, 4, 0, 100, 90, 88, 0, 11, 29491, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Night Mistress - Cast Impending Betrayal'), 

(1646003, 16460, 0, 0, 80, 15000, 7000, 0, 11, 36714, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Night Mistress - Cast Shadow Bolt'), 

(1646004, 16460, 0, 0, 85, 25000, 15000, 0, 11, 29492, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Night Mistress - Cast Searing Pain'), 

(1646005, 16460, 0, 0, 60, 30000, 25000, 0, 7, 56, 57, 58, 0, 0, 0, 0, 0, 0, 0, 0, 'Night Mistress - Random Yells'), 



-- Concubine

(1646101, 16461, 4, 0, 100, 50, 45, 0, 11, 29489, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Concubine - Transform at 50%'), 

(1646102, 16461, 0, 0, 85, 20000, 12000, 0, 11, 29494, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Concubine - Cast Temptation'), 

(1646103, 16461, 4, 0, 100, 35, 30, 0, 11, 29497, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Concubine - Cast Jealousy (in trasformed form)'), 

(1646104, 16461, 8, 0, 100, 100, 0, 0, 2, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Concubine - Yell at Creature Death'), 

(1646105, 16461, 3, 0, 100, 40000, 100, 0, 2, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Concubine - Yell'), 



-- Wanton Hostess

(1645901, 16459, 4, 0, 100, 80, 78, 0, 11, 29485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wanton Hostess - Cast Alluring Aura'), 

(1645902, 16459, 4, 0, 100, 60, 58, 0, 11, 29486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wanton Hostess - Cast Bewitching Aura'), 

(1645903, 16459, 4, 0, 100, 50, 48, 0, 11, 29472, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wanton Hostess - Cast Transform'), 

(1645904, 16459, 0, 0, 75, 20000, 8000, 0, 11, 38183, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wanton Hostess - Cast Banshee Wail'), 



-- Coldmist Widow

(1617101, 16171, 0, 0, 75, 20000, 9000,0, 11, 29292, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coldmist Widow - Cast Frost Mist'), 

(1617102, 16171, 6, 0, 100, 100, 0, 0, 11, 29292, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coldmist Widow - Cast Frost Mist (On Aggro)'), 

(1617103, 16171, 0, 0, 75, 25000, 16000,0, 11, 29293, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coldmist Widow - Cast Poison Volley'), 



-- Coldmist Stalker

(1617001, 16170, 0, 0, 85, 8000, 3000, 0, 11, 29290, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coldmist Stalker - Cast Chilling Poison'), 



-- Dreadbeast

(1617701, 16177, 0, 0, 100, 12000, 0, 0, 11, 15284, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dreadbeast - Cast Cleave'), 



-- Shadowbeast

(1617601, 16176, 6, 0, 100, 100, 0, 0, 11, 29304, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shaodowbeast - Cast Howl of the Broken Hills'), 



-- Phase Hound 

(1617801, 16178, 0, 0, 75, 10000, 9000, 0, 11, 32942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phase Hound - Cast Phasing'), 



-- Phantom Stagehand 

(1647201, 16472, 0, 0, 75, 15000, 7000, 0, 11, 29677, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Stagehand - Cast Mallet Toss'), 

(1647202, 16472, 0, 0, 75, 20000, 12000, 0, 11, 29673, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Stagehand - Cast Sandbag'), 

(1647203, 16472, 0, 0, 85, 32000, 4000, 0, 11, 31290, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Phantom Stagehand - Cast Net'), 



-- Skeletal Usher 

(1647101, 16471, 0, 0, 85, 20000, 14000, 0, 11, 29666, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skeletal Usher - Cast Frost Shock'), 

(1647102, 16471, 0, 0, 70, 13000, 5000, 0, 11, 29670, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skeletal Usher - Cast Frost Tomb'), 



-- Spectral Performer 

(1647301, 16473, 0, 0, 80, 30000, 16000, 0, 11, 29679, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Performer - Cast Bad Poetry'), 

(1647302, 16473, 0, 0, 70, 20000, 6000, 0, 11, 29680, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Performer - Cast Curtain Call'), 

(1647303, 16473, 4, 0, 100, 50, 47, 0, 11, 29683, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Performer - Cast Spotlight'), 



-- Spectral Patron 

(1646801, 16468, 0, 0, 80, 10000, 5000, 0, 11, 29555, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Patron - Cast Left-Hook'), 

(1646802, 16468, 8, 0, 100, 100, 0, 0, 7, 61, 62, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Patron - Random yell at Creature Death'), 



-- Ghostly Philanthropist 

(1647001, 16470, 0, 0, 90, 30000, 12000, 0, 11, 29612, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ghostly Philanthropist - Cast Incite Rage'), 

(1647002, 16470, 0, 0, 80, 15000, 5000, 0, 11, 29609, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ghostly Philanthropist - Ill Gift'), 

(1647003, 16470, 8, 0, 100, 100, 0, 0, 7, 63, 64, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ghostly Philanthropist - Yell on Creature Death'), 



-- Ghastly Haunt 

(1648101, 16481, 0, 0, 80, 19000, 14000, 0, 11, 29716, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ghastly Haunt - Cast Ethereal Curse'), 

(1648102, 16481, 0, 0, 80, 23000, 20000, 0, 11, 29712, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ghastly Haunt - Cast Shadow Shock'), 

(1648103, 16481, 8, 0, 100, 100, 0, 0, 7, 65, 66, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ghastly Haunt - Yell on Creature Death (Same as Trapped Soul)'), 



-- Trapped Soul 

(1648201, 16482, 0, 0, 75, 20000, 9000, 0, 11, 29717, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Trapped Soul - Cast Cone of Cold'), 

(1648202, 16482, 6, 0, 100, 100, 0, 0, 11, 29718, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Trapped Soul - Cast Elemental Armor'), 

(1648203, 16482, 8, 0, 100, 100, 0, 0, 7, 65, 66, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Trapped Soul - Yell on Creature Death (Same as Ghostly Haunt)'), 



-- Arcane Watchman 

(1648501, 16485, 0, 0, 80, 12000, 12000, 0, 11, 29768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Watchman - Cast Overload'), 

(1648502, 16485, 7, 0, 100, 0, 100, 0, 7, 67, 68, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Watchman - Yell on Player Kill'), 

(1648503, 16485, 8, 0, 100, 100, 0, 0, 7, 69, 70, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Watchman - Yell on Creature Death'), 



-- Arcane Anomaly 

(1648801, 16488, 0, 0, 80, 15000, 9000, 0, 11, 29885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Anomaly - Cast Arcane Volley'), 

(1648802, 16488, 4, 0, 100, 75, 73, 0, 11, 38151, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Anomaly - Cast Mana Shield'), 

(1648803, 16488, 0, 0, 90, 45000, 30000, 0, 11, 34673, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Anomaly - Teleport to Random Player'), 



-- Syphoner 

(1649201, 16492, 0, 0, 85, 10000, 8000, 0, 11, 35332, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Syphoner - Cast Drain Mana'), 



-- Arcane Protector 

(1650401, 16504, 10, 0, 80, 0, 0, 80, 11, 29788, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Protector - Cast Return Fire'), 

(1650402, 16504, 1, 0, 100, 15000, 100, 0, 12, 17283, 4, 600000, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Protector - Summon Spark'), 

(1650403, 16504, 3, 0, 100, 1000, 100, 0, 11, 11649, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Protector - Detect Invisibility'), 



-- Astral Spark 

(1728301, 17283, 0, 0, 70, 30000, 15000, 0, 11, 31472, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Astral Spark - Cast Arcane Discharge'), 



-- Chaotic Sentience 

(1648901, 16489, 0, 0, 75, 30000, 10000, 0, 11, 29900, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chaotic Sentience - Cast Unstable Magic'), 



-- Mana Feeder 

(1649101, 16491, 0, 0, 85, 10000, 6000, 0, 11, 29907, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mana Feeder - Cast Astral Bite'), 



-- Mana Warp 

(1653001, 16530, 4, 0, 100, 10, 0, 0, 11, 29919, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mana Warp - Cast Warp Breach'), 



-- Magical Horror 

(1652901, 16529, 0, 0, 70, 20000, 16000, 0, 11, 29911, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Magical Horror - Cast Power Distortion'), 

(1652902, 16529, 0, 0, 85, 15000, 9000, 0, 11, 36738, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Magical Horror - Cast Arcane Volley'), 



-- Spell Shade 

(1652501, 16525, 0, 0, 75, 12000, 9000, 0, 11, 28479, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spell Shade - Cast Frostbolt'), 

(1652502, 16525, 0, 0, 80, 20000, 15000, 0, 11, 26006, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spell Shade - Cast Shadow Bolt'), 

(1652503, 16525, 0, 0, 75, 22000, 20000, 0, 11, 40554, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spell Shade - Cast Fireball'), 

(1652504, 16525, 0, 0, 85, 10000, 8000, 0, 11, 6634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spell Shade - Cast Phasing'), 



-- Shadow Pillager 

(1654001, 16540, 0, 0, 85, 20000, 16000, 0, 11, 29930, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadow Pillager - Cast Curse of Agony'), 

(1654002, 16540, 0, 0, 80, 12000, 6000, 0, 11, 29492, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadow Pillager - Cast Searing Pain'), 

(1654003, 16540, 0, 0, 75, 22000, 22000, 0, 11, 29317, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadow Pillager - Cast Shadowbolt'), 

(1654004, 16540, 6, 0, 100, 100, 0, 0, 11, 29928, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadow Pillager - Cast Immolate'), 



-- Sorcerous Shade 

(1652601, 16526, 6, 0, 100, 100, 0, 0, 11, 29923, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sorcerous Shade - Cast Frostbolt Volley (On Aggro)'), 

(1652602, 16526, 0, 0, 75, 10000, 7000, 0, 11, 29923, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sorcerous Shade - Cast Frostbolr Volley'), 

(1652603, 16526, 0, 0, 75, 16000, 14000, 0, 11, 27383, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sorcerous Shade - Cast Shadowbolt Volley'), 

(1652604, 16526, 0, 0, 75, 22000, 22000, 0, 11, 29922, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sorcerous Shade - Cast Fireball Volley'), 



-- Ethereal Thief 

(1654401, 16544, 0, 0, 80, 20000, 12000, 0, 11, 40505, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Thief - Cast Cleave'), 

(1654402, 16544, 0, 0, 75, 45000, 30000, 0, 11, 29982, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Thief - Cast Spatial Distortion'), 

(1654403, 16544, 7, 0, 100, 0, 100, 0, 2, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Thief - Yell on Player Kill'), 

(1654404, 16544, 8, 0, 100, 100, 0, 0, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Thief - Yell on Creature Death'), 



-- Ethereal Spellfilcher 

(1654501, 16545, 0, 0, 70, 40000, 30000, 0, 11, 29982, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Spellfilcher - Cast Spatial Distortion'), 

(1654502, 16545, 0, 0, 70, 25000, 20000, 0, 11, 36705, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Spellfilcher - Cast Arcane Volley'), 

(1654503, 16545, 0, 0, 85, 60000, 10000, 0, 11, 30037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Spellfilcher - Cast Steal Magic'), 

(1654504, 16545, 0, 0, 75, 16000, 16000, 0, 11, 30039, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Spellfilcher - Cast Transference'), 



-- Fleshbeast 

(1659501, 16595, 0, 0, 85, 20000, 5000, 0, 11, 29935, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fleshbeast - Cast Gaping Maw'), 

(1659502, 16595, 0, 0, 85, 15000, 10000, 0, 11, 29942, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fleshbeast - Cast Infected Blood'), 



-- Bog Overlord 

(2169401, 21694, 0, 0, 85, 5000, 5000, 0, 11, 32065, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bog Overlord - Casts Fungal Decay'), 

(2169402, 21694, 0, 0, 80, 7000, 8000, 0, 11, 15550, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bog Overlord - Casts Trample'), 

(2169403, 21694, 4, 0, 100, 20, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bog Overlord - Casts Enrage'), 

(2169404, 21694, 1, 0, 100, 4000, 100, 0, 11, 37266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bog Overlord - Casts Disease Cloud'), 



-- Coilfang Engineer 

(1772101, 17721, 0, 0, 75, 10000, 8000, 0, 11, 40332, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Engineer - Casts Throw Bomb'), 

(1772102, 17721, 0, 0, 65, 5000, 5000, 0, 11, 6533, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Engineer - Casts Throw Net'), 



-- Coilfang Leper 

(2133801, 21338, 0, 0, 80, 5000, 3000, 0, 11, 9613, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Leper - Casts Shadow Bolt'), 

(2133802, 21338, 0, 0, 80, 7000, 7000, 0, 11, 13339, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Leper - Casts Fire Blast'), 

(2133803, 21338, 0, 0, 80, 12000, 14000, 0, 11, 13446, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Leper - Casts Strike'), 

(2133804, 21338, 0, 0, 80, 9000, 9000, 0, 11, 11831, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Leper - Casts Frost Nova'), 

(2133805, 21338, 4, 0, 100, 40, 0, 10000, 11, 31730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Leper - Casts Heal'), 

(2133806, 21338, 0, 0, 80, 10500, 12000, 0, 11, 13444, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Leper - Casts Sunder Armor'), 

(2133807, 21338, 0, 0, 80, 7200, 5000, 0, 11, 15547, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Leper - Casts Shoot'), 



-- Coilfang Myrmidon 

(1780001, 17800, 0, 0, 70, 7000, 7000, 0, 11, 18765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Myrmidon - Casts Sweeping Strikes'), 

(1780002, 17800, 0, 0, 80, 6500, 3000, 0, 11, 15622, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Myrmidon - Casts Cleave'), 

(1780003, 17800, 14, 0, 100, 20, 0, 0, 11, 7160, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Myrmidon - Casts Execute at 20% Player HP'), 



-- Coilfang Oracle 

(1780301, 17803, 0, 0, 75, 18000, 9000, 0, 11, 8281, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Oracle - Casts Sonic Boom'), 

(1780302, 17803, 0, 0, 80, 21000, 16000, 0, 11, 22582, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Oracle - Casts Frost Shock'), 

(1780303, 17803, 4, 0, 100, 40, 1, 10000, 11, 31730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Oracle - Casts Heal'), 



-- Coilfang Siren 

(1780101, 17801, 0, 0, 85, 24000, 12000, 0, 11, 26988, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Siren - Casts Moonfire'), 

(1780102, 17801, 0, 0, 70, 25000, 19000, 0, 11, 29321, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Siren - Casts AOE Fear'), 

(1780103, 17801, 0, 0, 75, 10000, 6000, 0, 11, 36152, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Siren - Casts Lightning Bolt'), 

(1780104, 17801, 0, 0, 85, 15000, 15000, 0, 11, 37856, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Siren - Casts Arcane Flare'), 



-- Coilfang Slavemaster 

(1780501, 17805, 0, 0, 80, 17000, 9000, 0, 11, 10987, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Slavemaster - Casts Geyser'), 

(1780502, 17805, 4, 0, 100, 20, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Slavemaster - Casts Enrage'), 



-- Coilfang Sorceress 

(1772201, 17722, 0, 0, 85, 19000, 12000, 0, 11, 29926, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Sorceress - Casts Frostbolt'), 

(1772202, 17722, 0, 0, 80, 25000, 20000, 0, 11, 39416, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Sorceress - Casts Blizzard'), 

(1772203, 17722, 0, 0, 100, 15000, 6000, 0, 11, 32365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Sorceress - Casts Frost Nova'), 



-- Coilfang Warrior

(1780201, 17802, 0, 0, 75, 12000, 9000, 0, 11, 29572, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Warrior - Casts Mortal Strike'), 

(1780202, 17802, 0, 0, 75, 12000, 4000, 0, 11, 35105, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Warrior - Casts Mortal Blow'), 

(1780203, 17802, 1, 0, 100, 1000, 100, 0, 11, 31403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Warrior - Casts Battle Shout'), 



-- Steam Surger 

(2169601, 21696, 0, 0, 85, 15000, 11000, 0, 11, 37252, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Steam Surger - Casts Water Bolt'), 



-- Tidal Surger 

(2169501, 21695, 0, 0, 75, 10000, 5000, 0, 11, 30056, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidal Surger - Casts Knockback'), 

(2169502, 21695, 0, 0, 75, 17000, 10000, 0, 11, 37250, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidal Surger - Casts Water Spout'), 

(2169503, 21695, 0, 0, 75, 12000, 14000, 0, 11, 32365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidal Surger - Casts Frost Nova'), 



-- Fen Ray

('1773101', '17731', '0', '0', '100', '10000', '8000', '2000', '11', '34984', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Fen Ray - Cast Psychic Horror'),



-- Warmaul Shaman 

(1806401, 18064, 0, 0, 80, 20000, 2000, 0, 11, 15038, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Warmaul Shaman - Casts Scorching Totem'), 

(1806402, 18064, 4, 0, 100, 20, 0, 3000, 11, 25396, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Warmaul Shaman - Casts Sealf Heal'), 



-- Dalliah The Doomsayer 

(2088501, 20885, 6, 0, 100, 100, 0, 0, 2, 73, 0, 0, 4, 11086, 0, 0, 0, 0, 0, 0, 'Dalliah the Doomsayer - Yell with Sound on Aggro'), 

(2088502, 20885, 7, 0, 100, 0, 100, 0, 7, 74, 75, -1, 9, 11087, 11088, -1, 0, 0, 0, 0, 'Dalliah the Doomsayer - Yell with Sound on Player Death'), 

(2088503, 20885, 8, 0, 100, 100, 0, 0, 2, 76, 0, 0, 4, 11093, 0, 0, 0, 0, 0, 0, 'Dalliah the Doomsayer - Yell with Sound on Creature Death'), 

(2088504, 20885, 0, 0, 80, 18000, 7000, 0, 11, 36173, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalliah the Doomsayer - Casts Gift of the Doomsayer'), 

(2088505, 20885, 0, 0, 80, 30000, 15000, 0, 11, 36132, 1, 0, 7, 79, 80, -1, 9, 11089, 11090, -1, 'Dalliah the Doomsayer - Casts Whirlwind'), 

(2088506, 20885, 0, 0, 70, 30000, 21200, 0, 11, 36144, 0, 0, 7, 77, 78, -1, 9, 11091, 11092, -1, 'Dalliah the Doomsayer - Casts Heal'), 



-- Forge Patroler 

('1916601', '19166', '0', '0', '100', '9000', '2000', '2000', '11', '35012', '1', '0','0', '0', '0', '0', '0', '0', '0', '0', 'Tempest-Forge Patroler - Casts Charged Arcane Missle'),

('1916602', '19166', '0', '0', '100', '14000', '8000', '2000', '11', '35011', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tempest-Forge Patroler - Casts Knockdown'),



-- Forge Destroyer 

('1973501', '19735', '0', '0', '100', '17000', '10000', '0', '11', '36582', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tempets-Forge Destroyer - Casts Charged Fist'),

('1973502', '19735', '0', '0', '100', '10000', '8000', '0', '11', '35783', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tempets-Forge Destroyer - Casts Knockdown'),



-- Sunseeker Netherbinder 

('2005901', '20059', '0', '0', '100', '11000', '6000', '2000', '11', '35261', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Netherbinder - Casts Arcane Nova'),

('2005902', '20059', '0', '0', '100', '14000', '4000', '2000', '11', '35243', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Netherbinder - Casts Starfire'),

('2005903', '20059', '0', '0', '100', '5000', '1000', '2000', '11', '23859', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Netherbinder - Casts Dispel Magic'),



-- Bloodwarder Slayer 

('1916701', '19167', '0', '0','100', '12000', '6000', '2000', '11', '13736', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Slayer - Casts Whirlwind'),

('1916702', '19167', '0', '0','100', '15000', '10000', '2000', '11', '15708', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Slayer - Casts Mortal Strike'),



-- Bloodwarder Centurion 

('1951001', '19510', '0', '0', '100', '8000', '6000', '1000', '11', '35178', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Centurion - Casts Shield Bash'),



-- Bloodwarder Physician 

('2099001', '20990', '0', '0', '100', '9000', '4000', '1000', '11', '36340', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Physician - Casts Holy Shock'),

('2099002', '20990', '0', '0', '100', '5000', '1000', '1000', '11', '36333', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Physician - Casts Anesthetic'),

('2099003', '20990', '4', '0', '100', '50', '0', '10000', '11', '36348', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Physician - Casts Bandage'),



-- Mechanar Driller

('1971201', '19712', '0', '0', '100', '20000', '10000', '2000', '11', '35049', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Driller - Casts Pound'),

('1971202', '19712', '0', '0', '100', '6000', '8000', '2000', '11', '35047', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Driller - Casts Drill'),

('1971203', '19712', '0', '0', '100', '15000', '6000', '2000', '11', '30981', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Driller - Casts Crippling Poison'),



-- Mechanar Wrecker

('1971301', '19713', '0', '0', '100', '18000', '6000', '2000', '11', '35049', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Wrecker - Casts Pound'),



-- Mechanar Tinkerer

('1971601', '19716', '0', '0', '100', '8000', '1000', '2000', '11', '35057', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Tinkerer - Casts Netherbomb'),

('1971602', '19716', '4', '0', '100', '20', '0', '0', '11', '35062', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Tinkerer - Casts Maniacal Charge'),

('1971603', '19716', '4', '0', '100', '29', '0', '0', '11', '35058', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Tinkerer - Nether Explosion'),



-- Mechanar Crusher

('1923101', '19231', '0', '0', '100', '10000', '6000', '2000', '11', '31955', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mechanar Crusher - Casts Disarm'),



-- Sunseeker Engineer

('2098801', '20988', '0', '0', '100', '10000', '1000', '2000', '11', '36341', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Engineer - Casts Super Shrink Ray'),

('2098802', '20988', '0', '0', '100', '8000', '3000', '2000', '11', '36345', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Engineer - Casts Death Ray'),

('2098803', '20988', '0', '0', '100', '14000', '5000', '2000', '11', '36346', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Engineer - Casts Growth Ray'),



-- Sunseeker Astromage

('1916801', '19168', '0', '0', '100', '9000', '9000', '2000', '11', '35185', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Astromage - Casts Melt Armor'),

('1916802', '19168', '0', '0', '100', '6000', '6000', '2000', '11', '17195', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Astromage - Casts Scorch'),

('1916803', '19168', '0', '0', '100', '10000', '3000', '2000', '11', '35267', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Astromage - Casts Solar burn'),

('1916804', '19168', '0', '0', '100', '120000', '1000', '0', '11', '35265', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Astromage - Casts Fire Shield'), 



-- Daggerspine Tribe Nagas

(259501, 2595, 0, 0, 100, 9000, 4000, 3000, 11, 6533, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Daggerspine Raider - Cast Net'), 

(237001, 2370, 0, 0, 100, 12000, 6000, 3000, 11, 3589, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Daggerspine Screamer - Cast Screech'), 

(236901, 2369, 0, 0, 100, 2000, 1000, 0, 11, 10277, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Daggerspine Shorehunter - Cast Throw'), 

(236902, 2369, 1, 0, 100, 1000, 100, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daggerspine shorehunter - Hunterlike Mob'), 

(236801, 2368, 0, 0, 100, 6000, 5000, 2000, 11, 12555, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Daggerspine Shorestalker - Cast Pummel'), 

(236802, 2368, 1, 0, 100, 1000, 100, 0, 11, 7164, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Daggerspine Shorestalker - Cast Defensive Stance'), 

(237101, 2371, 0, 0, 100, 19000, 1000, 0, 11, 14032, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Daggerspine Siren - Cast Shadow Word Pain'), 

(237102, 2371, 0, 0, 100, 12000, 6000, 2000, 11, 25189, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Daggerspine Siren - Enveloping Winds'), 

(237103, 2371, 0, 0, 100, 5000, 3000, 3000, 11, 9532, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daggerspine Siren - Cast Lightning Bolt'), 

(259601, 2596, 0, 0, 100, 6000, 3000, 2000, 11, 9532, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daggerspine Sorceress - Cast Lightning bolt'), 

(259602, 2596, 0, 0, 100, 12000, 1000, 2000, 11, 15507, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Daggerspine Sorceress - Cast Lightning shield'), 

(259603, 2596, 0, 0, 100, 9000, 8000, 4000, 11, 23206, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daggerspine Sorceress - Cast Chain Lightning'), 



-- Gatewatcher Gyro-kill

(1921801, 19218, 7, 0, 100, 0, 100, 0, 7, 81, 82, -1, 9, 11102, 11103, -1, 0, 0, 0, 0, 'Gatewatcher Gyro-kill - Player Kill Yell'), 

(1921802, 19218, 8, 0, 100, 100, 0, 0, 2, 83, 0, 0, 4, 11106, 0, 0, 0, 0, 0, 0, 'Gatewatcher Gyro-kill - Creature Death Yell'), 

(1921803, 19218, 0, 0, 100, 25000, 25000, 10000, 11, 35322, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gatewatcher Gyro-kill - Cast Shadow Power'), 

(1921804, 19218, 0, 0, 100, 13000, 10000, 4000, 11, 35311, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gatewatcher Gyro-kill - Cast Poison'), 

(1921805, 19218, 0, 0, 100, 20000, 20000, 10000, 11, 35318, 4, 1, 7, 84, 85, -1, 9, 11104, 11105, -1, 'Gatewatcher Gyro-kill - Cast Saw'), 

(1921806, 19218, 6, 0, 100, 100, 0, 0, 2, 86, 0, 0, 4, 11101, 0, 0, 0, 0, 0, 0, 'Gatewatcher Gyro-kill - Aggro Yell'), 



-- Lady Anacondra

(367101, 3671, 0, 0, 100, 7000, 0, 0, 11, 548, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lady Anacondra - Casts Lightning Bolt'), 

(367102, 3671, 0, 0, 100, 12000, 0, 0, 11, 20663, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lady Anacondra - Casts Sleep'), 



-- Mechano-lord Capacitus

(1921901, 19219, 6, 0, 100, 100, 0, 0, 2, 87, 0, 0, 4, 11162, 0, 0, 0, 0, 0, 0, 'Capacitus - Yell with Sound'), 

(1921902, 19219, 7, 0, 100, 0, 100, 0, 7, 88, 92, -1, 9, 11164, 11163, -1, 0, 0, 0, 0, 'Capacitus - Yell and Sound on Player Kill'), 

(1921903, 19219, 8, 0, 100, 100, 0, 0, 2, 89, 0, 0, 4, 11167, 0, 0, 0, 0, 0, 0, 'Capacitus - Creature Death Yell'), 

(1921904, 19219, 0, 0, 100, 13000, 10000, 0, 11, 35161, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Capacitus - Cast Headcrack'), 

(1921905, 19219, 0, 0, 100, 30000, 15000, 0, 11, 35159, 0, 0, 2, 90, 0, 0, 4, 11166, 0, 0, 'Capacitus - Cast Reflective Shield and Yell'), 

(1921906, 19219, 0, 0, 100, 30000, 30000, 0, 11, 35158, 0, 0, 2, 91, 0, 0, 4, 11165, 0, 0, 'Capacitus - Cast Other Reflective Shield and yell'), 

(1921907, 19219, 0, 0, 100, 10000, 0, 0, 12, 20405, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Capacitus - Summon Nether Bomb'), 

(2040501, 20405, 0, 0, 100, 3000, 16500, 0, 11, 35152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nether Bomb - Detonation'), 

(2040502, 20405, 1, 0, 100, 500, 100, 0, 11, 35150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nether Bomb - Passive Dummy Aura'), 

(2040503, 20405, 1, 0, 100, 0, 100, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nether Bomb - No Melee'), 

(2040504, 20405, 1, 0, 100, 16500, 100, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nether Bomb - Stop Moving When Starts to Explode'), 

(2040505, 20405, 1, 0, 100, 30000, 100, 0, 11, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nether Bomb - Kill Self'), 



-- Wastewalker Worker

(1796401, 17964, 0, 0, 100, 8000, 4000, 2000, 11, 29574, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wastewalker Worker - Casts Rend'), 



-- Coilfang Slavehandler

(1795901, 17959, 0, 0, 100, 9000, 0, 0, 11, 29667, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Slavehandler - Casts Hamstring'), 

(1795902, 17959, 4, 0, 100, 20, 0, 0, 11, 19516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Slavehandler - Casts Enrage'), 



-- Coilfang Champion

(1795701, 17957, 0, 0, 100, 20000, 0, 0, 11, 38946, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Champion - Casts Intimidating Shout'), 

(1795702, 17957, 0, 0, 100, 70000, 0, 0, 11, 15579, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Champion - Casts Cleave'), 



-- Coilfang Observer

(1793801, 17938, 0, 0, 100, 7000, 1000, 2000, 11, 20294, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Observer - Casts Immolate'), 

(1793802, 17938, 0, 0, 100, 10000, 0, 0, 11, 32191, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Observer - Casts Heavy Dynamite'), 



-- Coilfang Enchantress

(1796101, 17961, 0, 0, 100, 8000, 2000, 2000, 11, 24648, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Enchantress - Casts Entangling Roots'), 

(1796102, 17961, 0, 0, 100, 11000, 5000, 5000, 11, 26550, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Enchantress - Casts Lightning Cloud'), 



-- Coilfang Defender

(1795801, 17958, 0, 0, 100, 8000, 0, 0, 11, 30688, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Defender - Casts Shield Slam'), 

(1795802, 17958, 0, 0, 100, 13000, 0, 0, 11, 33961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Defender - Casts Spell Reflection'), 



-- Coilfang Technician

(1794001, 17940, 0, 0, 100, 8000, 1000, 0, 11, 24669, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Technician - Casts Rain of Fire'), 



-- Wastewalker Slave

(1796301, 17963, 4, 0, 100, 20, 0, 0, 11, 38046, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wastewalker Slave - Casts Enrage'), 

(1796302, 17963, 0, 0, 100, 15000, 5000, 5000, 11, 12674, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wastewalker Slave - Casts Frost Nova'), 

(1796303, 17963, 0, 0, 100, 15000, 1000, 3000, 11, 37113, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wastewalker Slave - Casts Corruption'), 



-- Coilfang Soothsayer

(1796001, 17960, 0, 0, 100, 6000, 0, 0, 11, 31743, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Soothsayer - Casts Arcane Missiles'), 

(1796002, 17960, 4, 0, 100, 60, 0, 6000, 11, 29564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Soothsayer - Casts Heal,  spell may be too powerful'), 



-- Dalaran Trash Mobs and a Furblog (Fixed in 0.0.4)

(398701, 3987, 0, 0, 100, 10000, 6000, 2000, 11, 6713, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dal Bloodclaw - Cast Disarm'), 

(398702, 3987, 0, 0, 100, 7000, 4000, 1000, 11, 12170, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dal Bloodclaw - Cast Revenge'), 

(186701, 1867, 0, 0, 100, 3000, 1000, 0, 11, 13322, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Apprentice - Cast Frostbolt'), 

(186702, 1867, 3, 0, 100, 1000, 100, 0, 11, 12544, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Apprentice - Cast Frost Armor'), 

(357701, 3577, 0, 0, 100, 6000, 8000, 2000, 11, 7638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Brewmaster - Toss Potion'), 

(191501, 1915, 3, 0, 100, 1000, 100, 0, 11, 25112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Conjuror - Summon Voidwalker'), 

(191502, 1915, 3, 0, 100, 12000, 100, 0, 11, 20798, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Conjuror - Cast Shadowskin'), 

(191503, 1915, 0, 0, 100, 3000, 1000, 0, 11, 9613, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Conjuror - Cast Shadowbolt'), 

(191401, 1914, 1, 0, 100, 1000, 100, 0, 11, 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Mage - Cast Fire Shield'), 

(191402, 1914, 0, 0, 100, 3000, 2500, 0, 11, 9053, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Mage - Cast Fireball'), 

(191403, 1914, 1, 0, 50, 8000, 50, 0, 11, 4979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Mage - Cast Quick Fire Ward'), 

(191201, 1912, 1, 0, 100, 3000, 100, 0, 11, 3615, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Protector - Summon Serpent'), 

(227101, 2271, 3, 0, 100, 1000, 0, 0, 11, 3284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Shield Guard - Cast Violent Shield'), 

(192001, 1920, 3, 0, 100, 1000, 100, 0, 11, 12544, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Spellscribe - Cast Frost Armor'), 

(192002, 1920, 0, 0, 100, 20000, 10000, 5000, 11, 5276, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Spellscribe - Cast Freeze'), 

(192003, 1920, 0, 0, 100, 7000, 1000, 2000, 11, 11538, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Spellscribe - Cast Frostbolt'), 

(235801, 2358, 3, 0, 50, 1000, 50, 0, 11, 3658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Summoner - Summon Theurgist'), 

(235802, 2358, 3, 0, 50, 6000, 50, 0, 11, 3655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Summoner - Summon Shield Guard'), 

(235803, 2358, 0, 0, 80, 3000, 1000, 0, 11, 12466, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Summoner - Cast Fireball'), 

(227201, 2272, 1, 0, 80, 8000, 80, 0, 11, 3652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Theurgist - Summon Spirit of Old'), 

(227202, 2272, 0, 0, 100, 5000, 1000, 2000, 11, 15530, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Theurgist - Cast Frostbolt'), 

(227203, 2272, 2, 0, 100, 60000, 1000, 5000, 11, 15044, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Theurgist - Cast Frost Ward'), 

(191301, 1913, 1, 0, 100, 1000, 100, 0, 11, 3615, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Warder - Summon Serpent'), 

(188801, 1888, 1, 0, 100, 1000, 100, 0, 11, 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Watcher - Fire Shield'), 

(188802, 1888, 0, 0, 100, 5000, 3000, 1000, 11, 11829, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Watcher - Flamestrike'), 

(188901, 1889, 3, 0, 100, 1000, 100, 0, 11, 12554, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Wizard - Frost Armor'), 

(188902, 1889, 0, 0, 100, 3000, 1000, 0, 11, 12737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Wizard - Frostbolt'), 

(188903, 1889, 0, 0, 100, 10000, 12000, 2000, 11, 11831, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Wizard - Frost Nova'), 

(188904, 1889, 1, 0, 60, 8000, 60, 0, 11, 4980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Wizard - Quick Frost Ward'), 



-- Mennu The Betrayer

(1794101, 17941, 6, 0, 100, 100, 0, 0, 7, 93, 94, 95, 9, 10376, 10378, 10379, 0, 0, 0, 0, 'Mennu - Aggro Yell'), 

(1794102, 17941, 7, 0, 100, 0, 100, 0, 7, 96, 97, 97, 9, 10380, 10381, 10381, 0, 0, 0, 0, 'Mennu - Player Kill Yell'), 

(1794103, 17941, 8, 0, 100, 100, 0, 0, 2, 98, 0, 0, 4, 10382, 0, 0, 0, 0, 0, 0, 'Mennu - Creature Death Yell'), 

(1794104, 17941, 1, 0, 100, 4000, 100, 0, 12, 18179, 1, 0, 12, 18176, 1, 0, 12, 18177, 1, 0, 'Mennu - Summons Earthgrab/Stoneskin/Fire Nova Totems'), 

(1794105, 17941, 1, 0, 100, 4000, 100, 0, 12, 20208, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mennu - Summon Healing Ward Totem'), 

(1794106, 17941, 0, 0, 85, 5000, 5000, 0, 11, 36152, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mennu - Casts Lightning Bolt'), 

(1817601, 18176, 1, 0, 100, 0, 100, 0, 20, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 'Mennu Earthgrab Totem - Stop Movement/Melee'), 

(1817602, 18176, 0, 0, 100, 18000, 2000, 0, 11, 20654, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mennu Earthgrab Totem - Cast Snare'), 

(1817603, 18176, 3, 0, 100, 0, 100, 0, 20, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 'Mennu Earthgrab Totem - Stop Movement/Melee (ooc)'), 

(1817701, 18177, 1, 0, 100, 1000, 100, 0, 11, 31986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mennu Stoneskin Totem - Casts Aura'), 

(1817702, 18177, 3, 0, 100, 0, 100, 0, 20, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 'Mennu Stoneskin Totem - Stop Movement/Melee (ooc)'), 

(1817703, 18177, 1, 0, 100, 0, 100, 0, 20, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 'Mennu Stoneskin Totem - Stop Movement/Melee'), 

(1817901, 18179, 1, 0, 100, 5000, 100, 0, 11, 30687, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mennu Fire Nova Totem - Casts Explode and Self Kill'), 

(1817902, 18179, 10, 0, 100, 0, 0, 100, 11, 30687, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mennu Fire Nova Totem - Cast Explode when being hit and Self Kill'), 

(1817903, 18179, 1, 0, 100, 0, 100, 0, 20, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 'Mennu Fire Nova Totem - Stop Movement/Melee'), 

(1817904, 18179, 3, 0, 100, 0, 100, 0, 20, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 'Mennu Fire Nova Totem - Stop Movement/Melee (ooc)'), 

(2020801, 20208, 0, 0, 100, 6000, 0, 0, 11, 34977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mennu Healing Ward - Heal Spell'), 



-- Dark Conclave Arrokoa

(1982501, 19825, 0, 0, 100, 12000, 8000, 2000, 11, 39229, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Conclave Talonite - Cast Talon of Justice'), 

(1982502, 19825, 0, 0, 100, 10000, 11000, 4000, 11, 39230, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Conclave Harbringer - Cold Touch'), 

(1982601, 19826, 0, 2, 100, 4000, 1000, 1000, 11, 38386, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Conclave Shadowmance - Cast Shadow Bolt'), 

(1982602, 19826, 0, 2, 100, 12000, 16000, 8000, 11, 27641, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Conclave Shadowmance - Cast Fear'), 

(1982603, 19826, 4, 0, 100, 0, 40, 8000, 11, 17613, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 'Dark Conclave Harbringer - Cast Dark Mending'), 

(1982604, 19826, 0, 1, 100, 5000, 5000, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Conclave Harbringer - Set Phase Back to Dmg Phase'), 

(1982701, 19827, 0, 0, 100, 8000, 6000, 6000, 11, 23600, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Conclave Ravenguard - Cast Piercing Howl'), 

(1982702, 19827, 4, 0, 100, 20, 0, 0, 11, 37648, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Conclave Ravenguard - Enrage'), 

(2138401, 21384, 0, 0, 100, 6000, 6000, 6000, 11, 15496, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Conclave Harbringer - Cast Cleave'), 

(2138402, 21384, 4, 0, 100, 50, 0, 8000, 11, 17613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Conclave Harbringer - Cast Dark Mending'), 

(2138501, 21385, 0, 0, 100, 6000, 1000, 1000, 11, 31622, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Conclave Scornclaw - Cast Frostbolt'), 

(2138502, 21385, 0, 0, 100, 14000, 10000, 2000, 11, 15531, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Conclave Scornclaw - Cast Frost Nova'), 

(2138601, 21386, 0, 0, 100, 8000, 10000, 6000, 11, 37974, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Conclave Hawkeye - Cast Enraging Strike'), 



-- Akumai Snapjaw

(482501, 4825, 0, 0, 75, 36000, 8000, 0, 11, 3446, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Akumai Snapjaw - Casts Ravage'), 



-- Oasis Snapjaw

(346101, 3461, 0, 0, 50, 30000, 6000, 0, 11, 6530, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Oasis Snapjaw - Casts Sling Dirt'), 



-- Sparkleshell Borer

(414401, 4144, 6, 0, 100, 100, 0, 0, 11, 7273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sparkleshell Borer - Casts Lightning Hide'), 

(414402, 4144, 0, 0, 100, 26000, 5000, 4000, 11, 6016, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sparkleshell Borer - Pierce Armor'), 



-- Sparkleshell Snapper

(414301, 4143, 6, 0, 100, 100, 0, 0, 11, 7273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sparkleshell Snapper - Casts Lightning Hide'), 

(414302, 4143, 0, 0, 60, 15000, 5000, 0, 11, 6730, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sparkleshell Snapper - Casts Head Butt'), 



-- Sparkleshell Tortoise

(414201, 4142, 6, 0, 100, 100, 0, 0, 11, 7273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sparkleshell Tortoise - Casts Lightning Hide'), 



-- Stolid Snapjaw

(1359901, 13599, 6, 0, 100, 100, 0, 0, 11, 14104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sparkleshell Tortoise - Casts Spikes'), 



-- Berserk Trogg

(139301, 1393, 4, 0, 100, 20, 0, 0, 11, 3019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Berserk Trogg - Casts Enrage'), 



--  Dark Keepers

(943701, 9437, 0, 0, 100, 60000, 1000, 3000, 11, 15306, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Keeper Vorfalk - Cast Shock'), 

(943702, 9437, 0, 0, 100, 3000, 3000, 0, 11, 22414, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Keeper Vorfalk - Cast Lighning Bolt'), 

(943801, 9438, 0, 0, 100, 15000, 1000, 5000, 11, 12738, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Keeper Bethek - Cast Amplify Damage'), 

(943802, 9438, 0, 0, 100, 3000, 3000, 0, 11, 15228, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Keeper Bethek - Cast Fireball'), 

(943901, 9439, 0, 0, 100, 30000, 1000, 5000, 11, 14875, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Keeper Uggel - Cast Curse of Agony'), 

(943902, 9439, 0, 0, 100, 3000, 3000, 0, 11, 15472, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Keeper Uggel - Cast Shadow Bolt'), 

(944101, 9441, 0, 0, 100, 12000, 1000, 5000, 11, 17139, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Keeper Zimrel - Cast Power Word Shield'), 

(944102, 9441, 0, 0, 100, 3000, 3000, 0, 11, 15238, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Keeper Zimrel - Cast Holy Smite'), 

(944201, 9442, 0, 0, 100, 15000, 1000, 5000, 11, 7121, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Keeper Ofgut - Cast Antimagic Shield'), 

(944202, 9442, 0, 0, 100, 3000, 3000, 0, 11, 15451, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Keeper Ofgut - Cast Arcane Bolt'), 

(944301, 9443, 1, 0, 100, 1000, 100, 0, 11, 12544, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Keeper Pelver - Cast Frost Armor'), 

(944302, 9443, 0, 0, 100, 3000, 3000, 0, 11, 15530, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Keeper Pelver - Cast Frostbolt'), 



-- Darkcrest Naga Tribe

(1808601, 18086, 0, 0, 100, 4000, 4000, 3000, 11, 34811, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Taskmaster - Cast Tail Lash'), 

(1808602, 18086, 0, 0, 100, 8000, 6000, 5000, 11, 34812, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Taskmaster - Cast Curse of Nazjatar'), 

(1808701, 18087, 0, 0, 100, 3000, 1000, 3000, 11, 10181, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Siren - Cast Frost Bolt'), 

(1808702, 18087, 0, 0, 100, 14000, 10000, 4000, 11, 15532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Siren - Cast Frost Nova'), 

(1808703, 18087, 0, 0, 100, 12000, 8000, 5000, 11, 6726, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Siren - Cast Silence'), 

(1994601, 19946, 0, 0, 100, 9000, 8000, 3000, 11, 25852, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Slaver - Cast Lash'), 

(1994602, 19946, 0, 0, 100, 30000, 6000, 5000, 11, 23511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Slaver - Cast Demoralizing Shout'), 

(1994701, 19947, 0, 0, 100, 3000, 1000, 3000, 11, 15254, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Sorceress - Cast Arcane Bolt'), 

(1994702, 19947, 0, 0, 100, 20000, 10000, 5000, 11, 34787, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Sorceress - Cast Freezing Circle'), 

(1994703, 19947, 3, 0, 100, 1000, 100, 0, 11, 12544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Sorceress - Cast Frost Armor'), 



-- Dark Iron Dwarves

(944501, 9445, 0, 0, 100, 5000, 5000, 1000, 11, 19644, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Guard - Cast Strike'), 

(621201, 6212, 2, 0, 100, 60000, 1000, 0, 11, 11802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Agent - Summon a Bomb'), 

(622801, 6228, 1, 0, 100, 5000, 100, 0, 11, 10870, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Ambassador - Summon Burning Servant'), 

(622802, 6228, 0, 0, 100, 3000, 2000, 0, 11, 14034, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Ambasadror - Cast Fireball'), 

(622803, 6228, 0, 0, 100, 60000, 1000, 5000, 11, 134, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Ambasadror - Cast Fire Shield'), 

(406201, 4062, 0, 0, 100, 2000, 1000, 23000, 11, 8858, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Bombardier - Cast Bomb'), 

(406202, 4062, 1, 0, 100, 1000, 100, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Bombardier - Ranged Mob'), 

(105401, 1054, 1, 0, 100, 1000, 100, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Demolitionist - Ranged Mob'), 

(105402, 1054, 0, 0, 100, 2000, 1500, 100, 11, 8858, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Demolitionist - Cast Bomb'), 

(105403, 1054, 0, 0, 100, 8000, 2500, 2000, 11, 7891, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Demolitionist - Cast Gift of Ragnaros'), 

(105101, 1051, 0, 0, 100, 8000, 2500, 2000, 11, 7891, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Dwarf - Cast Gift of Ragnaros'), 

(583901, 5839, 0, 0, 100, 5000, 1000, 0, 11, 8858, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Geologist - Cast Bomb'), 

(583902, 5839, 1, 0, 100, 500, 100, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Geologist - Ranged Mob'), 

(583903, 5839, 0, 0, 100, 3000, 3000, 0, 11, 13375, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Geologist - Cast Fireball'), 

(116901, 1169, 0, 0, 100, 30000, 5000, 0, 11, 7020, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Insurgent - Cast Stoneform'), 

(856601, 8566, 0, 0, 100, 1500, 1500, 0, 11, 15620, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Lookout - Cast Shoot'), 

(856602, 8566, 1, 0, 100, 1000, 100, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Lookout - Ranged Mob'), 

(652301, 6523, 1, 0, 100, 1000, 100, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Rifleman - Ranged Mob'), 

(652302, 6523, 0, 0, 100, 8000, 2500, 2000, 11, 7891, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Rifleman - Cast Gift of Ragnaros'), 

(652303, 6523, 0, 0, 100, 1500, 1500, 0, 11, 6660, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Rifleman - Cast Shoot'), 

(105201, 1052, 0, 0, 100, 8000, 2500, 2000, 11, 7891, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Saboteur - Cast Gift of Ragnaros'), 

(105202, 1052, 1, 0, 100, 12000, 100, 0, 11, 3204, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Saboteur - Cast Sapper Charge'), 

(122201, 1222, 1, 0, 100, 12000, 100, 0, 11, 3204, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Saboteur - Cast Sapper Charge'), 

(257701, 2577, 0, 0, 100, 18000, 1000, 7000, 11, 9034, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Shadowcaster - Cast Immolate'), 

(257702, 2577, 0, 0, 100, 3000, 3000, 0, 11, 9613, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Shadowcaster - Cast Shadow Bolt'), 

(584401, 5844, 0, 0, 100, 8000, 3000, 6000, 11, 6533, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Slaver - Cast Net'), 

(584402, 5844, 0, 0, 100, 15000, 6000, 5000, 11, 13738, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Slaver - Cast Rend'), 

(584001, 5840, 0, 0, 100, 12000, 7000, 3000, 11, 11983, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Steamsmith - Cast Steam Jet'), 

(257501, 2575, 0, 0, 100, 30000, 5000, 6000, 11, 16401, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Suppier - Cast Poison'), 

(257502, 2575, 4, 0, 100, 40, 0, 10000, 11, 4961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Suppier - Cast Resupply'), 

(584601, 5846, 0, 0, 100, 10000, 10000, 5000, 11, 5115, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Taskmaster - Cast Battle Command'), 

(584602, 5846, 8, 0, 100, 100, 0, 0, 11, 12613, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Taskmaser - Cast On Death'), 

(105301, 1053, 6, 0, 100, 100, 0, 0, 11, 7164, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Tunneler - Cast Defensive Stance'), 

(105302, 1053, 0, 0, 100, 8000, 2500, 2000, 11, 7891, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Tunneler - Cast Gift of Ragnaros'), 

(105303, 1053, 0, 0, 100, 10000, 6000, 5000, 11, 11971, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Tunneler - Cast Sunder Armor'), 

(863701, 8637, 0, 0, 100, 5000, 5000, 1000, 11, 19644, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Watchman - Cast Strike'), 



-- Dalin Forgewright/Darbel Montrose/Darkhan Drathnir

(568201, 5682, 4, 0, 100, 80, 0, 20000, 11, 11640, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalin Forgewright - Cast Renew'), 

(568202, 5682, 4, 0, 100, 30, 0, 10000, 11, 11642, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalin Forgewright - Cast Heal'), 

(568203, 5682, 3, 0, 100, 1000, 100, 0, 11, 1244, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalin Forgewright - Cast Power Word Fortitude (Player Spell - Best Match'), 

(259801, 2598, 3, 0, 100, 1000, 100, 0, 11, 8722, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Darbel Montrose - Summon Succubus'), 

(259802, 2598, 0, 0, 100, 2000, 5000, 1000, 11, 17434, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darbel Montrose - Cast Shadow Bolt'), 

(259803, 2598, 1, 0, 100, 1000, 100, 0, 11, 11980, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Darbel Montrose - Cast Corruption'), 

(259804, 2598, 0, 0, 100, 20000, 12000, 5000, 11, 8994, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Darbel Montrose - Cast Banish'), 

(1632901, 16329, 0, 0, 100, 23000, 1000, 3000, 11, 31405, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkhan Drathnir - Cast Corruption'), 

(1632902, 16329, 0, 0, 100, 4000, 4000, 2000, 11, 22336, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkhan Drathnir - Shadow Bolt'), 

(1632903, 16329, 0, 0, 100, 12000, 12000, 4000, 11, 34259, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkhan Drathnir - Cast Fear'), 

(1632904, 16329, 8, 0, 100, 100, 0, 0, 2, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkhan Drathnir - Yell on Creature Death'), 



-- Grulloc Son of Gruul

(2021601, 20216, 0, 0, 100, 20000, 20000, 0, 11, 36300, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Grulloc - Cast Growth'), 

(2021602, 20216, 0, 0, 100, 21000, 21000, 0, 11, 29837, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Grulloc - Cast Fist of Stone'), 



-- Durn the Hungerer

(1841101, 18411, 0, 0, 100, 15000, 2000, 5000, 13, -75, 1, 0, 11, 31994, 4, 0, 0, 0, 0, 0, 'Durn the Hungerer - Cast Shoulder Charge and Reduce Aggro'), 

(1841102, 18411, 0, 0, 100, 30000, 30000, 20000, 11, 34771, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Durn the Hungerer - Cast Force Punch'), 

(1841103, 18411, 0, 0, 100, 9000, 9000, 6000, 11, 40457, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Durn the Hungerer - Cast Arcing Smash'), 



-- Lord Cobrahn

('366901', '3669', '6', '0', '100', '100', '0', '0', '2', '99', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lord Cobrahn - Aggro Yell'),

('366902', '3669', '0', '2', '100', '4000', '3000', '4000', '11', '548', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lord Cobrahn - Casts Lightning Bolt'),

('366903', '3669', '0', '2', '100', '12000', '2000', '8000', '11', '17330', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lord Cobrahn - Casts Poison'),

('366904', '3669', '4', '0', '100', '30', '1', '0', '11', '7965', '0', '1', '22', '1', '0', '0', '0', '0', '0', '0', 'Lord Cobrahn - Phase 1 Casts Cobrahn Serpent Form'),

('366905', '3669', '0', '2', '100', '13000', '10000', '7000', '11', '8040', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lord Cobrahn - Druids Slumber'),



-- Dark Strand Mobs

(372801, 3728, 3, 0, 100, 1000, 100, 0, 11, 12746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Strand Adept - Summon Voidwalker'), 

(372802, 3728, 0, 0, 100, 3000, 1000, 1000, 11, 705, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Strand Adept - Cast Shadow Bolt'), 

(372501, 3725, 0, 0, 100, 3000, 4000, 1000, 11, 705, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Strand Cultist - Cast Shadow Bolt'), 

(372502, 3725, 3, 0, 100, 1000, 100, 0, 11, 11939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Strand Cultist - Summon Imp'), 

(372503, 3725, 0, 0, 100, 15000, 1000, 5000, 11, 6222, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Strand Cultist - Cast Corruption'), 

(233601, 2336, 0, 0, 100, 180000, 5000, 5000, 11, 7098, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Strand Fanatic - Cast Curse of Mending'), 

(372701, 3727, 4, 0, 100, 20, 0, 0, 11, 3019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Strand Enforcer - Cast Enrage'), 

(233701, 2337, 3, 0, 100, 1000, 100, 0, 11, 12746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Strand Voidcaller - Summon Voidwalker'), 

(233702, 2337, 0, 0, 100, 3000, 1000, 1000, 11, 9613, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Strand Voidcaller - Cast Shadow Bolt'), 



-- Mad Magglish

(365501, 3655, 3, 0, 100, 1000, 100, 0, 11, 22766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mad Magglish - Cast Sneak'), 

(365502, 3655, 0, 0, 100, 9000, 0, 0, 11, 8817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mad Magglish - Casts Smoke Bomb'), 



-- Warbringer Omrogg

(1680901, 16809, 1, 0, 100, 0, 100, 0, 7, 100, 101, 102, 9, 10308, 10309, 10306, 0, 0, 0, 0, 'Warbringer Omrogg - Aggro Yell and Sound Phase 1'), 

(1680902, 16809, 1, 0, 100, 3000, 100, 0, 7, 103, 104, 105, 9, 10318, 10319, 10317, 0, 0, 0, 0, 'Warbringer Omrogg - Aggro Yell and Sound Phase 2'), 

(1680903, 16809, 7, 0, 100, 0, 100, 0, 7, 106, 107, 108, 9, 10310, 10320, 10321, 0, 0, 0, 0, 'Warbringer Omrogg - Player Death Yell and Sound'), 

(1680904, 16809, 8, 0, 100, 100, 0, 0, 7, 109, 110, 110, 9, 10311, 10322, 10322, 0, 0, 0, 0, 'Warbringer Omrogg - Creature Death Yell and Sound '), 

(1680905, 16809, 0, 0, 100, 25000, 16000, 0, 7, 111, 112, 114, 9, 10300, 10303, 10314, 0, 0, 0, 0, 'Warbringer Omrogg – Random Threat Yells'), 

(1680906, 16809, 0, 0, 100, 25000, 25000, 0, 7, 115, 116, 113, 9, 10301, 10304, 10313, 0, 0, 0, 0, 'Warbringer Omrogg – Random Threat Yells'), 

(1680907, 16809, 0, 2, 100, 17500, 17500, 2500, 11, 30633, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Warbringer Omrogg - Cast thunderclap'), 

(1680908, 16809, 0, 2, 100, 35000, 35000, 5000, 11, 33789, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Warbringer Omrogg - Cast fear'), 

(1680909, 16809, 0, 0, 100, 25000, 25000, 0, 14, -100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Warbringer Omrogg – Drop threat'), 

(1680910, 16809, 0, 0, 100, 45000, 45000, 0, 11, 5262, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 'Warbringer Omrogg - Cast burning blades correct id unknown'), 

(1680911, 16809, 0, 0, 100, 53000, 30000, 0, 11, 30600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Warbringer Omrogg - Cast 1. blast wave'), 

(1680912, 16809, 0, 0, 100, 54000, 54000, 0, 11, 30600, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 'Warbringer Omrogg - Cast 2. blast wave'), 



-- Azgalor

(1784201, 17842, 1, 0, 100, 600000, 100, 0, 11, 33653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azgalor - Enrage after 10 minutes'), 

(1784202, 17842, 8, 0, 100, 100, 0, 0, 2, 121, 0, 0, 4, 11002, 0, 0, 0, 0, 0, 0, 'Azgalor - Yell on Creature Death'), 

(1784203, 17842, 7, 0, 100, 5000, 100, 0, 7, 118, 120, 122, 9, 11002, 11048, 11047, 0, 0, 0, 0, 'Azgalor - Yell on Player Kill'), 

(1784204, 17842, 0, 0, 100, 15000, 5000, 0, 11, 31345, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azgalor - Cast Cleave'), 

(1784205, 17842, 0, 0, 100, 17000, 10000, 0, 11, 31340, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azgalor - Cast Rain of Fire'), 

(1784206, 17842, 0, 0, 100, 50000, 50000, 0, 11, 31347, 4, 0, 2, 119, 0, 0, 4, 11046, 0, 0, 'Azgalor - Cast Doom w/ Doom'), 

(1784207, 17842, 0, 0, 100, 21000, 21000, 0, 11, 31344, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azgalor - Cast Silence'), 

(1784208, 17842, 6, 0, 100, 100, 0, 0, 2, 117, 0, 0, 4, 10999, 0, 0, 0, 0, 0, 0, 'Azgalor - Yell after 8th wave'), 



-- Lord Serpentis

(367301, 3673, 6, 0, 100, 100, 0, 0, 2, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Serpentis - Aggro Yell'), 

(367302, 3673, 0, 0, 100, 3000, 1000, 2000, 11, 548, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Serpentis - Casts Lightning Bolt'), 

(367303, 3673, 0, 0, 100, 10000, 0, 5000, 11, 700, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Serpentis - Casts Sleep'), 



-- Verdan the Everliving

(577501, 5775, 0, 0, 100, 10000, 0, 3000, 11, 8142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdan the Everliving - Casts Grasping Vines'), 



-- Deaths Head Quilboar

(442801, 4428, 0, 0, 100, 5000, 1000, 2000, 11, 16410, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Speaker Jargba - Cast Shadow Bolt'), 

(442802, 4428, 0, 0, 100, 10000, 10000, 5000, 11, 14515, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Speaker Jargba - Cast Dominate Mind'), 

(451501, 4515, 0, 0, 100, 5000, 1000, 5000, 11, 11981, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Acolyte - Cast Mana Burn'), 

(451502, 4515, 4, 0, 100, 70, 0, 20000, 11, 25058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Acolyte - Cast Renew'), 

(451601, 4516, 0, 0, 100, 10000, 1000, 5000, 11, 113, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Adept - Cast Chains of Ice'), 

(451602, 4516, 0, 0, 100, 3000, 3000, 3000, 11, 15043, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Adept - Cast Frostbolt'), 

(787201, 7872, 0, 0, 100, 14000, 8000, 3000, 11, 11433, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Cultist - Cast Death and Decay'), 

(787202, 7872, 0, 0, 100, 3000, 1000, 4000, 11, 16783, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Cultist - Cast Shadowbolt'), 

(733501, 7335, 0, 0, 60, 4000, 1000, 0, 11, 14034, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Geomancer - Cast Fireball'), 

(733502, 7335, 0, 0, 70, 8000, 5000, 0, 11, 8814, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Geomancer - Cast Flame Spike'), 

(733503, 7335, 0, 0, 100, 6000, 4000, 4000, 11, 13737, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Geomancer - Cast Slow'), 

(733701, 7337, 0, 0, 100, 3000, 1000, 4000, 11, 15537, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Necromancer - Cast Shadow Bolt'), 

(733702, 7337, 0, 0, 100, 8000, 6000, 7000, 11, 11443, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Necromancer - Cast Cripple'), 

(733703, 7337, 3, 0, 100, 1000, 100, 0, 11, 12420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Necromancer - Summon Skeletal Servant'), 

(733704, 7337, 2, 0, 100, 40000, 3000, 0, 11, 11445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Necromancer - Cast Bone Armor (Out of Combat)'), 

(733705, 7337, 0, 0, 100, 12000, 10000, 5000, 11, 11445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Necromancer - Cast Bone Armor (In Combat)'), 

(451701, 4517, 3, 0, 100, 1000, 100, 0, 11, 1245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Priest - Cast Power Word Fortitude'), 

(451702, 4517, 0, 0, 100, 3000, 1000, 4000, 11, 15537, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Priest - Cast Shadow Bolt'), 

(451703, 4517, 4, 0, 100, 0, 40, 10000, 11, 12039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Priest - Cast Heal'), 

(451801, 4518, 0, 0, 100, 30000, 4000, 0, 11, 8262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Sage - Summon Elemental Protection Totem'), 

(451802, 4518, 0, 0, 100, 30000, 6000, 0, 11, 6274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Sage - Summon Healing Ward'), 

(451901, 4519, 0, 0, 100, 30000, 5000, 0, 11, 6274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Seer - Summon Healing Ward'), 

(451902, 4519, 0, 0, 100, 20000, 3000, 5000, 11, 8264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deaths Head Seer - Summon Lava Spout Totem'), 



-- Void Spawner and Collapsing Voidwalker

(2014301, 20143, 2, 0, 100, 15000, 3000, 8000, 11, 34943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Void Spawner - Summon Unstable Voidwalker'), 

(1701401, 17014, 4, 0, 100, 10, 0, 0, 11, 34233, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Collapsing Voidwalker - Start to Collapse at 10% HP'), 

(1701402, 17014, 8, 0, 100, 100, 0, 0, 11, 34234, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Collapsing Voidwalker - Cast Collapse at Death'), 

(1701403, 17014, 0, 0, 100, 10000, 5000, 5000, 11, 39415, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Collapsing Voidwalker - Cast Fear'), 



-- Rage Winterchill

('1776701','17767','8','0','100','100','0','0','2','132','0','0','4','11026','0','0','0','0','0','0','Rage Winterchill - Yell on Death'),

('1776702','17767','7','0','100','5000','100','0','7','130','131','-1','9','11025','11057','-1','0','0','0','0','Rage Winterchill - Yell on Kill'),

('1776703','17767','0','0','100','40000','37000','20000','11','31256','0','0','0','0','0','0','0','0','0','0','Rage Winterchill - Cast Frost Armor'),

('1776704','17767','0','0','100','60000','45000','20000','11','39658','1','0','7','128','129','-1','9','11023','11055','-1','Rage Winterchill - Cast Death and Decay with Yells'),

('1776705','17767','0','0','100','30000','15000','15000','11','31250','1','0','7','126','127','-1','9','11024','11058','-1','Rage Winterchill - Cast Frost Nova with Yells'),

('1776706','17767','0','0','100','11000','10000','20000','11','31249','4','0','0','0','0','0','0','0','0','0','Rage Winterchill - Cast Icebolt'),

('1776707','17767','6','0','100','100','0','0','2','125','0','0','4','11022','0','0','0','0','0','0','Rage Winterchill - Speech on Aggro'),



-- Akil\'zon

(2357401, 23574, 0, 6, 100, 15000, 1000, 0, 11, 43661, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Akil\'zon - Cast Call Lightning'), 

(2357402, 23574, 7, 0, 100, 2000, 100, 0, 7, 136, 137, -1, 9, 12018, 12017, -1, 0, 0, 0, 0, 'Akil\'zon - Player Kill Yells'), 

(2357403, 23574, 1, 3, 100, 100, 100, 0, 2, 139, 0, 0, 4, 12015, 0, 0, 0, 0, 0, 0, 'Akil\'zon - Phase 3 Yell'), 

(2357404, 23574, 1, 6, 100, 480000, 100, 0, 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Akil\'zon - Go To Phase 2'), 

(2357405, 23574, 0, 6, 100, 10000, 9000, 0, 11, 44008, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Akil\'zon - Cast Static Disruption'), 

(2357406, 23574, 0, 3, 100, 1900, 2000, 0, 12, 24858, 4, 0, 12, 24858, 4, 0, 12, 24858, 4, 0, 'Akil\'zon - Summon 3x Eagle in Phase 3'), 

(2357407, 23574, 0, 6, 100, 62000, 62000, 0, 11, 43648, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Akil\'zon - Cast Electrical Storm'), 

(2357408, 23574, 0, 6, 100, 18000, 17000, 0, 11, 43621, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Akil\'zon - Cast Gust of Wind'), 

(2357409, 23574, 6, 0, 100, 100, 0, 0, 2, 133, 0, 0, 4, 12013, 0, 0, 0, 0, 0, 0, 'Akil\'zon - Aggro Yell'), 

(2357410, 23574, 0, 6, 100, 65000, 65000, 0, 23, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Akil\'zon - Switch to Phase 3'), 

(2357411, 23574, 0, 5, 100, 1000, 100, 0, 11, 26662, 0, 0, 2, 138, 0, 0, 4, 12016, 0, 0, 'Akil\'zon - Enrage in Phase 2 and Yell'), 

(2357412, 23574, 8, 0, 100, 100, 0, 0, 2, 134, 0, 0, 4, 12019, 0, 0, 0, 0, 0, 0, 'Akil\'zon - Creature Death Yell'), 

(2357413, 23574, 0, 3, 100, 1900, 2000, 0, 12, 24858, 4, 0, 12, 24858, 4, 0, 12, 24858, 4, 0, 'Akil\'zon - Summon 3x Eagle in Phase 3'), 

(2357414, 23574, 0, 3, 100, 2000, 2000, 0, 23, -2, 0, 0, 2, 135, 0, 0, 4, 12014, 0, 0, 'Akil\'zon - After Summoning in Phase 3 Switch Back to Phase 1 and Yell'), 

(2485801, 24858, 0, 6, 100, 5000, 5000, 0, 11, 44732, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 'Soaring Eagle - Cast Eagle Swoop and Stop Melee Attack'), 



-- Defias Rogue Wizard

(47401, 474, 6, 0, 100, 100, 0, 0, 11, 168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Rogue Wizard - Cast Frost Armor'), 

(47402, 474, 0, 0, 100, 5000, 1500, 0, 11, 13439, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Rogue Wizard - Cast FrostBolt'), 



-- Lord Pythas

(367001, 3670, 6, 0, 100, 100, 0, 0, 2, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Pythas - Aggro Yell'), 

(367002, 3670, 0, 0, 100, 3000, 3000, 1000, 11, 9532, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Pythas - Casts Lightning Bolt'), 

(367003, 3670, 0, 0, 100, 6000, 6000, 5000, 11, 15548, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Pythas - Casts Thunderclap'), 

(367004, 3670, 0, 0, 100, 10000, 10000, 5000, 11, 15970, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Pythas - Casts Sleep'), 



-- Angerclaw Bear

(895601, 8956, 4, 0, 100, 20, 0, 0, 11, 41447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Angerclaw Bear - Casts Enrage When Below 20% HP'), 



-- Angerclaw Grizzley

(895701, 8957, 4, 0, 100, 20, 0, 0, 11, 41447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Angerclaw Grizzley - Casts Enrage When Below 20% HP'), 

(895702, 8957, 0, 0, 75, 16000, 8000, 0, 11, 8716, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Angerclaw Grizzley - Casts Low Swipe'), 



-- Angerclaw Mauler

(895801, 8958, 4, 0, 100, 20, 0, 0, 11, 41447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Angerclaw Mauler - Casts Enrage When Below 20% HP'), 

(895802, 8958, 0, 0, 60, 21000, 12000, 0, 11, 27553, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Angerclaw Mauler - Casts Maul'), 



-- Den Mother

(678801, 6788, 0, 0, 60, 16000, 9000, 0, 11, 3242, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Angerclaw Mauler - Casts Ravage'), 



-- Diseased Black Bear

(181501, 1815, 0, 0, 60, 16000, 9000, 0, 11, 3427, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Diseased Black Bear - Casts Infected Wound'), 



-- Diseased Grizzly Bear

(181601, 1816, 0, 0, 60, 16000, 9000, 0, 11, 3427, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Diseased Black Bear - Casts Infected Wound'), 



-- Elder Brown Bear

(1734801, 17348, 0, 0, 60, 12000, 8000, 0, 11, 31279, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Elder Brown Bear - Casts Swipe'), 



-- Elder Shardtooth

(744501, 7445, 0, 0, 60, 12000, 8000, 0, 11, 15727, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Elder Shardtooth - Casts Demoralizing Roar'), 



-- Ferocious Rage Scar

(529901, 5299, 0, 0, 60, 45000, 15000, 0, 11, 21949, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ferocious Rage Scar - Casts Rend'), 



-- Grizzled Brown Bear

(1734701, 17347, 0, 0, 60, 12000, 8000, 0, 11, 31279, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Grizzled Brown Bear - Casts Swipe'), 



-- Ice Claw Bear

(119601, 1196, 0, 0, 60, 35000, 9000, 0, 11, 3130, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ice Claw Bear - Casts Ice Claw'), 



-- Ironfur Patriarch

(527401, 5274, 0, 0, 60, 12000, 8000, 0, 11, 10968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ironfur Patriarch - Casts Demoralizing Roar'), 



-- Rabid Shardtooth

(744601, 7446, 1, 0, 80, 8000, 80, 0, 11, 3150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rabid Shardtooth - Casts Rabies (Closest Spell Found)'), 

(744602, 7446, 0, 0, 75, 12000, 8000, 0, 11, 3391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rabid Shardtooth - Casts Thrash'), 



-- Rabid Thistle Bear

(216401, 2164, 1, 0, 80, 8000, 80, 0, 11, 3150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rabid Thistle Bear - Casts Rabies'), 



-- Shardtooth Bear

(744401, 7444, 0, 0, 75, 25000, 5000, 0, 11, 3604, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shardtooth Bear - Casts Tendon Rip (Closest Spell Found)'), 



-- Shardtooth Mauler

(744301, 7443, 0, 0, 60, 12000, 8000, 0, 11, 27553, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Elder Brown Bear - Casts Maul (Closest Spell Found)'), 



-- Thistle Bear

(216301, 2163, 0, 0, 60, 16000, 9000, 0, 11, 3242, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thistle Bear - Casts Ravage (Closest Spell Found)'), 



-- Thistle Cub

(678901, 6789, 0, 0, 60, 16000, 9000, 0, 11, 3242, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thistle Cub - Casts Ravage (Closest Spell Found)'), 



-- Baeldun Appraiser

(299001, 2990, 4, 0, 100, 50, 0, 12000, 11, 2052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bael\'dun Appraiser - Casts Lesser Heal When Below 50% HP'), 



-- Baeldun Excavator

(337401, 3374, 0, 0, 70, 13000, 9000, 0, 11, 27991, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bael\'dun Appraiser - Casts Sunder Armor (Closest Spell Found)'), 

(337402, 3374, 6, 0, 100, 100, 0, 0, 11, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bael\'dun Appraiser - Casts Defensive Stance (Closest Found - There may be a closer match)'), 



-- Baeldun Foreman

(337501, 3375, 0, 0, 100, 45000, 8000, 100, 11, 6257, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bael\'dun Foreman - Casts Torch Toss'), 



-- Baeldun Officer

(337801, 3378, 1, 0, 100, 1000, 100, 0, 11, 3391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bael\'dun Officer - Casts Thrash'), 

(337802, 3378, 0, 0, 85, 23000, 5000, 0, 11, 6264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bael\'dun Officer - Casts Nimble Reflexes'), 



-- Baeldun Rifleman

(337701, 3377, 1, 0, 100, 1000, 100, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bael\'dun Rifleman - Casts Shoot'), 

(337702, 3377, 0, 0, 100, 2000, 2000, 0, 11, 6660, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bael\'dun Rifleman - Casts Shoot'), 



-- Death Singer

(854201, 8542, 0, 0, 80, 24000, 12000, 0, 11, 17105, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Singer - Casts Banshee Curse'), 

(854202, 8542, 0, 0, 75, 20000, 16000, 0, 11, 6605, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Singer - Casts Terrifying Screech'), 



-- Hate Shrieker

(854101, 8541, 0, 0, 80, 24000, 12000, 0, 11, 17105, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hate Shrieker - Casts Banshee Curse'), 

(854102, 8541, 0, 0, 75, 13000, 8000, 0, 11, 3589, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hate Shrieker - Casts Deafening Screech'), 



-- Putrid Shrieker

(853501, 8535, 0, 0, 80, 24000, 12000, 0, 11, 8281, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Putrid Shrieker - Casts Sonic Burst'), 



-- Screeching Spirit

(2120001, 21200, 0, 0, 80, 14000, 9000, 0, 11, 16784, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Screeching Spirit - Casts Shadow Bolt'), 

(2120002, 21200, 0, 0, 75, 17000, 17000, 0, 11, 22678, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Screeching Spirit - Casts Fear'), 

(2120003, 21200, 0, 0, 70, 22000, 22000, 0, 11, 16588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Screeching Spirit - Casts Dark Mending'), 



-- Torn Screamer

(854001, 8540, 0, 0, 80, 24000, 12000, 0, 11, 17105, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Torn Screamer - Casts Banshee Curse'), 

(854002, 8540, 0, 0, 70, 15000, 15000, 0, 11, 16576, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Torn Screamer - Casts Piercing Screech'), 



-- Wailer

(1632101, 16321, 0, 0, 75, 24000, 12000, 0, 11, 7713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wailer - Casts Wailing Dead'), 



-- Wailing Ancestor

(153401, 1534, 0, 0, 75, 24000, 12000, 0, 11, 7713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wailing Ancestor - Casts Wailing Dead'), 



-- Wailing Death

(180401, 1804, 0, 0, 75, 24000, 12000, 0, 11, 7713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wailing Death - Casts Wailing Dead'), 

-- ('180402',  '1804',  '0',  '0', '60',  '14000',  '8000',  '0',  '11',  '17650',  '1',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'Wailing Death - Casts Altered Cauldron Toxin (Bug - Casts only on self'), 



-- Wailing Spectre

(1237701, 12377, 0, 0, 75, 24000, 12000, 0, 11, 7713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wailing Spectre - Casts Wailing Dead'), 

(1237702, 12377, 0, 0, 60, 15000, 18000, 0, 11, 32938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wailing Spectre - Casts Cry of the Dead'), 



-- Bash\'ir

(2339101, 23391, 0, 0, 90, 30000, 30000, 0, 11, 36908, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir - Casts Warp'), 

(2339102, 23391, 0, 0, 75, 18000, 33000, 0, 11, 41264, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir - Casts Energy Surge'), 

(2339103, 23391, 0, 0, 60, 12000, 7000, 0, 11, 41266, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir - Casts Energy Flare (Closest Match But Low Damage)'), 

(2339104, 23391, 0, 0, 75, 13000, 9000, 0, 11, 43433, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir - Casts Blind'), 



-- Bash\'ir Arcanist

(2224301, 22243, 0, 0, 75, 18000, 33000, 0, 11, 41264, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Arcanist - Casts Energy Surge'), 

(2224302, 22243, 0, 0, 60, 25000, 25000, 0, 11, 29955, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Arcanist - Casts Arcane Missiles'), 



-- Bash\'ir Controller

(2336801, 23368, 0, 0, 75, 36000, 36000, 0, 11, 34944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Controller - Casts Holy Nova'), 

(2336802, 23368, 4, 0, 100, 40, 0, 25000, 11, 32130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Controller - Casts Heal'), 

(2336803, 23368, 0, 0, 75, 60000, 42000, 0, 11, 10901, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Controller - Casts Power Word Shield'), 



-- Bash\'ir Flesh Fiend

(2324901, 23249, 0, 0, 100, 18000, 32000, 0, 11, 3391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Controller - Casts Thrash'), 

(2324902, 23249, 0, 0, 60, 25000, 25000, 0, 11, 29939, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Controller - Casts Infectious Poison'), 

(2324903, 23249, 4, 0, 100, 20, 0, 31000, 11, 29935, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Controller - Casts Gaping Maw at 20% Health'), 



-- Bash\'ir's Harbinger

(2339001, 23390, 6, 0, 100, 100, 0, 0, 11, 30798, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir\'s Harbinger - Casts Dual Wield on Aggro'), 

(2339002, 23390, 1, 0, 100, 1000, 100, 0, 11, 35570, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir\'s Harbinger - Casts Charge'), 

(2339003, 23390, 0, 0, 75, 25000, 25000, 0, 11, 23920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir\'s Harbinger - Casts Spell Reflection'), 

(2339004, 23390, 0, 0, 65, 36000, 36000, 0, 11, 40935, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir\'s Harbinger - Casts Dematerialize Armor'), 



-- Bash\'ir Inquisitor

(2341401, 23414, 6, 0, 100, 100, 0, 0, 11, 30798, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Inquisitor - Casts Dual Wield on Aggro'), 

(2341402, 23414, 1, 0, 100, 1000, 100, 0, 11, 35570, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Inquisitor - Casts Charge'), 

(2341403, 23414, 0, 0, 75, 25000, 25000, 0, 11, 23920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Inquisitor - Casts Spell Reflection'), 

(2341404, 23414, 0, 0, 65, 36000, 36000, 0, 11, 40935, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Inquisitor - Casts Dematerialize Armor'), 



-- Bash\'ir Raider

(2224101, 22241, 0, 0, 60, 12000, 7000, 0, 11, 41266, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Raider - Casts Energy Flare (Closest Match But Low Damage)'), 

(2224102, 22241, 0, 0, 90, 30000, 30000, 0, 11, 36908, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Raider - Casts Warp'), 



-- Bash\'ir Reckoner

(2333201, 23332, 6, 0, 100, 100, 0, 0, 11, 30798, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Reckoner - Casts Dual Wield on Aggro'), 

(2333202, 23332, 0, 0, 90, 30000, 30000, 0, 11, 36908, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Reckoner - Casts Warp'), 

(2333203, 23332, 1, 0, 100, 1000, 100, 0, 11, 35570, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Reckoner - Casts Charge'), 

(2333204, 23332, 0, 0, 65, 36000, 36000, 0, 11, 40935, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Reckoner - Casts Dematerialize Armor'), 



-- Bash\'ir Spell-Thief

(2224201, 22242, 0, 0, 75, 25000, 25000, 0, 11, 29881, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Spell-Thief - Casts Drain Mana (Closest Match)'), 

(2224202, 22242, 6, 0, 100, 100, 0, 0, 11, 40330, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Spell-Thief - Casts Damage Reduction on Aggro'), 



-- Bash\'ir Subprimal

(2324701, 23247, 6, 0, 100, 100, 0, 0, 11, 14514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Subprimal - Casts Blink on Aggro'), 

(2324702, 23247, 0, 0, 75, 40000, 20000, 0, 11, 31618, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Subprimal - Casts Shadow Bolt'), 



-- Bash\'ir Surveyor

(2315301, 23153, 0, 0, 60, 90000, 60000, 0, 11, 40307, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Surveyor - Casts Stasis Field'), 

(2315302, 23153, 0, 0, 75, 36000, 25000, 0, 11, 38344, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Surveyor - Casts Arcane Blast'), 

(2315303, 23153, 4, 0, 100, 40, 0, 38000, 11, 36843, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bash\'ir Surveyor - Casts Slow when below 40% Health'), 



-- Rest of Wailing Caverns

(504801, 5048, 0, 0, 100, 15000, 6000, 10000, 11, 16401, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deviate Adder - Cast Poison'), 

(363201, 3632, 1, 0, 100, 10000, 100, 0, 11, 17230, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deviate Creeper - Cast Infected Wound'), 

(363202, 3632, 3, 0, 100, 1000, 100, 0, 11, 30831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deviate Creeper - Cast Stealth'), 

(505301, 5053, 0, 0, 100, 10000, 6000, 2000, 11, 3604, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deviate Crocolisk - Cast Tendon Rip'), 

(505601, 5056, 0, 0, 100, 20000, 15000, 5000, 11, 7379, 1, 0, 13, -50, 1, 0, 0, 0, 0, 0, 'Deviate Dreadfang - Cast Terrify and Mod Threat'), 

(505501, 5055, 0, 0, 100, 8000, 6000, 4000, 11, 7342, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deviate Lasher - Cast Wide Slash'), 

(363601, 3636, 3, 0, 100, 1000, 100, 0, 11, 3391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deviate Stalker - Cast Thrash'), 

(576101, 5761, 4, 0, 100, 70, 0, 21000, 11, 7948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deviate Shambler - Cast Wild Regeneration'), 

(363301, 3633, 4, 0, 100, 40, 0, 10000, 11, 7938, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deviate Slayer - Cast Fatal Bite'), 

(363101, 3631, 0, 0, 100, 17000, 6000, 3000, 11, 6607, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deviate Stinglash - Cast Lash'), 

(575601, 5756, 0, 0, 100, 8000, 10000, 2049, 11, 7951, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deviate Venomwing - Cast Toxic Spit'), 

(575501, 5755, 0, 0, 100, 10000, 6000, 5000, 11, 7949, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deviate Viper - Cast Localized Toxin'), 

('384001', '3840', '0', '6', '100', '3000', '1000', '4000', '11', '9532', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Druid of the Fang - Cast Lightning Bolt'),

('384002', '3840', '0', '6', '100', '10000', '8000', '10000', '11', '8040', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Druid of the Fang - Cast Druid Slumber'),

('384003', '3840', '0', '6', '100', '15000', '15000', '5000', '11', '8041', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Druid of the Fang - Cast Snake Form (Set Phase to 1'),

('384004', '3840', '0', '5', '100', '10000', '10000', '-100', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Druid of the Fang - Set Phase to 0 When Snake Form Ends'),

('384005', '3840', '4', '2', '100','40', '0', '3000', '11', '11431', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'Druid of the Fang - Cast Healing Touch and Set Phase to 2'),

('384006', '3840', '0', '3', '100', '9000', '9000', '-100', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Druid of the Fang - Set Phase Back to 0 After Healing'),

(367401, 3674, 0, 0, 100, 4000, 1000, 2000, 11, 15549, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skum - Cast Chained Bolt'), 

(367201, 3672, 0, 0, 100, 3000, 1000, 2000, 11, 9532, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boahn - Cast Lightning Bolt'), 



-- Ambereye Basilisk

(1178501, 11785, 0, 0, 70, 16000, 6000, 0, 11, 11020, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ambereye Basilisk - Casts Petrify'), 



-- Ambereye Reaver

(1178601, 11786, 0, 0, 70, 16000, 6000, 0, 11, 11020, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ambereye Reaver - Casts Petrify'), 

(1178602, 11786, 0, 0, 75, 8000, 8000, 0, 11, 15284, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ambereye Reaver - Casts Cleave'), 



-- Blackened Basilisk

(404401, 4044, 0, 0, 75, 30000, 8000, 0, 11, 3636, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blackened Basilisk - Casts Crystalline Slumber'), 



-- Cold Eye Basilisk

(69001, 690, 0, 0, 75, 30000, 8000, 0, 11, 3636, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cold Eye Basilisk - Casts Crystalline Slumber'), 



-- Craghide Basilisk

(2060701, 20607, 0, 0, 75, 12000, 5000, 0, 11, 3635, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Craghide Basilisk - Casts Crystal Gaze (Closest Match That Works)'), 



-- Crystal Spine Basilisk

(68901, 689, 0, 0, 75, 16000, 5000, 0, 11, 3635, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crystal Spine Basilisk - Casts Crystal Gaze'), 



-- Dampscale Basilisk

(1846101, 18461, 0, 0, 75, 16000, 6000, 0, 11, 32905, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dampscale Basilisk - Casts Glare'), 



-- Dampscale Devourer

(1846301, 18463, 0, 0, 85, 6000, 6000, 0, 11, 18463, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dampscale Devourer - Casts Chomp'), 



-- Glasshide Basilisk

(541901, 5419, 0, 0, 85, 16000, 8000, 0, 11, 5106, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glasshide Basilisk - Casts Crystal Flash'), 



-- Glasshide Gazer

(542001, 5420, 0, 0, 75, 16000, 9000, 0, 11, 3635, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glasshide Basilisk - Casts Crystal Gaze'), 



-- Glasshide Petrifier

(542101, 5421, 0, 0, 70, 15000, 6000, 0, 11, 11020, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glasshide Petrifier - Casts Petrify'), 



-- Grishnath Basilisk

(2092401, 20924, 4, 0, 100, 70, 41, 0, 11, 37590, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glasshide Petrifier - Casts Soften at 70% HP'), 

(2092402, 20924, 4, 0, 100, 40, 11, 0, 11, 37590, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glasshide Petrifier - Casts Soften at 40% HP'), 

(2092403, 20924, 4, 0, 100, 10, 0, 0, 11, 37590, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glasshide Petrifier - Casts Soften at 10% HP'), 



-- Gritjaw Basilisk

(472801, 4728, 0, 0, 75, 30000, 8000, 0, 11, 3636, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gritjaw Basilisk - Casts Crystalline Slumber'), 



-- Hulking Gritjaw Basilisk

(472901, 4729, 0, 0, 75, 30000, 8000, 0, 11, 3636, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulking Gritjaw Basilisk - Casts Crystalline Slumber'), 



-- Ironjaw Basilisk

(155101, 1551, 0, 0, 85, 30000, 8000, 0, 11, 5106, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ironjaw Basilisk - Casts Crystal Flash'), 



-- Ironspine Chomper

(2181601, 21816, 0, 0, 85, 6000, 6000, 0, 11, 18463, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ironspine Chomper - Casts Chomp'), 



-- Ironspine Gazer

(1973001, 19730, 0, 0, 75, 16000, 5000, 0, 11, 3635, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ironspine Gazer - Casts Crystal Gaze'), 



-- Ironspine Petrifier

(2185401, 21854, 0, 0, 75, 15000, 6000, 0, 11, 32905, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ironspine Petrifier - Casts Glare'), 



-- Battle-Mage Dathric

(1954301, 19543, 0, 0, 85, 12000, 5000, 0, 11, 19628, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - Casts Flames'), 

(1954302, 19543, 0, 0, 60, 30000, 20000, 0, 11, 20228, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - Casts Pyroblast'), 



-- Marshrock Threshalisk

(1970601, 19706, 6, 0, 100, 100, 0, 0, 11, 35385, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marshrock Threshalisk - Casts Threshalisk Charge on Aggro'), 



-- Ragestone Trampler

(2028001, 20280, 4, 0, 100, 20, 0, 0, 11, 12686, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ragestone Trampler - Casts Enrage at 20% HP'), 

(2028002, 20280, 0, 0, 75, 25000, 12000, 0, 11, 15550, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ragestone Trampler - Casts Trample (Closest Match)'), 



-- Ragestone Threshalisk

(2027901, 20279, 4, 0, 100, 20, 0, 0, 11, 12686, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ragestone Threshalisk - Casts Enrage at 20% HP'), 

(2027902, 20279, 6, 0, 100, 100, 0, 0, 11, 35385, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ragestone Threshalisk - Casts Threshalisk Charge on Aggro'), 



-- Redstone Basilisk

(599001, 5990, 0, 0, 75, 16000, 12000, 0, 11, 3635, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Redstone Basilisk - Casts Crystal Gaze'), 



-- Redstone Crystalhide

(599101, 5991, 0, 0, 85, 26000, 8000, 0, 11, 5106, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Redstone Crystalhide - Casts Crystal Flash'), 



-- Saltstone Basilisk

(414701, 4147, 0, 0, 75, 30000, 8000, 0, 11, 3636, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Saltstone Basilisk - Casts Crystalline Slumber'), 



-- Saltstone Crystalhide

(415101, 4151, 0, 0, 75, 18000, 8000, 0, 11, 17615, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Saltstone Crystalhide - Casts Mana Burn'), 



-- Saltstone Gazer

(415001, 4150, 0, 0, 75, 15000, 12000, 0, 11, 3635, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Redstone Basilisk - Casts Crystal Gaze'), 



-- Scalded Basilisk

(2092501, 20925, 0, 0, 85, 16000, 8000, 0, 11, 35236, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scalded Basilisk - Casts Heat Wave'), 



-- Scale Belly

(155201, 1552, 0, 0, 85, 26000, 15000, 0, 11, 5106, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scale Belly - Casts Crystal Flash'), 



-- Scorched Basilisk

(404101, 4041, 0, 0, 75, 30000, 8000, 0, 11, 3636, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scorched Basilisk - Casts Crystalline Slumber'), 



-- Singed Basilisk

(404201, 4042, 0, 0, 75, 30000, 8000, 0, 11, 3636, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Singed Basilisk - Casts Crystalline Slumber'), 



-- Stone Maw Basilisk

(68801, 688, 0, 0, 75, 15000, 12000, 0, 11, 3635, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stone Maw Basilisk - Casts Crystal Gaze'), 



-- Thrashtail Basilisk

(155001, 1550, 0, 0, 75, 18000, 5000, 0, 11, 6607, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thrashtail Basilisk - Casts Lash'), 



-- Amani'shi Reinforcement

(2358701, 23587, 0, 0, 75, 8000, 2000, 0, 11, 38598, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Reinforcement - Cast Strike'), 



-- Amani'shi Scout

(2358601, 23586, 6, 0, 100, 100, 0, 0, 2, 141, 0, 0, 4, 12104, 0, 0, 0, 0, 0, 0, 'Amani\'shi Scout - Aggro Yell'), 



-- Amani Dragonhawk

(2383401, 23834, 0, 0, 100, 27500, 9000, 0, 11, 43215, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani Dragonhawk - Cast Flame Breath'), 



-- Amani'shi Tribesman

(2358201, 23582, 4, 0, 100, 30, 0, 30000, 11, 42477, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Tribesman - Cast Chain Heal'), 

(2358202, 23582, 0, 0, 70, 13000, 100, 0, 11, 32849, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Tribesman - Cast Cyclone Strike'), 

(2358203, 23582, 0, 0, 100, 32000, 8000, 0, 11, 39065, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Tribesman - Cast Lightning Bolt'), 



-- Amani Crocolisk

(2404701, 24047, 0, 0, 100, 13000, 5000, 0, 11, 35333, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani Crocolisk - Cast Tail Swip'), 

(2404702, 24047, 0, 0, 100, 24000, 1000, 0, 11, 43353, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani Crocolisk - Cast Infected Bite'), 



-- Amani Elder Lynx

(2453001, 24530, 4, 0, 100, 33, 0, 90000, 11, 37023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani Elder Lynx - Cast Enrage'), 



-- Amani Lynx Cub

(2406401, 24064, 0, 0, 100, 35000, 5000, 0, 11, 43358, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani Lynx Cub - Cast Gut Rip'), 



-- Amani Lynx

(2404301, 24043, 0, 0, 100, 22000, 5000, 0, 11, 43357, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani Lynx - Cast Feral Swipe'), 



-- Amani'shi Flame Caster

(2359601, 23596, 0, 0, 100, 30000, 2000, 0, 11, 43242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Flame Caster - Cast Haste'), 

(2359602, 23596, 0, 0, 100, 18000, 0, 0, 11, 43240, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Flame Caster - Cast Fireball Volley'), 

(2359603, 23596, 0, 0, 100, 9700, 0, 0, 11, 43245, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Flame Caster - Cast Fire Blast'), 



-- Amani'shi Handler

(2406501, 24065, 0, 0, 100, 23200, 3000, 0, 11, 43364, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Handler - Cast Tranquilizing Poison'), 

(2406502, 24065, 0, 0, 100, 9000, 0, 0, 11, 43362, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Handler - Cast Electrified Net'), 



-- Amani'shi Warbringer

(2358001, 23580, 4, 0, 100, 19, 0, 0, 11, 43274, 0, 0, 17, 154, 0, 0, 19, 134217728, 0, 0, 'Amani\'shi Warbringer - Summon Bear + Dismount Warbringer'), 

(2358002, 23580, 0, 0, 100, 12000, 0, 0, 11, 40505, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Warbringer - Cast Cleave'), 

(2358003, 23580, 0, 0, 100, 20000, 5000, 0, 11, 42497, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Warbringer - Cast Furious Roar'), 



-- Amani Bear

(2358401, 23584, 0, 0, 100, 28000, 1000, 0, 11, 42745, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani Bear - Cast Frenzy'), 

(2358402, 23584, 0, 0, 100, 20000, 5000, 0, 11, 42747, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani Bear - Cast Crunch Armor'), 



-- Amani'shi Axe Thrower

(2354201, 23542, 0, 0, 100, 12000, 0, 0, 11, 31566, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Axe Thrower - Cast Raptor Strike'), 

(2354202, 23542, 0, 0, 100, 7400, 0, 0, 11, 5164, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Axe Thrower - Cast Knockdown'), 

(2354203, 23542, 0, 0, 100, 27000, 0, 0, 11, 42359, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Axe Thrower - Cast Axe Volley'), 

(2354204, 23542, 0, 0, 100, 18000, 0, 0, 11, 42332, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Axe Thrower - Cast Throw Axe'), 



-- Amani'shi Medicine Man

(2358101, 23581, 4, 0, 100, 30, 0, 30000, 11, 42477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Medicine Man - Cast Chain Heal'), 

(2358102, 23581, 4, 0, 100, 40, 0, 50000, 11, 42481, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Medicine Man - Cast Protective Ward'), 

(2358103, 23581, 0, 0, 100, 25000, 7000, 0, 11, 42376, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Medicine Man - Cast Powerful Healing Ward'), 

(2358104, 23581, 0, 0, 100, 16000, 1000, 0, 11, 39065, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Medicine Man - Cast Lightning Bolt'), 



-- Amani'shi Wind Walker

(2417901, 24179, 4, 0, 100, 30, 0, 30000, 11, 43527, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Wind Walker - Cast Chain Heal'), 

(2417902, 24179, 0, 0, 100, 9000, 0, 0, 11, 43524, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Wind Walker - Cast Frost Shock'), 

(2417903, 24179, 0, 0, 100, 17500, 5000, 0, 11, 43526, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Wind Walker - Cast Lightning Bolt'), 



-- Amani'shi Savage

(2388901, 23889, 0, 0, 100, 10000, 2000, 0, 11, 30989, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Savage - Cast Hamstring'), 



-- Amani'shi Guardian

(2359701, 23597, 1, 0, 100, 1500, 100, 0, 11, 43249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Guardian - Cast Startling Roar'), 

(2359702, 23597, 0, 0, 100, 12000, 5000, 0, 11, 43246, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amani\'shi Guardian - Cast Rend'), 



-- Bjarn

(113001, 1130, 0, 0, 90, 18000, 3000, 0, 11, 3130, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bjarn - Casts Ice Claw'), 

(113002, 1130, 0, 0, 90, 26000, 8000, 0, 11, 12054, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bjarn - Casts Rend (Closest Match)'), 



-- Baron Aquanis

(1287601, 12876, 0, 0, 75, 12000, 7000, 0, 11, 9672, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Aquanis - Casts Frostbolt'), 

(1287602, 12876, 0, 0, 85, 14000, 16000, 0, 11, 14907, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Aquanis - Casts Frost Nova'), 



-- Banthar

(1825901, 18259, 0, 0, 85, 8000, 9000, 0, 11, 32021, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Banthar - Casts Rushing Charge'), 

(1825902, 18259, 0, 0, 85, 14000, 4000, 0, 11, 32023, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Banthar - Cast Hoof Stomp'), 



-- Bhag'thera

(72801, 728, 0, 0, 90, 28000, 9000, 0, 11, 16509, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bhag\'thera - Casts Rend (Closest Match)'), 

(72802, 728, 0, 0, 100, 32000, 2000, 0, 11, 6016, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bhag\'thera - Casts Pierce Armor'), 



-- Death Watcher

(2086701, 20867, 0, 0, 70, 22000, 8000, 0, 11, 36664, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Watcher - Casts Tentacle Cleave'), 

(2086702, 20867, 4, 0, 100, 50, 0, 32000, 11, 36655, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Watcher - Casts Drain Life When Below 50% HP'), 



-- Entropic Eye

(2086801, 20868, 0, 0, 70, 25000, 3000, 0, 11, 36677, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Entropic Eye - Casts Chaos Breath'), 

(2086802, 20868, 0, 0, 75, 22000, 8000, 0, 11, 36664, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Entropic Eye - Casts Tentacle Cleave'), 



-- Sightless Eye

(2134601, 21346, 0, 0, 80, 18000, 8000, 0, 11, 36646, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sightless Eye - Casts Sightless Touch'), 



-- Blood Seeker

(386801, 3868, 0, 0, 70, 25000, 4000, 0, 11, 7140, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blood Seeker - Casts Expose Weakness'), 



-- Bloodseeker Bat

(1136801, 11368, 6, 0, 100, 100, 0, 0, 11, 38461, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodseeker Bat - Casts Charge on Aggro'), 



-- Dark Screecher

(892701, 8927, 0, 0, 70, 18000, 4000, 0, 11, 8281, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Screecher - Casts Sonic Burst (Closest Match)'), 

(892702, 8927, 6, 0, 100, 100, 0, 0, 11, 14538, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Screecher - Casts Aural Shock on Aggro'), 



-- Frenzied Bat

(1603601, 16036, 0, 0, 70, 19000, 3000, 0, 11, 56, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frenzied Bat - Casts Stun'), 



-- Greater Duskbat

(155301, 1553, 0, 0, 75, 9000, 1000, 0, 11, 3242, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Greater Duskbat - Casts Ravage'), 



-- Greater Kraul Bat

(453901, 4539, 0, 0, 70, 18000, 4000, 0, 11, 8281, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Greater Kraul Bat - Casts Sonic Burst (Closest Match)'), 



-- Greater Shadowbat

(1617401, 16174, 6, 0, 100, 100, 0, 0, 11, 24515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Greater Shadowbat - Casts Shadow Resistance on Aggro'), 

(1617402, 16174, 0, 0, 80, 22000, 6000, 0, 11, 29303, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Greater Shadowbat - Casts Wing Beat'), 

(1617403, 16174, 0, 0, 85, 35000, 15000, 0, 11, 29300, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Greater Shadowbat - Casts Sonic Blast'), 



-- Lesser Scourgebat

(1635501, 16355, 0, 0, 85, 15000, 5000, 0, 11, 3234, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lesser Scourgebat - Casts Disease Touch'), 



-- Monstrous Plaguebat

(860201, 8602, 0, 0, 70, 18000, 4000, 0, 11, 8281, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Monstrous Plaguebat - Casts Sonic Burst (Closest Match)'), 



-- Noxious Plaguebat

(860101, 8601, 0, 0, 90, 45000, 2000, 0, 11, 7992, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Noxious Plaguebat - Casts Slowing Poison (Closest Match)'), 



-- Plaguebat

(860001, 8600, 0, 0, 70, 19000, 5000, 0, 11, 6605, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Plaguebat - Casts Terrifying Screech'), 



-- Plagued Bat

(1603701, 16037, 0, 0, 85, 40000, 9000, 0, 11, 30113, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Plagued Bat - Casts Putrid Bite'), 



-- Ressan the Needler

(1035701, 10357, 0, 0, 70, 18000, 4000, 0, 11, 8281, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ressan the Needler - Casts Sonic Burst (Closest Match)'), 



-- Shadowbat 

(1617301, 16173, 0, 0, 75, 19000, 4000, 0, 11, 29298, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowbat - Casts Dark Shriek'), 



-- Shrike Bat

(486101, 4861, 0, 0, 70, 17000, 5000, 0, 11, 8281, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shrike Bat - Casts Sonic Burst'), 



-- Vampiric Duskbat

(155401, 1554, 0, 0, 75, 9000, 1000, 0, 11, 3242, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vampiric Duskbat - Casts Ravage'), 



-- Vampiric Mistbat

(1635401, 16354, 0, 0, 75, 18000, 6000, 0, 11, 18152, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vampiric Mistbat - Casts Draining Touch'), 



-- Vampiric Shadowbat

(1617501, 16175, 0, 0, 75, 24000, 6000, 0, 11, 32428, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vampiric Mistbat - Casts Draining Touch'), 



-- Vile Bat

(386601, 3866, 6, 0, 100, 100, 0, 0, 11, 6713, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Bat - Casts Disarm on Aggro'), 

(386602, 3866, 0, 0, 80, 17000, 4000, 0, 11, 7145, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Bat - Casts Diving Sweep'), 



-- Black Broodling

(704701, 7047, 0, 0, 90, 12000, 1000, 0, 11, 42802, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Black Broodling - Casts Fireball'), 



-- Black Dragon Whelp

(44101, 441, 0, 0, 90, 9000, 1000, 0, 11, 9487, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Black Dragon Whelp - Casts Fireball'), 



-- Black Dragonspawn

(704001, 7040, 0, 0, 75, 11000, 3000, 0, 11, 15284, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Black Dragonspawn - Casts Cleave'), 

(704002, 7040, 0, 0, 80, 29000, 9000, 0, 11, 16509, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Black Dragonspawn - Casts Rend'), 



-- Black Drake

(704401, 7044, 0, 0, 75, 32000, 6000, 0, 11, 39263, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Black Drake - Casts Flame Breath'), 



-- Black Drakonid (Simple_AI Convert)

(1426501, 14265, 0, 0, 100, 4000, 10000, 2000, 11, 22560, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Black Drakonid - Casts Brood Power Black'), 



-- Black Wyrmkin

(704101, 7041, 0, 0, 90, 12000, 1000, 0, 11, 42802, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Black Wyrmkin - Casts Fireball'), 



-- Blackscale

(2149701, 21497, 0, 0, 75, 18000, 5000, 0, 11, 20712, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Black Wyrmkin - Casts Flame Breath'), 

(2149702, 21497, 0, 0, 85, 25000, 9000, 0, 11, 29685, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Black Wyrmkin - Casts Terrifying Roar'), 

(2149703, 21497, 0, 0, 85, 30000, 15000, 0, 11, 29685, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Black Wyrmkin - Casts Tail Sweep'), 



-- Frenzied Black Drake

(946101, 9461, 0, 0, 75, 30000, 9000, 0, 11, 38267, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frenzied Black Drake - Casts Flame Breath'), 

(946102, 9461, 0, 0, 75, 45000, 20000, 0, 11, 40719, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frenzied Black Drake - Casts Flame Breath'), 

(946103, 9461, 0, 0, 75, 45000, 8000, 0, 11, 13459, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frenzied Black Drake - Casts Decimate'), 

(946104, 9461, 4, 0, 100, 20, 0, 120000, 11, 39249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frenzied Black Drake - Casts Enrage at 20% HP'), 



-- Rogue Black Drake

(1438801, 14388, 0, 0, 75, 23000, 5000, 0, 11, 39263, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rogue Black Drake - Casts Flame Breath'), 



-- Deers

(401801, 4018, 0, 0, 100, 10000, 1000, 4000, 11, 6268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Antlered Courser - Casts Rushing Charge'), 

(401901, 4019, 0, 0, 100, 10000, 1000, 4000, 11, 6268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Great Courser - Cast Rushing Charge'), 

(381801, 3818, 0, 0, 100, 10000, 1000, 4000, 11, 6921, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Elder Shadowhorn Stag - Cast Shadowhorn Charge'), 

(876101, 8761, 4, 0, 100, 20, 0, 0, 11, 12795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mosshoof Courser - Casts Enrage at 20% HP'), 

(1720101, 17201, 0, 0, 100, 6000, 6000, 4000, 11, 31274, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Moongraze Buck - Cast Knockdown'), 



-- Deathshadow Mobs

(2234101, 22341, 0, 0, 100, 8000, 3000, 6000, 11, 36447, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Acolyte - Cast Mind Sear'), 

(2339301, 23393, 0, 0, 100, 8000, 3000, 6000, 11, 36447, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Agent - Cast Mind Sear'), 

(2234301, 22343, 0, 0, 100, 12000, 10000, 6000, 11, 31996, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Archon - Cast Bloodthirst'), 

(2234302, 22343, 4, 0, 100, 20, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Archon - Cast Enrage'), 

(2239401, 22394, 0, 0, 100, 6000, 8000, 6000, 11, 32901, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Hound - Cast Carnivorous Bite'), 

(2236201, 22362, 0, 0, 100, 2000, 1000, 2000, 11, 30050, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Imp - Cast Firebolt'), 

(2239301, 22393, 0, 0, 50, 6000, 1000, 0, 11, 21077, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Overlord - Cast Shadow Bolt'), 

(2239302, 22393, 0, 0, 50, 8000, 5000, 0, 11, 37329, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Overlord - Cast Fireball'), 

(2239303, 22393, 0, 0, 100, 10000, 10000, 4000, 11, 37579, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Overlord - Cast Impending Doom'), 

(2234201, 22342, 0, 0, 100, 7000, 1000, 3000, 11, 33462, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Spellbinder - Cast Arcane Missles'), 

(2234202, 22342, 0, 0, 100, 14000, 10000, 6000, 11, 29991, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Spellbinder - Cast Chains of Ice'), 

(2234203, 22342, 0, 0, 100, 7000, 6000, 3000, 11, 31999, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Spellbinder - Cast Counterspell'), 

(2236301, 22363, 3, 0, 100, 3000, 100, 0, 11, 38980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Warlock - Summon Twilight Ridge Imp'), 

(2236302, 22363, 3, 0, 100, 1000, 100, 0, 11, 34881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Warlock - Cast Demon Armor'), 

(2236303, 22363, 0, 0, 100, 3000, 1000, 2000, 11, 38386, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Warlock - Cast Shadow Bolt'), 

(2236304, 22363, 0, 0, 100, 16000, 4000, 5000, 11, 27215, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathshadow Warlock - Cast Immolate'), 



-- Deathforge Mobs

(2229501, 22295, 0, 0, 100, 10000, 8000, 5000, 11, 33919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Automation - Cast Earthquake'), 

(2229502, 22295, 0, 0, 100, 12000, 12000, 8000, 11, 39052, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Automation - Cast Sonic Burst'), 

(2229503, 22295, 0, 0, 100, 6000, 10000, 9000, 11, 38576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Automation - Cast Knockaway'), 

(2087801, 20878, 0, 0, 100, 8000, 8000, 6000, 11, 37998, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Guardian - Cast Piercing Strike'), 

(2087802, 20878, 0, 0, 100, 5000, 5000, 10000, 11, 38233, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Guardian - Cast Shield Bash'), 

(2088701, 20887, 0, 0, 100, 2000, 1000, 1000, 11, 30050, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Imp - Firebolt'), 

(1997801, 19978, 0, 0, 100, 12000, 5000, 3000, 11, 36486, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Over-Smith - Slime Spray'), 

(1975601, 19756, 0, 0, 100, 10000, 8000, 5000, 11, 37580, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Smith - Drill Armor'), 

(1975602, 19756, 0, 0, 100, 12000, 12000, 4000, 11, 37997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Smith - Chaos Nova'), 

(2087201, 20872, 0, 0, 100, 15000, 1000, 5000, 11, 37628, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Summoner - Fel Immolate'), 

(2087202, 20872, 0, 0, 100, 4000, 4000, 4000, 11, 36714, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Summoner - Shadow Bolt'), 

(1997901, 19979, 0, 0, 100, 10000, 6000, 5000, 11, 36250, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Technician - Steal Armor'), 

(1997902, 19979, 4, 0, 100, 30, 0, 8000, 11, 17238, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Technician - Drain Life'), 

(1975401, 19754, 2, 0, 100, 15000, 1000, 15000, 11, 38107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Tinkerer - Create Mine (OCC)'), 

(1975402, 19754, 0, 0, 100, 15000, 15000, 15000, 11, 38107, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Tinkerer - Create Mine (In Combat)'), 

(1975403, 19754, 0, 0, 100, 10000, 1000, 5000, 11, 38753, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Tinkerer - Cast Shrapnel Bomb'), 

(2231501, 22315, 0, 0, 100, 3000, 1000, 1000, 11, 38108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathforge Mine - Cast Deathforge Mine Explosion'), 



-- Earth Elementals

(1174601, 11746, 0, 0, 70, 7500, 25000, 0, 11, 40488, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Desert Rumbler - Cast Trample'), 

(1174701, 11747, 0, 0, 75, 5000, 18000, 0, 11, 24685, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Desert Rager - Cast Earth Shock'), 

(1177701, 11777, 0, 0, 65, 7500, 20000, 0, 11, 5568, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowshard Rumbler - Cast Trample'), 

(1177801, 11778, 0, 0, 80, 20000, 40000, 0, 11, 10101, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowshard Smasher - Cast Knock Away'), 

(1177802, 11778, 0, 0, 70, 15000, 25000, 0, 11, 11428, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowshard Smasher - Cast Knockdown'), 

(1178001, 11780, 4, 0, 100, 40, 0, 0, 11, 12686, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ambershard Rager - Cast Enrage'), 

(1178101, 11781, 0, 0, 70, 5000, 20000, 0, 11, 22426, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ambershard Crusher - Cast Crush Armor'), 

(1178201, 11782, 0, 0, 85, 5000, 15000, 0, 11, 3391, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ambershard Destroyer - Cast Thrash'), 

(1178202, 11782, 0, 0, 80, 15000, 20000, 0, 11, 19701, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ambershard Destroyer - Cast Boulder'), 

(1178203, 11782, 0, 0, 75, 9000, 23000, 0, 11, 26194, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ambershard Destroyer - Cast Earth Shock'), 

(1715601, 17156, 4, 0, 100, 25, 0, 0, 11, 28131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Earth Spirit - Cast Enrage'), 

(1715602, 17156, 0, 0, 75, 12000, 25000, 0, 11, 13728, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortured Earth Spirit - Cast Earth Shock'), 

(1806201, 18062, 0, 0, 65, 8000, 30000, 0, 11, 20276, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enraged Crusher - Cast Knockdown'), 

(2105001, 21050, 0, 0, 85, 15000, 40000, 0, 11, 38513, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enraged Earth Spirit - Cast Fiery Boulder'), 

(2170801, 21708, 0, 0, 70, 5000, 23000, 0, 11, 43305, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupted Earth Elemental - Cast Earth Shock'), 

(403501, 4035, 0, 0, 75, 8000, 25000, 0, 11, 18812, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Furious Stone Spirit - Cast Knockdown'), 

(412001, 4120, 0, 0, 70, 8000, 15000, 0, 11, 6524, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thundering Boulderkin - Cast Ground Tremor'), 



-- Darrowshire Undead and a few other D Creatures

(1094701, 10947, 0, 0, 100, 12000, 5000, 3000, 11, 5337, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Darrowshire Betrayer - Cast Wither Strike'), 

(1094801, 10948, 0, 0, 100, 7000, 5000, 3000, 11, 12169, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Darrowshire Defender - Cast Shield Block'), 

(1094802, 10948, 0, 0, 100, 5000, 7000, 5000, 11, 18368, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Darrowshire Defender - Cast Strike'), 

(1106401, 11064, 0, 0, 100, 5000, 7000, 5000, 11, 18368, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Darrowshire Spirit - Cast Strike'), 

(1423201, 14232, 6, 0, 100, 100, 0, 0, 11, 43128, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dart - Cast Raptor Charge'), 

(1423202, 14232, 0, 0, 100, 15000, 7000, 3000, 11, 13738, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dart - Cast Rend'), 

(1886001, 18860, 1, 0, 100, 8000, 100, 0, 11, 36844, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daughter of Destiny - Cast Curse of Horrors'), 

(1886002, 18860, 0, 0, 100, 7000, 4000, 3000, 11, 36225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daughter of Destiny - Cast Chaos Nova'), 

(1897001, 18970, 1, 0, 100, 1000, 100, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkspear Axethrower - Ranged Mob'), 

(1897002, 18970, 0, 0, 100, 2000, 1000, 0, 11, 16075, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkspear Axethrower - Cast Throw Axe'), 

(1953001, 19530, 0, 0, 70, 6000, 1000, 0, 11, 31620, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darmend - Cast Fireball'), 

(1953002, 19530, 0, 0, 70, 6000, 4000, 0, 11, 36807, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darmend - Cast Scorch'), 

(1953003, 19530, 0, 0, 100, 20000, 8000, 5000, 11, 18972, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darmend - Cast Slow'), 

(405301, 4053, 1, 0, 100, 1000, 100, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daughter of Cenarius - Ranged Mob'), 

(405302, 4053, 0, 0, 100, 2000, 1000, 1000, 11, 10277, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Daughter of Cenarius - Cast Throw'), 

(405303, 4053, 0, 0, 100, 10000, 6000, 2000, 11, 15090, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Daughter of Cenarius - Cast Dispel Magic on Enemy'), 

(405304, 4053, 0, 0, 100, 6000, 4500, 4000, 11, 15090, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Daughter of Cenarius - Cast Dispel Magic on Self'), 



-- Deadwood and Deadwind plus other D Creatures

(1328501, 13285, 3, 0, 100, 1000, 100, 0, 11, 25640, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Lash – Cast Thorns'), 

(1328502, 13285, 1, 0, 100, 1000, 100, 0, 11, 3391, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Lash – Cast Thrash'), 

(1767201, 17672, 0, 0, 100, 12000, 7000, 3000, 11, 24317, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwind Villager – Cast Sunder Armor'), 

(1767202, 17672, 0, 0, 100, 5000, 10000, 5000, 11, 27814, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwind Villager – Cast Kick'), 

(1953201, 19532, 0, 0, 70, 6000, 1000, 0, 11, 31620, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dearny - Cast Fireball'), 

(1953202, 19532, 0, 0, 70, 6000, 4000, 0, 11, 36807, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dearny - Cast Scorch'), 

(1953203, 19532, 0, 0, 100, 20000, 8000, 5000, 11, 18972, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dearny - Cast Slow'), 

(582301, 5823, 0, 0, 100, 20000, 5000, 5000, 11, 5416, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Flayer – Venom Sting'), 

(715301, 7153, 1, 0, 100, 5000, 100, 0, 11, 13583, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Warrior – Cast Curse of Deadwood'), 

(715302, 7153, 0, 0, 100, 5000, 6000, 5000, 11, 22591, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Warrior – Cast Strike'), 

(715401, 7154, 1, 0, 100, 5000, 100, 0, 11, 13583, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Gardener – Cast Curse of Deadwood'), 

(715402, 7154, 4, 0, 100, 70, 0, 15000, 11, 15981, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Gardener – Cast Rejevunation'), 

(715403, 7154, 4, 0, 100, 30, 0, 10000, 11, 12492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Gardener – Cast Healing Wave'), 

(715501, 7155, 1, 0, 100, 500, 100, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Pathfinder – Ranged Mob'), 

(715502, 7155, 1, 0, 100, 5000, 100, 0, 11, 13583, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Pathfinder – Cast Curse of Deadwood'), 

(715503, 7155, 0, 0, 100, 2000, 1000, 1000, 11, 22121, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Pathfinder – Cast Shoot'), 

(715504, 7155, 0, 0, 100, 6000, 8000, 4000, 11, 6685, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Pathfinder – Cast Piercing Shot'), 

(715601, 7156, 1, 0, 100, 5000, 100, 0, 11, 13583, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Den Watcher – Cast Curse of Deadwood'), 

(715701, 7157, 1, 0, 100, 5000, 100, 0, 11, 13583, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Avenger – Cast Curse of Deadwood'), 

(715702, 7157, 4, 0, 100, 20, 0, 15000, 11, 18501, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Avenger – Cast Enrage'), 

(715801, 7158, 1, 0, 100, 5000, 2500, 0, 11, 13583, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Shaman – Cast Curse of Deadwood'), 

(715802, 7158, 2, 0, 100, 600000, 1000, 0, 11, 13585, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Shaman – Cast Lightning Shield'), 

(715803, 7158, 0, 0, 100, 3000, 6500, 500, 11, 15234, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Shaman – Cast Lightning Bolt'), 

(715804, 7158, 0, 0, 100, 6500, 5500, 3000, 11, 16006, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Shaman- Cast Chain Lightning'), 

(736901, 7369, 1, 0, 100, 1000, 100, 0, 11, 8876, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwind Brute – Cast Thrash'), 

(737101, 7371, 0, 0, 100, 12000, 10000, 3000, 11, 10966, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwind Mauler - Cast Uppercut'), 

(737201, 7372, 1, 0, 100, 1000, 100, 0, 11, 11708, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwind Warlock – Cast Curse of Weakness'), 

(737202, 7372, 0, 0, 100, 3000, 3000, 2000, 11, 18111, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwind Warlock – Cast Shadowbolt'), 

(737203, 7372, 0, 0, 100, 21000, 7000, 4000, 11, 17883, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwind Warlock – Cast Immolate'), 

(737901, 7379, 2, 0, 100, 600000, 1000, 0, 11, 13585, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwind Ogre Mage – Cast Lightning Shield'), 

(737902, 7379, 0, 0, 100, 3000, 1000, 2000, 11, 15207, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwind Ogre Mage – Cast Lightning Bolt'), 

(737903, 7379, 0, 0, 100, 10000, 8000, 2000, 11, 10448, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwind Ogre Mage – Cast Flame Shock'), 

(737904, 7379, 0, 0, 100, 30000, 15000, 5000, 11, 21049, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwind Ogre Mage – Cast Bloodlust'), 



-- More D Creatures

(1519601, 15196, 0, 0, 100, 15000, 8000, 10000, 11, 3609, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathclasp - Cast Paralyzing Poison'), 

(1519602, 15196, 0, 0, 100, 10000, 15000, 10000, 11, 10101, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathclasp - Cast Knock Away'), 

(830201, 8302, 0, 0, 100, 60000, 6000, 10000, 11, 12020, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deatheye - Cast Call To The Grave'), 

(830202, 8302, 0, 0, 100, 15000, 10000, 5000, 11, 3635, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deatheye - Cast Crystal Gaze'), 

(1007701, 10077, 0, 0, 100, 10000, 10000, 5000, 11, 3604, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathmaw - Cast Tendon Rip'), 

(1864701, 18647, 0, 0, 100, 21000, 5000, 4000, 11, 39271, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathskitter - Cast Dread Poison'), 

(1082701, 10827, 0, 0, 100, 15000, 1000, 3000, 11, 12889, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Selendre - Cast Curse of Tongues'), 

(1082702, 10827, 0, 0, 100, 3000, 3000, 2000, 11, 16410, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Selendre - Cast Shadow Bolt'), 

(1082703, 10827, 4, 0, 100, 30, 0, 10000, 11, 17238, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Selendre - Cast Drain Life'), 

(191101, 1911, 0, 0, 100, 6000, 2000, 4000, 11, 2607, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deeb - Cast Shock'), 

(191102, 1911, 0, 0, 100, 4000, 5000, 4000, 11, 403, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deeb - Cast Shock'), 



-- Assorted "E" Creatures

(2313601, 23136, 0, 0, 80, 4500, 18000, 0, 11, 40240, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eagle Spirit - Cast Spite of the Eagle'), 

(484201, 4842, 0, 0, 75, 7000, 15000, 0, 11, 18089, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Earthcaller Halmgar - Cast Lightning Bolt'), 

(1064201, 10642, 0, 0, 85, 20000, 35000, 0, 11, 5276, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eck\'alom - Cast Freeze'), 

(1064202, 10642, 0, 0, 70, 5000, 15000, 0, 11, 15499, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eck\'alom - Cast Frost Shock'), 

(113701, 1137, 0, 0, 75, 10000, 25000, 0, 11, 3129, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Edan the Howler - Cast Frost Breath'), 

(1949301, 19493, 0, 0, 80, 8000, 20000, 0, 11, 39429, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ekkorash the Inquisitor - Cast Fel Flamestrike'), 

(1949302, 19493, 0, 0, 75, 140000, 1000, 0, 11, 30909, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ekkorash the Inquisitor - Cast Curse of Weakness'), 

(74601, 746, 0, 0, 70, 5000, 45000, 0, 11, 6306, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Elder Dragonkin - Cast Acid Splash'), 

(623501, 6235, 0, 0, 80, 5000, 25000, 0, 11, 11082, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Electrocutioner 6000 - Cast Megavolt'), 

(623502, 6235, 0, 0, 80, 8000, 15000, 0, 11, 15605, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Electrocutioner 6000 - Cast Shock'), 

(623503, 6235, 0, 0, 80, 11000, 31000, 0, 11, 11085, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Electrocutioner 6000 - Cast Chain Bolt'), 

(2172901, 21729, 0, 0, 70, 5500, 15000, 0, 11, 36152, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Electromental - Cast Lightning Bolt'), 

(31401, 314, 4, 0, 100, 50, 0, 0, 11, 3107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Cast Summon Eliza\'s Guard'), 

(31402, 314, 0, 0, 70, 10000, 30000, 0, 11, 12737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Cast Frostbolt'), 

(31403, 314, 0, 0, 70, 5000, 20000, 0, 11, 15531, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Cast Frost Nova'), 

(31404, 314, 0, 0, 70, 15000, 17000, 0, 11, 8427, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Cast Blizzard'),



-- Baron Kazum

(1520501, 15205, 0, 0, 70, 16500, 3000, 0, 11, 25056, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Kazum - Casts Stomp'), 

(1520502, 15205, 0, 0, 75, 28000, 7000, 0, 11, 19129, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Kazum - Casts Massive Tremor'), 

(1520503, 15205, 0, 0, 85, 18000, 12000, 0, 11, 17547, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Kazum - Casts Mortal Strike'), 



-- Baron Rafe Dreuger

(1987401, 19874, 0, 0, 70, 12000, 3000, 0, 11, 37369, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rafe Dreuger - Casts Hammer of Justice'), 

(1987402, 19874, 0, 0, 75, 40000, 9000, 0, 11, 29385, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rafe Dreuger - Casts Seal of Command'), 

(1987403, 19874, 0, 0, 85, 19000, 19000, 0, 11, 29386, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rafe Dreuger - Casts Judgement of Command'), 

(1987404, 19874, 4, 0, 100, 30, 0, 13000, 11, 29562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rafe Dreuger - Casts Holy Light at 30% HP'), 



-- Baron Vardus

(230601, 2306, 0, 0, 75, 12000, 4000, 0, 11, 9672, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Vardus - Casts Frostbolt'), 

(230602, 2306, 0, 0, 75, 18000, 9000, 0, 11, 14907, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Vardus - Casts Frost Nova'), 

(230603, 2306, 4, 0, 100, 40, 0, 30000, 11, 19099, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Vardus - Casts Blizzard (Closest Match)'), 

(230604, 2306, 0, 0, 75, 9000, 7000, 0, 11, 6253, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Vardus - Casts Backhand'), 



-- Baroness Dorothea Millstipe

(1987501, 19875, 0, 0, 75, 22000, 22000, 0, 11, 37276, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baroness Dorothea Millstipe - Casts Mind Flay'), 

(1987502, 19875, 0, 0, 60, 35000, 14000, 0, 11, 37159, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baroness Dorothea Millstipe - Casts Mana Burn'), 

(1987503, 19875, 0, 0, 75, 20000, 5000, 0, 11, 15473, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baroness Dorothea Millstipe - Casts Shadowform'), 

(1987504, 19875, 4, 0, 100, 40, 0, 30000, 11, 35223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baroness Dorothea Millstipe - Casts Holy Light'), 



-- Dalmanis the Hated

(366201, 3662, 0, 0, 70, 14000, 10000, 0, 11, 7101, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Delmanis the Hated - Casts Flame Blast'), 

(366202, 3662, 0, 0, 75, 5000, 2000, 0, 11, 9672, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Delmanis the Hated - Casts Frostbolt'),



-- Ambassador Hellmaw (SimpleAI Conversion)

('1873101', '18731', '0', '0', '100', '25000', '25000', '0', '11', '23313', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ambassador Hellmaw - Casts Corrosive Acid'),

('1873102', '18731', '0', '0', '100', '30000', '40000', '0', '11', '30752', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ambassador Hellmaw - Casts Terrifying Howl'),

('1873103', '18731', '6', '0', '100', '0', '0', '0', '7', '142', '143', '144', '9', '10475', '10476', '10477', '0', '0', '0', '0', 'Ambassador Hellmaw - Aggro Yell and Sound'),

('1873104', '18731', '8', '0', '100', '0', '0', '0', '2', '145', '0', '0', '4', '10480', '0', '0', '0', '0', '0', '0', 'Ambassador Hellmaw - Creature Death Yell and Sound'),

('1873105', '18731', '7', '0', '100', '0', '0', '0', '7', '146', '147', '146', '9', '10479', '10478', '10479', '0', '0', '0', '0', 'Ambassador Hellmaw - Creature Death Yell and Sound'),



-- Cookie (SimpleAI Conversion)

('64501', '645', '4', '0', '100', '40', '0', '10000', '11', '5174', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cookie - Casts Cookie\'s Cooking'),

('64502', '645', '0', '0', '100', '30000', '30000', '0', '11', '6306', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cookie - Casts Acid Splash'),



-- Gilnid (SimpleAI Conversion)

('176301', '1763', '0', '0', '100', '15000', '15000', '0', '11', '5213', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gilnid - Casts Molten Metal'),



-- Marisa du paige (SimpleAI Conversion)

('59901', '599', '0', '0', '100', '35000', '12000', '3000', '11', '700', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Marisa du paige - Casts Sleep'),

('59902', '599', '0', '0', '80', '25000', '18000', '0', '11', '228', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Marisa du paige - Casts Polymorph Chicken'),

('59903', '599', '4', '0', '100', '50', '0', '35000', '11', '512', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Marisa du paige - Casts Chains of Ice at 50% HP'),

('59904', '599', '0', '0', '80', '8000', '8000', '0', '11', '3140', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Marisa du paige - Casts Fireball'),



-- Ghaz'an (SimpleAI Conversion)

('1810501', '18105', '0', '0', '85', '5000', '5000', '0', '11', '34268', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ghaz\'an - Casts Acid Breath'),

('1810502', '18105', '0', '0', '100', '6000', '2000', '2000', '11', '3417', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ghaz\'an - Casts Thrash'),

('1810503', '18105', '0', '0', '90', '10000', '10000', '0', '11', '34267', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ghaz\'an - Casts Tail Sweep'),

('1810504', '18105', '0', '0', '100', '8000', '8000', '0', '11', '34290', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ghaz\'an - Casts Acid Spit'),

('1810505', '18105', '4', '0', '100', '20', '0', '0', '11', '40683', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ghaz\'an - Casts Enrage at 20% HP'),



-- Rokmar the Crackler (Non-Heroic)(SimpleAI Conversion)

('1799101', '17991', '0', '0', '80', '25000', '15000', '0', '11', '31956', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rokmar the Crackler - Casts Grievous Wound'),

('1799102', '17991', '0', '0', '80', '15000', '25000', '10000', '11', '31948', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rokmar the Crackler - Casts Ensnaring Moss'),

('1799103', '17991', '0', '0', '90', '15000', '15000', '0', '11', '35008', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rokmar the Crackler - Casts Water Spit'),

('1799104', '17991', '4', '0', '100', '20', '0', '120000', '11', '34970', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rokmar the Crackler - Casts Enrage at 20% HP'),



-- Mutanus the Devourer (SimpleAI Conversion)

('365401', '3654', '0', '0', '100', '30000', '9000', '0', '11', '7967', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mutanus the Devourer - Casts Naralex\'s Nightmare'),

('365402', '3654', '0', '0', '100', '50000', '50000', '0', '11', '7399', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mutanus the Devourer - Casts Terrify'),

('365403', '3654', '0', '0', '100', '10000', '10000', '0', '11', '8150', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mutanus the Devourer - Casts Thundercrack'),



-- Aqueous Lord (SimpleAI Conversion)

('2287801', '22878', '0', '0', '80', '45000', '55000', '0', '11', '40099', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Aqueous Lord - Casts Vile Slime'),

('2287802', '22878', '0', '0', '80', '10000', '55000', '0', '11', '40099', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Aqueous Lord - Casts Vile Slime'),

('2287803', '22878', '0', '0', '75', '35000', '30000', '0', '11', '22274', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Aqueous Lord - Casts Crashing Wave'),



-- Aqueous Surger (SimpleAI Conversion)

('2288101', '22881', '0', '0', '85', '35000', '30000', '0', '11', '24099', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Aqueous Surger - Casts Poison Bolt Volley'),



-- Coilskar General (SimpleAI Conversion)

('2287301', '22873', '0', '0', '65', '35000', '30000', '0', '11', '40081', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilskar General - Casts Free Friend'),

('2287302', '22873', '0', '0', '85', '45000', '4000', '0', '11', '40080', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilskar General - Casts Booming Voice'),

('2287303', '22873', '6', '0', '100', '0', '0', '0', '11', '29651', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilskar General - Casts Dual Wield on Aggro'),



-- Coilskar Sea-Caller (SimpleAI Conversion)

('2287501', '22875', '0', '0', '75', '45000', '30000', '0', '11', '40090', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilskar Sea-Caller - Casts Hurricane'),

('2287502', '22875', '0', '0', '75', '30000', '45000', '0', '11', '22945', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilskar Sea-Caller - Casts Forked Lightning'),



-- Coilskar Soothsayer (SimpleAI Conversion)

('2287601', '22876', '0', '0', '75', '45000', '25000', '0', '11', '40096', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilskar Soothsayer - Casts Holy Nova'),

('2287602', '22876', '4', '0', '75', '20', '0', '60000', '11', '40097', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilskar Soothsayer - Casts Restoration at 20% HP'),



-- Coilskar Wrangler (SimpleAI Conversion)

('2287701', '22877', '0', '0', '85', '25000', '35000', '0', '11', '15284', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilskar Wrangler - Casts Cleave'),

('2287702', '22877', '0', '0', '75', '35000', '30000', '0', '11', '40066', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilskar Wrangler - Casts Lightning Prod'),

('2287703', '22877', '0', '0', '60', '20000', '40000', '0', '11', '40076', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilskar Wrangler - Casts Electric Spur (Self Cast Due to Target Limitations)'),



-- Leviathan (SimpleAI Conversion)

('2288401', '22884', '0', '0', '85', '20000', '25000', '0', '11', '40077', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Leviathan - Casts Tail Sweep (Closest Match)'),

('2288402', '22884', '0', '0', '75', '25000', '12000', '0', '11', '32330', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Leviathan - Casts Poison Spit'),

('2288403', '22884', '0', '0', '70', '35000', '7000', '0', '11', '40079', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Leviathan - Casts Debilitating Spray'),



-- Illidari Defiler (SimpleAI Conversion)

('2285301', '22853', '0', '0', '85', '45000', '35000', '0', '11', '39671', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Defiler - Casts Rain of Chaos'),

('2285302', '22853', '0', '0', '70', '25000', '25000', '0', '11', '37334', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Defiler - Casts Curse of Agony'),

('2285303', '22853', '0', '0', '75', '30000', '15000', '0', '11', '39670', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Defiler - Casts Fel Immolate'),

('2285304', '22853', '0', '0', '70', '22500', '28000', '0', '11', '39674', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Defiler - Casts Banish'),



-- Illidari Fearbringer (SimpleAI Conversion)

('2295401', '22954', '0', '0', '85', '45000', '17000', '0', '11', '40936', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Fearbringer - Casts War Stomp'),

('2295402', '22954', '0', '0', '75', '49000', '25000', '0', '11', '40938', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Fearbringer - Casts Illidari Flames'),

('2295403', '22954', '0', '0', '70', '55000', '10000', '0', '11', '40946', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Fearbringer - Casts Rain of Chaos'),



-- Illidari Nightlord (SimpleAI Conversion)

('2285501', '22855', '0', '0', '100', '10000', '27000', '0', '11', '39645', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Nightlord - Casts Shadow Inferno'),

('2285502', '22855', '0', '0', '70', '35000', '15000', '0', '11', '41150', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Nightlord - Casts Fear'),

('2285503', '22855', '0', '0', '75', '22000', '22000', '0', '11', '39647', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Nightlord - Casts Curse of Mending'),

('2285504', '22855', '0', '0', '70', '30000', '8000', '0', '11', '39649', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Nightlord - Casts Summon Shadowfiends'),



-- Illidari Centurion (SimpleAI Conversion)

('2333701', '23337', '0', '0', '75', '18000', '9000', '0', '11', '15284', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Centurion - Casts Cleave'),

('2333702', '23337', '0', '0', '75', '45000', '15000', '0', '11', '41168', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Centurion - Casts Sonic Strike'),



-- Illidari Boneslicer (SimpleAI Conversion) (Fixed in 0.0.5)

('2286901', '22869', '0', '0', '85', '45000', '15000', '0', '11', '38863', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Boneslicer - Casts Gouge'),

('2286902', '22869', '0', '0', '60', '30000', '25000', '0', '11', '41176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Boneslicer - Casts Shadowstep'),

('2286903', '22869', '0', '0', '80', '20000', '12000', '0', '11', '39666', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Boneslicer - Casts Cloak of Shadows'),

('2286904', '22869', '6', '0', '100', '0', '0', '0', '11', '42459', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Boneslicer - Casts Dual Wield on Aggro'),



-- Illidari Heartseeker (SimpleAI Conversion)

('2333901', '23339', '0', '0', '85', '35000', '25000', '0', '11', '41093', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Heartseeker - Casts Shoot'),

('2333902', '23339', '0', '0', '75', '25000', '23000', '0', '11', '41172', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Heartseeker - Casts Rapid Shot'),

('2333903', '23339', '0', '0', '70', '65000', '45000', '0', '11', '41171', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Illidari Heartseeker - Casts Skeleton Shot'),



-- Ashtongue Stormcaller (SimpleAI Conversion)

('2284601', '22846', '3', '0', '100', '1000', '0', '0', '11', '39534', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Stormcaller - Summon Storm Fury'),

('2284602', '22846', '0', '0', '75', '25000', '25000', '0', '11', '32337', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Stormcaller - Casts Chain Lightning'),

('2284603', '22846', '0', '0', '85', '22000', '15000', '0', '11', '38465', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Stormcaller - Casts Lightning Bolt'),

('2284604', '22846', '6', '0', '100', '0', '0', '0', '11', '41151', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Stormcaller - Casts Lightning Shield on Aggro'),



-- Ashtongue Feral Spirit (SimpleAI Conversion)

('2284901', '22849', '0', '0', '85', '33000', '15000', '0', '11', '39575', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Feral Spirit - Casts Charge Frenzy'),

('2284902', '22849', '0', '0', '75', '45000', '20000', '0', '11', '39578', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Feral Spirit - Casts Spirit Bond'),



-- Ashtongue Mystic (SimpleAI Conversion)

('2284501', '22845', '0', '0', '100', '45000', '2000', '0', '11', '39588', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Mystic - Summon Searing Totem'),

('2284502', '22845', '6', '0', '100', '0', '0', '0', '11', '33555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Mystic - Casts Bloodlust on Aggro'),

('2284503', '22845', '0', '0', '100', '75000', '8000', '0', '11', '39589', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Mystic - Summon Cyclone Totem'),

('2284504', '22845', '4', '0', '100', '50', '0', '30000', '11', '33642', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Mystic - Casts Chain Heal'),

('2284505', '22845', '0', '0', '85', '25000', '15000', '0', '11', '25457', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Mystic - Casts Flame Shock'),

('2284506', '22845', '0', '0', '75', '25000', '25000', '0', '11', '41116', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Mystic - Casts Frost Shock'),

('2284507', '22845', '0', '0', '100', '100000', '15000', '0', '11', '39586', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Mystic - Summon Windfury Totem'),



-- Ashtongue Battlelord (SimpleAI Conversion)

('2284401', '22844', '0', '0', '85', '18000', '19000', '0', '11', '15284', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Battlelord - Casts Cleave'),

('2284402', '22844', '0', '0', '90', '20000', '6000', '0', '11', '12809', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Battlelord - Casts Concussion Blow'),

('2284403', '22844', '0', '0', '85', '22000', '15000', '0', '11', '38465', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Battlelord - Casts Concussive Throw'),

('2284404', '22844', '4', '0', '100', '30', '0', '0', '11', '26527', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Battlelord - Casts Enrage at 30% HP'),



-- Aqueous Spawn (SimpleAI Conversion)

('2288301', '22883', '0', '0', '85', '18000', '15000', '0', '11', '40103', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Aqueous Spawn - Casts Sludge Nova'),



-- Wrathbone Flayer (SimpleAI Conversion)

('2295301', '22953', '0', '0', '85', '10000', '5000', '0', '11', '15496', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Flayer - Casts Cleave'),

('2295302', '22953', '0', '0', '75', '20000', '10000', '0', '11', '39544', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathbone Flayer - Casts Ignored'),



-- Shadowmoon Champion (SimpleAI Conversion)

('2288001', '22880', '0', '0', '85', '35000', '20000', '0', '11', '41053', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Champion - Casts Whirling Blade'),

('2288002', '22880', '0', '0', '85', '18000', '15000', '0', '11', '41063', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Champion - Casts Chaotic Light'),



-- Shadowmoon Blood Mage (SimpleAI Conversion)

('2294501', '22945', '0', '0', '100', '25000', '20000', '0', '11', '41229', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Blood Mage - Casts Bloodbolt'),

('2294502', '22945', '0', '0', '80', '24000', '15000', '0', '11', '41068', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Blood Mage - Casts Blood Siphon'),



-- Shadowmoon Deathshaper (SimpleAI Conversion)

('2288201', '22882', '0', '0', '75', '10000', '20000', '0', '11', '40185', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Deathshaper - Casts Shadow Bolt'),

('2288202', '22882', '0', '0', '80', '24000', '15000', '0', '11', '33130', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Deathshaper - Casts Death Coil'),

('2288203', '22882', '6', '0', '100', '0', '0', '0', '11', '27260', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Deathshaper - Casts Demon Armor on Aggro'),

('2288204', '22882', '4', '0', '100', '50', '0', '60000', '11', '34011', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Deathshaper - Casts Raise Dead at 50% HP'),



-- Ashtongue Defender (SimpleAI Conversion)

('2321601', '23216', '0', '0', '90', '18000', '10000', '0', '11', '41178', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Defender - Casts Debilitating Strike'),

('2321602', '23216', '0', '0', '85', '16000', '8000', '0', '11', '41180', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Defender - Casts Shield Bash'),

('2321603', '23216', '0', '0', '70', '20000', '12000', '5000', '11', '41975', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Defender - Casts Heroic Strike'),



-- Ashtongue Elementalist (SimpleAI Conversion)

('2352301', '23523', '0', '0', '85', '20000', '18000', '0', '11', '42023', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Elementalist - Casts Rain of Fire'),

('2352302', '23523', '0', '0', '85', '15000', '6000', '0', '11', '39065', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Elementalist - Casts Lightning Bolt'),



-- Ashtongue Spiritbinder (SimpleAI Conversion)

('2352401', '23524', '0', '0', '90', '24000', '15000', '0', '11', '42025', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Spiritbinder - Casts Spirit Mend'),

('2352402', '23524', '0', '0', '85', '18000', '8000', '0', '11', '42027', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Spiritbinder - Casts Chain Heal'),

('2352403', '23524', '4', '0', '100', '20', '0', '30000', '11', '42317', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Spiritbinder - Casts Spirit Heal at 20% HP'),



-- Ashtongue Rogue (SimpleAI Conversion)

('2331801', '23318', '6', '0', '100', '0', '0', '0', '11', '42459', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Rogue - Casts Dual Wield on Aggro'),

('2331802', '23318', '4', '0', '100', '15', '0', '20000', '11', '41177', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Rogue - Casts Eviscerate at 15% HP'),

('2331803', '23318', '0', '0', '100', '22000', '15000', '0', '11', '41978', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ashtongue Rogue - Casts Debilitating Poison'),



-- Blackwing Spellbinder (SimpleAI Conversion)

('1245701', '12457', '0', '0', '60', '5000', '10000', '5000', '11', '22274', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blackwing Spellbinder - Casts Greater Polymorph'),

('1245702', '12457', '0', '0', '60', '1000', '1000', '59000', '11', '11829', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blackwing Spellbinder - Casts Flamestrike'),



-- Blackwing Technician (SimpleAI Conversion)

('1399601', '13996', '0', '0', '75', '2000', '2000', '4000', '11', '40062', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blackwing Technician - Casts Throw Dynamite'),

('1399602', '13996', '0', '0', '85', '8000', '2000', '0', '11', '22335', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blackwing Technician - Casts Bottle of Poison'),



-- Blackwing Warlock (SimpleAI Conversion)

('1245901', '12459', '0', '0', '85', '5000', '5000', '2000', '11', '19717', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blackwing Warlock - Casts Rain of Fire'),

('1245902', '12459', '0', '0', '85', '3000', '6000', '4000', '11', '22677', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blackwing Warlock - Casts Shadow Bolt'),

('1245903', '12459', '0', '0', '80', '10000', '10000', '0', '11', '38876', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blackwing Warlock - Casts Demon Portal (Alternate is 22392)'),



-- Blue Drakonid (SimpleAI Conversion)

('1426101', '14261', '0', '0', '70', '20000', '12000', '0', '11', '22559', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blue Drakonid - Casts Brood Power Blue'),



-- Bronze Drakonid (SimpleAI Conversion)

('1426301', '14263', '0', '0', '70', '20000', '12000', '0', '11', '22642', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bronze Drakonid - Casts Brood Power Bronze'),



-- Death Talon Captain (SimpleAI Conversion)

('1246701', '12467', '6', '0', '100', '0', '0', '0', '11', '469', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Talon Captain - Casts Commanding Shout on Aggro'),

('1246702', '12467', '0', '0', '85', '5000', '4000', '0', '11', '15284', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Talon Captain - Casts Cleave'),

('1246703', '12467', '0', '0', '80', '20000', '20000', '0', '11', '22439', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Talon Captain - Casts Mark of Detonation'),

('1246704', '12467', '0', '0', '80', '75000', '75000', '0', '11', '22436', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Talon Captain - Casts Aura of Flames'),



-- Death Talon Flamescale (SimpleAI Conversion)

('1246301', '12463', '0', '0', '85', '1000', '3000', '4000', '11', '22423', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Talon Flamescale - Casts Flame Shock'),

('1246302', '12463', '0', '0', '70', '12000', '9000', '5000', '11', '16636', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Talon Flamescale - Casts Berserker Charge'),



-- Death Talon Overseer (SimpleAI Conversion)

('1246101', '12461', '0', '0', '75', '2000', '2000', '4000', '11', '15284', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Talon Overseer - Casts Cleave'),

('1246102', '12461', '0', '0', '80', '3000', '3000', '3000', '11', '20623', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Talon Overseer - Casts Fire Blast'),



-- Death Talon Seether (SimpleAI Conversion)

('1246401', '12464', '0', '0', '85', '10000', '10000', '0', '11', '19812', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Talon Seether - Casts Frenzy'),

('1246402', '12464', '0', '0', '70', '7000', '10000', '4000', '11', '22433', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Talon Seether - Casts Flame Buffet'),



-- Death Talon Wyrmguard (SimpleAI Conversion)

('1246001', '12460', '0', '0', '75', '8000', '8000', '6000', '11', '24375', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Talon Wyrmguard - Casts War Stomp'),



-- Death Talon Wyrmkin (SimpleAI Conversion)

('1246501', '12465', '0', '0', '85', '7000', '7000', '2000', '11', '22424', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Talon Wyrmkin - Casts Blast Wave'),

('1246502', '12465', '0', '0', '70', '2000', '2000', '4000', '11', '23512', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Death Talon Wyrmkin - Casts Fireball Volley'),



-- Green Drakonid (SimpleAI Conversion)

('1426201', '14262', '0', '0', '70', '20000', '12000', '0', '11', '22561', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Green Drakonid - Casts Brood Power Green'),



-- Red Drakonid (SimpleAI Conversion)

('1426401', '14264', '0', '0', '70', '20000', '12000', '0', '11', '22558', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Red Drakonid - Casts Brood Power Red'),



-- Grethlok the Controller (SimpleAI Conversion)

('1255701', '12557', '0', '0', '60', '5000', '10000', '5000', '11', '22274', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grethlok the Controller - Casts Greater Polymorph'),

('1255702', '12557', '0', '0', '85', '20000', '12000', '0', '11', '11446', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grethlok the Controller - Casts Mind Control (Closest Match for Dominate Mind)'),

('1255703', '12557', '0', '0', '80', '20000', '8000', '0', '11', '22356', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grethlok the Controller - Casts Slow'),

('1255704', '12557', '0', '0', '80', '12000', '16000', '0', '11', '38263', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grethlok the Controller - Casts Arcane Missiles'),



-- Lair Brute (SimpleAI Conversion)

('1938901', '19389', '0', '0', '100', '15000', '8000', '5000', '11', '31911', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lair Brute - Casts Mortal Strike'),

('1938902', '19389', '0', '0', '100', '7000', '7000', '3000', '11', '32323', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lair Brute - Casts Charge'),

('1938903', '19389', '0', '0', '100', '7000', '5500', '5000', '11', '29561', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lair Brute - Casts Cleave'),



-- Gronn Priest (SimpleAI Conversion)

('2135001', '21350', '0', '0', '60', '20000', '7500', '5000', '11', '36678', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gronn Priest - Casts Heal'),

('2135002', '21350', '0', '0', '75', '20000', '2000', '3000', '11', '32323', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gronn Priest - Casts Renew'),

('2135003', '21350', '0', '0', '85', '15000', '6000', '0', '11', '22884', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gronn Priest - Casts Psychic Scream'),



-- Serpentshrine Sporebat (SimpleAI Conversion)

('2124601', '21246', '0', '0', '100', '20000', '10000', '5000', '11', '22120', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Serpentshrine Sporebat - Casts Charge'),

('2124602', '21246', '0', '0', '100', '20000', '15000', '5000', '11', '38924', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Serpentshrine Sporebat - Casts Spore Burst'),



-- Coilfang Hate-Screamer (SimpleAI Conversion)

('2133901', '21339', '0', '0', '100', '20000', '10000', '5000', '11', '38913', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilfang Hate-Screamer - Casts Silence'),

('2133902', '21339', '0', '0', '100', '22000', '15000', '7000', '11', '38496', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilfang Hate-Screamer - Casts Sonic Scream'),



-- Coilfang Beast-Tamer (SimpleAI Conversion)

('2122101', '21221', '0', '0', '75', '15000', '10000', '5000', '11', '39060', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilfang Hate-Screamer - Casts Throw'),

('2122102', '21221', '0', '0', '80', '10000', '10000', '5000', '11', '38474', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilfang Hate-Screamer - Casts Cleave'),

('2122103', '21221', '4', '0', '100', '30', '0', '40000', '11', '19574', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilfang Hate-Screamer - Casts Bestial Wrath (Self Cast No Way to Target Allies Yet)'),



-- Tidewalker Depth-Seer (SimpleAI Conversion)

('2122401', '21224', '0', '0', '60', '15000', '15000', '5000', '11', '20701', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Depth-Seer - Casts Rejuvenation (Self Cast No Way to Target Allies Yet)'),

('2122402', '21224', '0', '0', '60', '30000', '20000', '10000', '11', '38658', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Depth-Seer - Casts Healing Touch (Self Cast No Way to Target Allies Yet)'),

('2122403', '21224', '4', '0', '100', '30', '0', '40000', '11', '38659', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Depth-Seer - Casts Tranquility at 30% HP (Self Cast No Way to Target Allies Yet)'),



-- Tidewalker Harpooner (SimpleAI Conversion)

('2122701', '21227', '0', '0', '85', '18000', '7000', '5000', '11', '38661', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Harpooner - Casts Net'),

('2122702', '21227', '0', '0', '80', '20000', '12000', '5000', '11', '39060', '1', '0', '11', '34451', '1', '0', '0', '0', '0', '0', 'Tidewalker Harpooner - Casts Throw and Impale'),



-- Tidewalker Hydromancer (SimpleAI Conversion)

('2122801', '21228', '0', '0', '85', '30000', '30000', '3000', '11', '34353', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Hydromancer - Casts Frost Shock'),

('2122802', '21228', '0', '0', '80', '30000', '20000', '2000', '11', '36989', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Hydromancer - Casts Frost Nova'),

('2122803', '21228', '0', '0', '90', '30000', '10000', '1000', '11', '38659', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Hydromancer - Casts Frostbolt'),



-- Tidewalker Shaman (SimpleAI Conversion)

('2122601', '21226', '0', '0', '85', '12000', '5000', '2000', '11', '31764', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Hydromancer - Casts Lightning Bolt'),

('2122602', '21226', '0', '0', '80', '30000', '12000', '2000', '11', '39066', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Hydromancer - Casts Chain Lightning'),

('2122603', '21226', '6', '0', '100', '0', '0', '0', '11', '39067', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Hydromancer - Casts Lightning Shield on Aggro'),



-- Tidewalker Warrior (SimpleAI Conversion)

('2122501', '21225', '0', '0', '85', '20000', '15000', '5000', '11', '35949', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Warrior - Casts Bloodthirst'),

('2122502', '21225', '0', '0', '80', '18000', '6000', '4000', '11', '39069', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Warrior - Casts Uppercut'),

('2122503', '21225', '6', '0', '100', '0', '0', '0', '11', '42459', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Warrior - Casts Dual Wield on Aggro'),

('2122504', '21225', '4', '0', '100', '30', '0', '0', '11', '43139', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tidewalker Warrior - Casts Frenzy at 30% HP'),



-- Coilfang Serpentguard (SimpleAI Conversion)

('2129801', '21298', '0', '0', '85', '8000', '3000', '0', '11', '23920', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilfang Serpentguard - Casts Spell Reflection'),



-- Coilfang Fathom-Witch (SimpleAI Conversion)

('2129901', '21299', '0', '0', '85', '12000', '5000', '2000', '11', '37122', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilfang Fathom-Witch - Casts Domination'),

('2129902', '21299', '0', '0', '85', '20000', '15000', '5000', '11', '36127', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilfang Fathom-Witch - Casts Shadow Nova'),

('2129903', '21299', '0', '0', '75', '15000', '11000', '5000', '11', '40185', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Coilfang Fathom-Witch - Casts Shadow Bolt'),



-- Apprentice Star Scryer (SimpleAI Conversion)

('2004301', '20043', '0', '0', '100', '250000', '15000', '0', '11', '40424', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Apprentice Star Scryer - Casts Arcane Volley'),

('2004302', '20043', '0', '0', '100', '19000', '17000', '0', '11', '27082', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Apprentice Star Scryer - Casts Arcane Explosion'),



-- Star Scryer (SimpleAI Conversion)

('2003401', '20034', '0', '0', '85', '20000', '15000', '0', '11', '38626', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Star Scryer - Casts Domination'),

('2003402', '20034', '0', '0', '100', '350000', '25000', '0', '11', '37124', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Star Scryer - Casts Starfall'),

('2003403', '20034', '0', '0', '75', '25000', '30000', '0', '11', '37126', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Star Scryer - Casts Arcane Blast'),



-- Astromancer (SimpleAI Conversion)

('2003301', '20033', '0', '0', '85', '22000', '15000', '0', '11', '33933', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Astromancer - Casts Blast Wave'),

('2003302', '20033', '6', '0', '100', '0', '0', '0', '11', '30482', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Astromancer - Casts Molten Armor on Aggro'),

('2003303', '20033', '0', '0', '85', '25000', '19000', '0', '11', '29922', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Astromancer - Casts Fireball Volley'),

('2003304', '20033', '0', '0', '75', '20000', '25000', '0', '11', '37110', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Astromancer - Casts Fire Blast'),



-- Astromancer Lord (SimpleAI Conversion)

('2004601', '20046', '0', '0', '85', '22000', '15000', '0', '11', '33933', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Astromancer Lord - Casts Blast Wave'),

('2004602', '20046', '6', '0', '100', '0', '0', '0', '11', '35265', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Astromancer Lord - Casts Fire Shield on Aggro'),

('2004603', '20046', '0', '0', '85', '25000', '19000', '0', '11', '29922', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Astromancer Lord - Casts Fireball Volley'),

('2004604', '20046', '0', '0', '75', '20000', '25000', '0', '11', '37110', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Astromancer Lord - Casts Fire Blast'),

('2004605', '20046', '0', '0', '75', '29000', '22000', '0', '11', '37289', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Astromancer Lord - Casts Dragons Breath'),



-- Bloodwarder Vindicator (SimpleAI Conversion)

('2003201', '20032', '0', '0', '75', '15000', '12000', '0', '11', '29380', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Vindicator - Casts Cleanse (Self Cast due to Core Limitation)'),

('2003202', '20032', '0', '0', '70', '30000', '30000', '0', '11', '37257', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Vindicator - Casts Flash of Light (Self Cast due to Core Limitation)'),

('2003203', '20032', '0', '0', '85', '20000', '20000', '0', '11', '37251', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Vindicator - Casts Hammer of Wrath'),

('2003204', '20032', '0', '0', '85', '35000', '15000', '0', '11', '39077', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Vindicator - Casts Fire Blast'),



-- Bloodwarder Legionnaire (SimpleAI Conversion)

('2003101', '20031', '6', '0', '100', '0', '0', '0', '11', '42459', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Legionnaire - Casts Dual Wield on Aggro'),

('2003102', '20031', '0', '0', '85', '27000', '10000', '0', '11', '29851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Legionnaire - Casts Whirlwind'),

('2003103', '20031', '0', '0', '85', '25000', '20000', '0', '11', '15284', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Legionnaire - Casts Cleave'),

('2003104', '20031', '0', '0', '85', '22000', '6000', '0', '11', '30474', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Legionnaire - Casts Bloodthirst'),



-- Bloodwarder Marshal (SimpleAI Conversion)

('2003501', '20035', '6', '0', '100', '0', '0', '0', '11', '42459', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Marshal - Casts Dual Wield on Aggro'),

('2003502', '20035', '0', '0', '75', '29000', '10000', '0', '11', '36981', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Marshal - Casts Whirlwind'),

('2003503', '20035', '0', '0', '85', '22000', '6000', '0', '11', '30474', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Marshal - Casts Bloodthirst'),

('2003504', '20035', '0', '0', '85', '25000', '20000', '0', '11', '34996', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Marshal - Casts Uppercut'),



-- Phoenix-Hawk (SimpleAI Conversion)

('2003901', '20039', '0', '0', '75', '25000', '20000', '0', '11', '37156', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Phoenix-Hawk - Casts Dive'),

('2003902', '20039', '0', '0', '85', '19000', '15000', '0', '11', '37159', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Phoenix-Hawk - Casts Mana Burn'),



-- Crystalcore Sentinel (SimpleAI Conversion)

('2004101', '20041', '0', '0', '85', '45000', '25000', '0', '11', '37106', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Crystalcore Sentinel - Casts Charged Arcane Explosion'),

('2004102', '20041', '0', '0', '85', '25000', '15000', '0', '11', '40340', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Crystalcore Sentinel - Casts Trample'),

('2004103', '20041', '0', '0', '85', '30000', '30000', '0', '11', '37104', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Crystalcore Sentinel - Casts Overcharge'),



-- Crystalcore Mechanic (SimpleAI Conversion)

('2005201', '20052', '0', '0', '75', '35000', '15000', '0', '11', '37123', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Crystalcore Mechanic - Casts Saw Blade'),



-- Ancient Stone Keeper (SimpleAI Conversion)

('720601', '7206', '0', '0', '100', '45000', '5000', '0', '11', '10094', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ancient Stone Keeper - Casts Sand Storms'),



-- Galgann Firehammer (SimpleAI Conversion)

('729101', '7291', '0', '0', '100', '30000', '6000', '0', '11', '10447', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Galgann Firehammer - Casts Flame Shock'),

('729102', '7291', '0', '0', '100', '30000', '11000', '0', '11', '11306', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Galgann Firehammer - Casts Fire Nova'),

('729103', '7291', '0', '0', '100', '30000', '16000', '0', '11', '18543', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Galgann Firehammer - Casts Flame Lash'),

('729104', '7291', '0', '0', '100', '30000', '1000', '0', '11', '9482', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Galgann Firehammer - Casts Amplify Flames'),



-- Revelosh (SimpleAI Conversion)

('691001', '6910', '0', '0', '85', '31000', '8000', '0', '11', '15117', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Revelosh - Casts Chain Lightning'),

('691002', '6910', '0', '0', '85', '25000', '2000', '0', '11', '12167', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Revelosh - Casts Lightning Bolt'),



-- Grimlock (SimpleAI Conversion)

('485401', '4854', '0', '0', '100', '31000', '8000', '0', '11', '16006', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grimlock - Casts Chain Lightning'),

('485402', '4854', '0', '0', '100', '25000', '2000', '0', '11', '10392', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grimlock - Casts Lightning Bolt'),

('485403', '4854', '6', '0', '100', '0', '0', '0', '11', '6742', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grimlock - Casts Bloodlust on Aggro'),

('485404', '4854', '0', '0', '100', '120000', '3000', '0', '11', '7289', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grimlock - Casts Shrink'),

('485405', '4854', '0', '0', '100', '120000', '10000', '0', '11', '8143', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Grimlock - Casts Tremor Totem'),



-- Earthen Rocksmaher (SimpleAI Conversion)

('701101', '7011', '0', '0', '100', '4500', '2000', '4500', '11', '11998', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Earthen Rocksmaher - Casts Strike'),

('701102', '7011', '6', '0', '100', '0', '0', '0', '11', '2457', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Earthen Rocksmaher - Casts Battle Stance on Aggro'),



-- Earthen Sculptor (SimpleAI Conversion)

('701201', '7012', '0', '0', '85', '15000', '5000', '15000', '11', '25651', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Earthen Sculptor - Casts Flame Buffet'),

('701202', '7012', '6', '0', '100', '0', '0', '0', '11', '3055', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Earthen Sculptor - Casts Fire Shield IV on Aggro'),



-- Shadowforge Geologist (SimpleAI Conversion)

('703001', '7030', '0', '0', '80', '22000', '2000', '0', '11', '8814', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowforge Geologist - Casts Flame Spike'),

('703002', '7030', '0', '0', '85', '17000', '8000', '0', '11', '18958', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowforge Geologist - Casts Flame Lash'),



-- Shadowforge Relic Hunter (SimpleAI Conversion)

('484701', '4847', '4', '0', '85', '50', '0', '15000', '11', '12039', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowforge Relic Hunter - Casts Heal at 50% HP'),

('484702', '4847', '0', '0', '85', '25000', '8000', '0', '11', '15654', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowforge Relic Hunter - Casts Shadow Word Pain'),

('484703', '4847', '0', '0', '85', '15000', '4000', '0', '11', '6726', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowforge Relic Hunter - Casts Silence'),



-- Stone Steward (SimpleAI Conversion)

('486001', '4860', '0', '0', '85', '19000', '9000', '0', '11', '6524', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stone Steward - Ground Tremor'),



-- Stonevault Geomancer (SimpleAI Conversion)

('485301', '4853', '0', '0', '85', '17000', '6000', '0', '11', '21549', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stonevault Geomancer - Casts Fireball'),

('485302', '4853', '0', '0', '85', '35000', '2000', '0', '11', '25651', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stonevault Geomancer - Casts Flame Buffet'),



-- Stonevault Oracle (SimpleAI Conversion)

('485201', '4852', '4', '0', '100', '50', '0', '20000', '11', '15982', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stonevault Oracle - Casts Healing Wave at 50% HP'),

('485202', '4852', '0', '0', '100', '45000', '100', '0', '11', '945', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stonevault Oracle - Casts Lightning Shield'),

('485203', '4852', '0', '0', '100', '45000', '8000', '0', '11', '11899', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stonevault Oracle - Casts Healing Ward'),

('485204', '4852', '0', '0', '100', '35000', '4000', '0', '11', '8264', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stonevault Oracle - Casts Lava Spout Totem'),



-- Gurubashi Axe Thrower (SimpleAI Conversion)

('1135001', '11350', '0', '0', '80', '9000', '3000', '0', '11', '22887', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Axe Thrower - Casts Throw'),

('1135002', '11350', '4', '0', '100', '30', '0', '120000', '11', '39249', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Axe Thrower - Casts Enrage at 30% HP'),

('1135003', '11350', '0', '0', '100', '15000', '5000', '3000', '11', '24018', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Axe Thrower - Casts Axe Flurry'),



-- Hakkari Priest (SimpleAI Conversion)

('1183001', '11830', '0', '0', '80', '27000', '8000', '0', '11', '13704', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hakkari Priest - Casts Psychic Scream'),

('1183002', '11830', '0', '0', '100', '16000', '1000', '2000', '11', '24021', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hakkari Priest - Casts Anti-Magic Shield'),

('1183003', '11830', '0', '0', '100', '30000', '15000', '3000', '11', '24022', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hakkari Priest - Casts Cleanse Nova'),

('1183004', '11830', '4', '0', '100', '50', '0', '25000', '11', '39378', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hakkari Priest - Casts Heal at 50% HP'),



-- Razzashi Adder (SimpleAI Conversion)

('1137201', '11372', '0', '0', '85', '15000', '5000', '3000', '11', '24011', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Razzashi Adder - Casts Venom Spit'),

('1137202', '11372', '0', '0', '100', '20000', '3000', '0', '11', '24016', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Razzashi Adder - Casts Exploit Weakness'),

('1137203', '11372', '0', '0', '100', '6000', '7000', '0', '11', '3391', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Razzashi Adder - Casts Thrash'),



-- Gurubashi Headhunter (SimpleAI Conversion)

('1135101', '11351', '0', '0', '85', '8000', '3000', '0', '11', '40317', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Headhunter - Casts Throw'),

('1135102', '11351', '0', '0', '100', '7000', '5000', '1000', '11', '24048', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Headhunter - Casts Whirling Trip'),

('1135103', '11351', '0', '0', '75', '20000', '9000', '1000', '11', '24049', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Headhunter - Casts Impale'),

('1135104', '11351', '0', '0', '85', '18000', '14000', '0', '11', '15708', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Headhunter - Casts Mortal Strike'),



-- Gurubashi Berserker (SimpleAI Conversion)

('1135201', '11352', '0', '0', '75', '15000', '2000', '0', '11', '16508', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Berserker - Casts Intimidating Roar'),

('1135202', '11352', '0', '0', '100', '12000', '10000', '0', '11', '10101', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Berserker - Casts Knock Away'),

('1135203', '11352', '0', '0', '90', '13000', '5000', '5000', '11', '33967', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Berserker - Casts Thunderclap'),

('1135204', '11352', '4', '0', '100', '20', '0', '120000', '11', '34970', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Berserker - Casts Enrage at 20% HP'),



-- Hakkari Blood Priest (SimpleAI Conversion)

('1134001', '11340', '0', '0', '85', '15000', '5000', '3000', '11', '24617', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hakkari Blood Priest - Casts Blood Funnel'),

('1134002', '11340', '0', '0', '100', '15000', '10000', '0', '11', '17201', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hakkari Blood Priest - Casts Dispel Magic'),

('1134003', '11340', '4', '0', '100', '30', '0', '10000', '11', '24618', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hakkari Blood Priest - Casts Drain Life'),



-- Gurubashi Bat Rider (SimpleAI Conversion)

('1475001', '14750', '6', '0', '100', '0', '0', '0', '11', '19778', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Bat Rider - Casts Demoralizing Shout on Aggro'),

('1475002', '14750', '0', '0', '100', '25000', '8000', '0', '11', '5115', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Bat Rider - Casts Battle Command'),

('1475003', '14750', '4', '0', '100', '40', '0', '180000', '11', '24339', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Bat Rider - Casts Infected Bite at 40% HP'),

('1475004', '14750', '0', '0', '85', '6000', '6000', '0', '11', '3391', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurubashi Bat Rider - Casts Thrash'),



-- Corrupt Earth Totem

('2170401', '21704', '3', '0', '100', '0', '0', '0', '11', '37204', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Corrupt Earth Totem - Channeled Earth Shield on Eykenen'),

('2170402', '21704', '8', '0', '100', '0', '0', '0', '11', '37203', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Corrupt Earth Totem - Summon Corrupted Earth Elemental'),



--  Hatefury Satyr

('467001', '4670','3', '0','100', '1000', '0', '0', '11', '6920', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hatefury Rogue - Hide'),

('467002', '4670','4','0','100','20','0','0','11','12795','0','0','0','0','0','0','0','0','0','0','Hatefury Rogue - Enrage'),

('467101', '4671','0','0','100','20000','0','0','11','13298','1','1','0','0','0','0','0','0','0','0','Hatefury Trickster - Poison'),

('467102', '4671','4','0','100','20','0','0','11','12795','0','0','0','0','0','0','0','0','0','0','Hatefury Trickster - Enrage'),

('467201', '4672','4','0','100','20','0','0','11','12795','0','0','0','0','0','0','0','0','0','0','Hatefury Fellsworn - Enrage'),

('467301', '4673','4','0','100','20','0','0','11','12795','0','0','0','0','0','0','0','0','0','0','Hatefury Betrayer - Enrage'),

('467401', '4674','0','0','100','11000','0','0','11','8355','1','1','0','0','0','0','0','0','0','0','Hatefury Shadowstalker - Exploit Weakness'),

('467402', '4674','0','0','100','15000','5000','0','11','12540','1','1','0','0','0','0','0','0','0','0','Hatefury Shadowstalker - Gouge'),

('467403', '4674','4','0','100','20','0','0','11','12795','0','0','0','0','0','0','0','0','0','0','Hatefury Shadowstalker - Enrage'),

('467501', '4675','0','2','100','10000','10000','0','11','1094','1','1','20','1','0','0','0','0','0','0','Hatefury Hellcaller - Immolate'),

('467502', '4675','0','2','100','20000','2000','0','11','5740','1','0','20','0','0','0','0','0','0','0','Hatefury Hellcaller - Rain Of Fire'),

('467503', '4675','5','2','100','5','0','0','23','1','0','0','20','1','0','0','0','0','0','0','Hatefury Hellcaller - Increment phase when OOM'),

('467504', '4675','4','2','100','20','0','0','11','12795','0','0','0','0','0','0','0','0','0','0','Hatefury Hellcaller - Enrage'),

('467505', '4675','4','1','100','20','0','0','11','12795','0','0','0','0','0','0','0','0','0','0','Hatefury Hellcaller - Enrage'),



-- Eclipsion Mobs

('1979201', '19792','0','0','100','15000','7000','15000','11','35871','1','0','0','0','0','0','0','0','0','0','Eclipsion Centurion - Cast Spellbreaker'),

('1979202', '19792','4','0','100','20','0','0','11','37487','0','0','0','0','0','0','0','0','0','0','Eclipsion Centurion - Cast Blood Heal'),

('1979601', '19796','0','0','100','27500','27500','27500','11','37986','1','0','0','0','0','0','0','0','0','0','Eclipsion Archmage - Cast Ancient Fire'),

('1979602', '19796','0','0','100','21500','7500','21500','11','38636','1','0','0','0','0','0','0','0','0','0','Eclipsion Archmage - Cast Scorch'),

('1979603', '19796','0','0','100','35000','15000','35000','11','41379','1','0','0','0','0','0','0','0','0','0','Eclipsion Archmage - Cast Flamestrike'),

('1980601', '19806','0','0','100','10000','2500','10000','11','38313','1','0','0','0','0','0','0','0','0','0','Eclipsion Bloodwarder - Cast Pummel'),

('1980602', '19806','4','0','100','35','0','0','11','24437','4','0','0','0','0','0','0','0','0','0','Eclipsion Bloodwarder - Cast Blood Leech'),

('2050201', '20502','0','0','100','15000','2500','15000','11','37985','1','0','0','0','0','0','0','0','0','0','Eclipsion Dragonhawk - Cast Fire Breath'),

('2201601', '22016','4','0','100','20','0','0','11','37487','0','0','0','0','0','0','0','0','0','0','Eclipsion Soldier - Cast Blood Heal'),

('2201701', '22017','0','0','100','13500','10000','13500','11','29956','1','0','0','0','0','0','0','0','0','0','Eclipsion Spellbinder - Cast Arcane Missiles'),

('2201702', '22017','3','0','100','18000','0','0','11','36843','1','0','0','0','0','0','0','0','0','0','Eclipsion Spellbinder - Cast Slow'),

('2201801', '22018','0','0','100','120000','1000','120000','11','2048','0','0','0','0','0','0','0','0','0','0','Eclipsion Cavalier - Cast Battle Shout'),

('2201802', '22018','0','0','100','17500','10000','25000','11','35871','1','0','0','0','0','0','0','0','0','0','Eclipsion Cavalier - Cast Spellbreaker'),



-- Earthen Mobs

('739601', '7396','0','0','100','4500','2000','4500','11','43298','1','0','0','0','0','0','0','0','0','0','Earthen Stonebreaker - Cast Strike'),

('739602', '7396','6','0','100','0','0','0','11','2457','0','0','0','0','0','0','0','0','0','0','Earthen Stonebreaker - Cast Battle Stance on Aggro'),

('739701', '7397','0','0','100','10000','5000','10000','11','25651','1','0','0','0','0','0','0','0','0','0','Earthen Stonecarver - Cast Flame Buffet'),

('739702', '7397','6','0','100','0','0','0','11','3055','0','0','0','0','0','0','0','0','0','0','Earthen Stonecarver - Cast Flame Buffet on Aggro'),



-- Bog Giant

('1772301', '17723', '0', '0', '100', '14000', '8000', '0', '11', '40340', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Bog Giant - Cast Trample'),

('1772302', '17723', '0', '0', '100', '15500', '5000', '0', '11', '32065', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bog Giant - Cast Fungal Decay'),



-- Lykul Stinger

('1963201', '19632', '0', '0', '75', '15000', '2500', '0', '11', '40078', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Lykul Stinger - Cast Poison Spit'),

('1963202', '19632', '0', '0', '100', '10000', '10000', '2500', '11', '34392', '0', '1', '3', '149', '0', '0', '0', '0', '0', '0', 'Lykul Stinger - Cast Stinger Frenzy on self'),



-- Lykul Wasp

('1773201', '17732', '0', '0', '100', '4500', '500', '500', '11', '39204', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Lykul Wasp - Cast Poison Spit'),



-- Murkblood Healer 

(1773001, 17730, 4, 0, 100, 65, 1, 15000, 11, 32769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Murkblood Healer - Cast Holy Light on self'), 

(1773002, 17730, 4, 0, 100, 30, 1, 15000, 11, 38209, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Murkblood Healer - Cast Heal on self'), 

(1773003, 17730, 0, 0, 70, 15000, 15000, 0, 11, 30604, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Murkblood Healer - Cast Prayer of Healing'), 



-- Murkblood Oracle

('1777101', '17771', '0', '0', '100', '6100', '2100', '2000', '11', '25306', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Oracle - Cast Fireball'),

('1777102', '17771', '0', '0', '100', '9100', '4100', '4000', '11', '38697', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Oracle - Cast Frostbolt'),

('1777103', '17771', '0', '0', '100', '13000', '13000', '4000', '11', '32365', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Oracle - Cast Frost Nova'),

('1777104', '17771', '0', '0', '100', '9100', '9100', '9000', '11', '24668', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Oracle - Cast Shadowbolt'),

('1777105', '17771', '0', '0', '100', '9100', '9100', '9000', '11', '30938', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Oracle - Cast Corruption'),



-- Murkblood Spearman

('1772901', '17729', '0', '0', '100', '12000', '12000', '2000', '11', '31407', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Spearman - Cast Viper Sting'),

('1772902', '17729', '0', '0', '100', '1510', '0', '0', '11', '32248', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Spearman - Cast Spear Throw'),

('1772903', '17729', '1', '0', '100', '750', '100', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Spearman - Ranged Mob'),



-- Murkblood Tribesman

('1772801', '17728', '0', '0', '100', '10000', '10000', '2500', '11', '31754', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murkblood Tribesman - Cast Strike'),

('1772802', '17728', '4', '0', '100', '20', '1', '0', '11', '33653', '0', '1', '3', '151', '0', '0', '0', '0', '0', '0', 'Murkblood Tribesman - Cast Enrage'),



-- Underbat

('1772401', '17724', '0', '0', '100', '7500', '7500', '2500', '11', '34171', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Underbat - Cast Tentacle Lash'),



-- Underbog Lord

('1773401', '17734', '0', '0', '100', '17500', '8500', '2500', '11', '40434', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Underbog Lord - Cast Knock Away'),

('1773402', '17734', '0', '0', '100', '13000', '4000', '0', '11', '32065', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Underbog Lord - Cast Fungal Decay'),



-- Underbog Lurker

('1772501', '17725', '6', '0', '100', '0', '0', '0', '11', '34161', '0', '0', '3', '152', '0', '0', '0', '0', '0', '0', 'Underbog Lurker - Cast Wild Growth on self'),

('1772502', '17725', '0', '0', '100', '30000', '5500', '7000', '11', '31423', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Underbog Lurker - Cast Spore Disease'),

('1772503', '17725', '0', '0', '100', '12500', '12500', '500', '11', '31425', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Underbog Lurker - Cast Spore Explode'),

('1772504', '17725', '1', '0', '100', '15000', '100', '0', '0', '0', '0', '0', '3', '153', '0', '0', '0', '0', '0', '0', 'Underbog Lurker - Remove Wild Growth on self'),



-- Underbog Shambler

('1787101', '17871', '0', '0', '100', '12500', '12500', '2500', '11', '32329', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Underbog Shambler - Cast Itchy Spores'),

('1787102', '17871', '4', '0', '100', '75', '1', '25000', '11', '34163', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Underbog Shambler - Cast Fungal Regrowth on self'),



-- Wrathfin Myrmidon

('1772601', '17726', '0', '0', '100', '8000', '3000', '2500', '11', '31410', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathfin Myrmidon - Cast Coral Cut'),



-- Wrathfin Sentry

('1772701', '17727', '0', '0', '100', '8000', '8000', '2500', '11', '31754', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathfin Sentry - Cast Strike'),

('1772702', '17727', '6', '0', '50', '100', '0', '0', '0', '0', '0', '0', '1', '154', '0', '0', '0', '0', '0', '0', 'Wrathfin Sentry - Say on Aggro'),



-- Wrathfin Warrior

('1773501', '17735', '4', '0', '100', '20', '1', '0', '11', '33653', '0', '1', '3', '151', '0', '0', '0', '0', '0', '0', 'Wrathfin Warrior - Cast Enrage'),

('1773502', '17735', '0', '0', '100', '10000', '10000', '1000', '11', '33871', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathfin Warrior - Cast Shield Bash'),

('1773503', '17735', '0', '0', '100', '8000', '8000', '1000', '11', '31754', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wrathfin Warrior - Cast Strike'),



-- Eldreth Trash Mobs

('1146901', '11469','0','0','100','50000','25000','2500','11','16843','0','0','0','0','0','0','0','0','0','0','Eldreth Seether - Cast Crimson Fury'),

('1146902', '11469','4','0','100','10','0','0','11','8269','0','0','0','0','0','0','0','0','0','0','Eldreth Seether - Cast Enrage at 10%'),

('1147001', '11470','0','0','100','21000','15000','20000','11','13323','4','0','0','0','0','0','0','0','0','0','Eldreth Sorcerer - Cast Polymorph'),

('1147002', '11470','0','0','100','30000','5000','10000','11','19305','1','0','0','0','0','0','0','0','0','0','Eldreth Sorcerer - Cast Starshards'),

('1147003', '11470','0','0','100','11000','1000','2000','11','45302','1','0','0','0','0','0','0','0','0','0','Eldreth Sorcerer - Cast Chain Lightning'),

('1147101', '11471','0','0','80','15000','5000','2000','11','23412','1','0','0','0','0','0','0','0','0','0','Eldreth Apparition - Cast Frostbolt'),

('1147102', '11471','6','0','100','0','0','0','11','7301','0','0','0','0','0','0','0','0','0','0','Eldreth Apparition - Cast Frost Armor on Aggro'),

('1147103', '11471','0','0','100','7500','10000','20000','11','39268','4','0','0','0','0','0','0','0','0','0','Eldreth Apparition - Cast Chains of Ice'),

('1147104', '11471','0','0','100','20000','11000','25000','11','22746','1','0','0','0','0','0','0','0','0','0','Eldreth Apparition - Cast Cone of Cold'),

('1147201', '11472','0','0','100','20000','5000','10000','11','29505','1','0','0','0','0','0','0','0','0','0','Eldreth Spirit - Cast Banshee Shriek'),

('1147202', '11472','0','0','100','15000','1000','7000','11','22743','1','0','0','0','0','0','0','0','0','0','Eldreth Spirit - Cast Ribbon of Souls'),

('1147301', '11473','0','0','100','15000','5000','1000','11','29921','0','0','0','0','0','0','0','0','0','0','Eldreth Spectre - Cast Phasing Invisibility'),

('1147501', '11475','0','0','100','20000','7000','15000','11','17831','1','0','0','0','0','0','0','0','0','0','Eldreth Phantasm - Cast Call of the Grave'),

('1147502', '11475','0','0','50','140000','25000','1000','11','36697','1','0','0','0','0','0','0','0','0','0','Eldreth Phantasm - Cast Shrink'),

('1439801', '14398','0','0','100','17000','5000','8000','11','25779','1','0','0','0','0','0','0','0','0','0','Eldreth Darter - Cast Mana Burn'),

('1439802', '14398','0','0','100','30000','10000','10000','11','35944','0','0','0','0','0','0','0','0','0','0','Eldreth Darter - Cast Power Word: Shield'),



-- Blood Furnance Trash Mobs

('1737001', '17370', '6', '0', '100', '0', '0', '0', '1', '157', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Laughing Skull Enforcer - Say on Aggro'),

('1737002', '17370', '0', '0', '100', '8000', '8000', '4000', '11', '30688', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Laughing Skull Enforcer - Shield Slam'),

('1737003', '17370', '0', '0', '100', '6000', '4000', '4000', '11', '31754', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Laughing Skull Enforcer - Cast Strike'),

('1737101', '17371', '0', '0', '100', '4000', '4000', '2000', '11', '31618', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Warlock - Ccast Shadow Bolt'),

('1737102', '17371', '0', '0', '100', '10000', '1000', '5000', '11', '37113', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Warlock - Cast Corruption'),

('1739501', '17395', '1', '0', '100', '1000', '0', '0', '11', '30853', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Summoner - Summon Seductress'),

('1739502', '17395', '1', '0', '100', '6500', '0', '0', '11', '30851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Summoner - Summon Mana hound'),

('1739503', '17395', '0', '0', '100', '8000', '12000', '7000', '11', '22275', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Summoner - Cast Flamestrike'),

('1739504', '17395', '0', '0', '100', '4000', '14500', '4000', '11', '24374', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Summoner - Cast Fireball'),

('1739701', '17397', '0', '0', '100', '4000', '5000', '2000', '11', '27814', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Adept - Cast Kick'),

('1739702', '17397', '6', '0', '100', '0', '0', '0', '6', '158', '159', '160', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Adept - Random Say on Aggro'),

('1739703', '17397', '4', '0', '100', '15', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadowmoon Adept - Flee at 15% HP'),

('1739901', '17399', '0', '0', '100', '6000', '5000', '4000', '11', '32202', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Seductress - Cast Lash of Pain'),

('1741401', '17414', '0', '0', '100', '15000', '17000', '5000', '11', '30846', '4', '0', '5', '155', '0', '0', '0', '0', '0', '0', 'Orc Technician - Summon Proximity Mine (Effect Not Handled by Core Properly Yet'),

('1741402', '17414', '0', '0', '100', '5000', '1000', '2000', '11', '40062', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orc Technician - Cast Throw Dynamite'),

('1741403', '17414', '0', '0', '100', '12000', '6000', '6000', '11', '38491', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orc Technician - Cast Silence'),

('1741601', '17416', '0', '0', '100', '10000', '1000', '5000', '11', '34942', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orc Captive - Cast Shadow Word Pain'),

('1741602', '17416', '4', '0', '100', '30', '0', '5000', '11', '17843', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Orc Captive - Cast Flash Heal'),

('1747701', '17477', '0', '0', '100', '4000', '4000', '2000', '11', '31620', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hellfire Imp - Cast Fireball'),

('1749101', '17491', '0', '0', '100', '10000', '8000', '5000', '11', '41389', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Laughing Skull Rogue - Cast Kidney Shot'),

('1749102', '17491', '3', '0', '100', '1000', '100', '0', '11', '32199', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Laughing Skull Rogue - Cast Stealth'),

('1749103', '17491', '0', '0', '100', '15000', '2000', '5000', '11', '30470', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Laughing Skull Rogue - Cast Slice and Dice'),

('1749104', '17491', '6', '0', '100', '0', '0', '0', '1', '156', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Laughing Skull Rogue - Say on Aggro'),

('1762401', '17624', '2', '0', '100', '120000', '1000', '10000', '11', '38551', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Laughing Skull Warden - Cast Stealth Detection'),

('1762402', '17624', '0', '0', '100', '5000', '5000', '3000', '11', '38233', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Laughing Skull Warden - Cast Shield Bash'),

('1762601', '17626', '4', '0', '100', '50', '0', '0', '11', '8599', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Laughing Skull Legionaire - Cast Enrage'),

('1762602', '17626', '0', '0', '100', '8000', '8000', '4000', '11', '30471', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Laughing Skull Legionaire - Cast Uppercut'),



-- Kaz'rogal

('1788801', '17888', '6', '0', '100', '100', '0', '0', '2', '161', '0', '0', '4', '11015', '0', '0', '0', '0', '0', '0', 'Kazrogal - Speech on Aggro'),

('1788802', '17888', '0', '0', '100', '6000', '5000', '15000', '11', '31345', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kazrogal - Cast Cleave'),

('1788803', '17888', '0', '0', '100', '15000', '15000', '10000', '11', '36835', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kazrogal - Cast War Stomp'),

('1788804', '17888', '1', '0', '100', '60000', '0', '0', '11', '31447', '0', '0', '7', '162', '163', '-1', '9', '11016', '11052', '-1', 'Kazrogal - First Cast Mark Of Kazrogal w/ Yells'),

('1788805', '17888', '1', '0', '100', '110000', '0', '0', '11', '31447', '0', '0', '7', '162', '163', '-1', '9', '11016', '11052', '-1', 'Kazrogal - Second Cast Mark Of Kazrogal w/ Yells'),

('1788806', '17888', '1', '0', '100', '150000', '0', '0', '11', '31447', '0', '0', '7', '162', '163', '-1', '9', '11016', '11052', '-1', 'Kazrogal - Third Cast Mark Of Kazrogal w/ Yells'),

('1788807', '17888', '1', '0', '100', '180000', '0', '0', '11', '31447', '0', '0', '7', '162', '163', '-1', '9', '11016', '11052', '-1', 'Kazrogal - Fourth Cast Mark Of Kazrogal w/ Yells'),

('1788808', '17888', '1', '0', '100', '200000', '0', '0', '11', '31447', '0', '0', '7', '162', '163', '-1', '9', '11016', '11052', '-1', 'Kazrogal - Fifth Cast Mark Of Kazrogal w/ Yells'),

('1788809', '17888', '0', '0', '100', '10000', '210000', '0', '11', '31447', '0', '0', '7', '162', '163', '-1', '9', '11016', '11052', '-1', 'Kazrogal - Repeatable Casts Mark Of Kazrogal w/ Yells'),

('1788810', '17888', '7', '0', '100', '0', '0', '0', '7', '166', '164', '165', '9', '11017', '11053', '11054', '0', '0', '0', '0', 'Kazrogal - Yell on Kill'),

('1788811', '17888', '8', '0', '100', '100', '0', '0', '4', '11018', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kazrogal - Yell on Death'),



-- Whitebark's Spirit

('1945601', '19456', '6', '0', '100', '0', '0', '0', '1', '167', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Whitebark\'s Spirit - Say on Aggro'),

('1945602', '19456', '0', '0', '100', '14000', '1000', '500', '11', '19975', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Whitebark\'s Spirit - Cast Entangling Roots'),

('1945603', '19456', '4', '0', '100', '25', '0', '0', '1', '168', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Whitebark\'s Spirit - Say At 25% HP'),

('1945604', '19456', '4', '0', '100', '20', '0', '0', '26', '10166', '0', '0', '17', '35', '35', '0', '24', '0', '0', '0', 'Whitebark\'s Spirit - At 20% HP Quest Complete and Change Faction and Leave Combat'),



-- Hazzali Sillithid

('544101', '5441', '0', '0', '75', '15000', '1000', '0', '11', '19448', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hazzali Wasp - Poison'),

('545001', '5450', '0', '0', '75', '7500', '1000', '0', '11', '5416', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hazzali Stinger - Venom Sting'),

('545002', '5450', '8', '0', '100', '100', '0', '0', '11', '11023', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Hazzali Stinger - Summon Hazzali Parasites'), 

('545101', '5451', '3', '0', '100', '1000', '100', '0', '11', '6589', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hazzali Swarmer - Summon Swarm'),

('545102', '5451', '8', '0', '100', '100', '0', '0', '11', '11023', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Hazzali Swarmer - Summon Hazzali Parasites'), 

('545301', '5453', '0', '0', '75', '7500', '1000', '0', '11', '6016', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hazzali Tunneler - Pierce Armor'),

('545401', '5454', '0', '0', '75', '15000', '3000', '0', '11', '16169', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hazzali Sandreaver - Arcing Smash'),



-- Shy-Rotam

('1073701', '10737', '0', '0', '100', '5000', '5000', '5000', '11', '29321', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shy-Rotam - Casts AOE Fear'),

('1073702', '10737', '4', '0', '100', '50', '0', '0', '32', '10741', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Shy-Rotam - Summons Sian-Rotam at 50% HP'),



-- Bayne

('1035601', '10356', '0', '0', '75', '25000', '5000', '3000', '11', '11977', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bayne - Casts Rend'),

('1035602', '10356', '0', '0', '75', '16000', '2000', '0', '11', '3604', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bayne - Casts Tendon Rip'),



-- Expedition Researcher

('1768101', '17681', '13', '0', '25', '0', '0', '0', '1', '148', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Expedition Researcher - Say at Spawn'),



-- The Stockade (Must fix Defias Captive - Stands Still)

('166301', '1663', '0', '0', '80', '22000', '8000', '0', '11', '5246', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dextren Ward - Casts Intimidating Shout'),

('166302', '1663', '0', '0', '85', '6000', '3000', '2000', '11', '11976', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dextren Ward - Casts Strike'),

('166303', '1663', '6', '0', '100', '0', '0', '0', '11', '7165', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dextren Ward - Casts Battle Stance on Aggro'),

('166601', '1666', '0', '0', '85', '8000', '3000', '1000', '11', '8242', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Kam Deepfury - Casts Shield Slam'),

('169601', '1696', '6', '0', '100', '0', '0', '0', '11', '674', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Targorr the Dread - Casts Dual Wield on Aggro'),

('169602', '1696', '0', '0', '85', '8000', '3000', '0', '11', '3391', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Targorr the Dread - Casts Thrash'),

('169603', '1696', '4', '0', '100', '20', '0', '120000', '11', '8599', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Targorr the Dread - Casts Enrage at 20% HP'),

('170601', '1706', '0', '0', '85', '19000', '6000', '0', '11', '1766', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Prisoner - Casts Kick'),

('170602', '1706', '0', '0', '75', '16000', '12000', '0', '11', '6713', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Prisoner - Casts Disarm'),

('170701', '1707', '0', '0', '75', '12000', '5000', '2000', '11', '7159', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Captive - Casts Backstab'),

('170702', '1707', '0', '0', '85', '40000', '3000', '5000', '11', '3427', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Captive - Casts Infected Wound'),

('170801', '1708', '6', '0', '100', '0', '0', '0', '11', '7165', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Inmate - Casts Battle Stance on Aggro'),

('170802', '1708', '0', '0', '85', '20000', '4000', '0', '11', '6547', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Inmate - Casts Rend'),

('171101', '1711', '6', '0', '100', '0', '0', '0', '11', '674', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Convict - Casts Dual Wield on Aggro'),

('171102', '1711', '0', '0', '85', '12000', '3000', '0', '11', '6253', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Convict - Casts Backhand'),

('171501', '1715', '6', '0', '100', '0', '0', '0', '11', '9128', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Insurgent - Casts Battle Shout on Aggro'),

('171502', '1715', '0', '0', '85', '45000', '5000', '0', '11', '13730', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Insurgent - Casts Demoralizing Shout'),

('171601', '1716', '6', '0', '100', '0', '0', '0', '11', '674', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bazil Thredd - Casts Dual Wield on Aggro'),

('171602', '1716', '0', '0', '75', '18000', '3000', '4000', '11', '7964', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bazil Thredd - Casts Smoke Bomb'),

('171603', '1716', '0', '0', '75', '140000', '14000', '0', '11', '9128', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bazil Thredd - Casts Battle Shout'),

('171701', '1717', '0', '0', '85', '13000', '5000', '3000', '11', '45299', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hamhock - Casts Chain Lightning'),

('171702', '1717', '6', '0', '100', '0', '0', '0', '11', '6742', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hamhock - Casts Bloodlust on Aggro'),



-- The Deadmines

('63601', '636', '3', '0', '100', '0', '0', '0', '11', '6408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Blackguard - Casts Faded when OOC'),

('63602', '636', '6', '0', '100', '0', '0', '0', '11', '1785', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Blackguard - Casts Stealth on Aggro'),

('63603', '636', '0', '0', '80', '6000', '4000', '1500', '11', '14903', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Blackguard - Casts Rupture'),

('63604', '636', '0', '0', '85', '11000', '2000', '1000', '11', '1833', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Blackguard - Casts Cheap Shot'),

('61901', '619', '6', '0', '100', '0', '0', '0', '11', '12544', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Conjurer - Casts Frost Armor on Aggro'),

('61902', '619', '0', '0', '80', '5000', '1000', '0', '11', '9053', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Conjurer - Casts Fireball'),

('61903', '619', '4', '0', '100', '50', '0', '0', '11', '12746', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Conjurer - Summon Voidwalker when at 50% HP'),

('172901', '1729', '6', '0', '100', '0', '0', '0', '11', '12544', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Evoker - Casts Frost Armor on Aggro'),

('172902', '1729', '0', '0', '80', '15000', '5000', '0', '11', '11829', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Evoker - Casts Flamestrike'),

('172903', '1729', '0', '0', '90', '18000', '3000', '2000', '11', '4979', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Evoker - Casts Quick Flame Ward'),

('59401', '594', '0', '0', '100', '12000', '1000', '0', '11', '3418', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Henchman - Casts Improved Blocking'),

('59402', '594', '0', '0', '75', '9000', '3000', '0', '11', '8242', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Henchman - Casts Shield Slam'),

('12201', '122', '6', '0', '100', '0', '0', '0', '11', '674', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Highwayman - Casts Dual Wield on Aggro'),

('12202', '122', '0', '0', '85', '7000', '2000', '0', '11', '53', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Highwayman - Casts Backstab'),

('59001', '590', '0', '0', '80', '9000', '3000', '1000', '11', '6713', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Looter - Casts Disarm'),

('59002', '590', '0', '0', '85', '7000', '2000', '0', '11', '7159', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Looter - Casts Backstab'),

('172601', '1726', '0', '0', '80', '5000', '500', '500', '11', '9053', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Magician - Casts Fireball'),

('172602', '1726', '6', '0', '100', '0', '0', '0', '11', '5110', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Magician - Summon Living Flame on Aggro'),

('59801', '598', '0', '0', '75', '26000', '3000', '0', '11', '6016', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Miner - Casts Pierce Armor'),

('63401', '634', '0', '0', '75', '18000', '500', '0', '11', '5115', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Overseer - Casts Battle Command'),

('58901', '589', '6', '0', '100', '0', '0', '0', '11', '12544', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Pillager - Casts Frost Armor on Aggro'),

('58902', '589', '0', '0', '80', '6000', '1500', '0', '11', '20793', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Pillager - Casts Fireball'),

('65701', '657', '6', '0', '80', '0', '0', '0', '11', '5172', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Pirate - Summon Bloodsail Companion'),

('173201', '1732', '0', '0', '80', '33000', '6000', '0', '11', '122', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Squallshaper - Casts Frost Nova'),

('173202', '1732', '0', '0', '75', '12000', '8000', '0', '11', '2138', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Squallshaper - Casts Fire Blast'),

('173203', '1732', '6', '0', '100', '0', '0', '0', '11', '12544', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Squallshaper - Casts Frost Armor on Aggro'),

('441601', '4416', '0', '0', '75', '65000', '5000', '0', '11', '6016', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Strip Miner - Casts Pierce Armor'),

('441701', '4417', '0', '0', '85', '4000', '250', '0', '11', '6660', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Taskmaster - Casts Shoot'),

('441702', '4417', '0', '0', '75', '45000', '6000', '0', '11', '6685', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Taskmaster - Casts Piercing Shot'),

('172501', '1725', '0', '0', '85', '3000', '500', '0', '11', '6660', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Watchman - Casts Shoot'),

('441801', '4418', '0', '0', '85', '4000', '250', '0', '11', '9053', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Wizard - Casts Fireball'),

('441802', '4418', '0', '0', '75', '35000', '3000', '0', '11', '4979', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Wizard - Casts Quick Flame Ward'),

('441803', '4418', '0', '0', '85', '20000', '6000', '0', '11', '113', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Defias Wizard - Casts Chains of Ice'),

('173101', '1731', '0', '0', '85', '25000', '3500', '0', '11', '5159', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Goblin Craftsman - Casts Melt Ore'),

('62201', '622', '0', '0', '90', '39000', '500', '0', '11', '3605', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Goblin Engineer - Summon Remote-Controlled Golem'),

('62202', '622', '0', '0', '85', '5000', '2000', '1000', '11', '6660', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Goblin Engineer - Casts Shoot'),

('64101', '641', '0', '0', '75', '8000', '8000', '0', '11', '6466', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Goblin Woodcarver - Casts Axe Toss'), 

('64102', '641', '0', '0', '75', '7000', '3000', '0', '11', '40505', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Goblin Woodcarver - Casts Cleave'), 

('64701', '647', '0', '0', '85', '45000', '8000', '0', '11', '5208', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Captain Greenskin - Casts Poisoned Harpoon'), 

('64702', '647', '0', '0', '85', '6000', '3000', '0', '11', '40505', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Captain Greenskin - Casts Cleave'), 



-- Edwin VanCleef

('63901', '639', '0', '0', '85', '7000', '5000', '500', '11', '3391', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Edwin VanCleef - Casts Thrash'), 

('63902', '639', '6', '0', '100', '0', '0', '0', '11', '674', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Edwin VanCleef - Casts Dual Wield on Aggro'), 

('63903', '639', '4', '0', '100', '50', '26', '0', '11', '5200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Edwin VanCleef - Summons VanCleef\'s Allies at 50% HP'), 

('63904', '639', '4', '0', '100', '25', '0', '0', '11', '5200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Edwin VanCleef - Summons VanCleef\'s Allies at 25% HP'), 

('63905', '639', '6', '0', '100', '0', '0', '0', '4', '5780', '0', '0', '2', '169', '0', '0', '0', '0', '0', '0', 'Edwin VanCleef - Yell and Sound on Aggro'), 

('63906', '639', '7', '0', '100', '0', '0', '0', '4', '5781', '0', '0', '2', '170', '0', '0', '0', '0', '0', '0', 'Edwin VanCleef - Yell and Sound on Player Kill'), 

('63907', '639', '4', '0', '100', '66', '34', '0', '4', '5782', '0', '0', '2', '171', '0', '0', '0', '0', '0', '0', 'Edwin VanCleef - Yell and Sound at 66% HP'), 

('63908', '639', '4', '0', '100', '33', '0', '0', '4', '5783', '0', '0', '2', '172', '0', '0', '0', '0', '0', '0', 'Edwin VanCleef - Yell and Sound at 33% HP'), 

('63909', '639', '8', '0', '100', '0', '0', '0', '4', '5784', '0', '0', '2', '173', '0', '0', '0', '0', '0', '0', 'Edwin VanCleef - Yell and Sound at Creature Death'), 



-- Mr Smite

('64601', '646', '4', '0', '100', '66', '34', '0', '11', '6432', '1', '0', '25', '0', '0', '0', '11', '674', '0', '0', 'Mr Smite - Casts Smite Stomp at 66% HP'), 

('64602', '646', '4', '0', '100', '33', '0', '0', '11', '6432', '1', '0', '25', '0', '0', '0', '0', '0', '0', '0', 'Mr Smite - Casts Smite Stomp at 33% HP'), 

('64603', '646', '0', '0', '85', '6000', '5000', '500', '11', '3391', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mr Smite - Casts Thrash'), 

('64604', '646', '0', '0', '85', '11000', '9000', '0', '11', '6435', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mr Smite - Casts Smite Slam'), 

('64605', '646', '0', '0', '85', '20000', '3000', '0', '11', '6264', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mr Smite - Casts Nimble Reflexes'), 

('64606', '646', '6', '0', '100', '0', '0', '0', '4', '5777', '0', '0', '2', '174', '0', '0', '0', '0', '0', '0', 'Mr Smite - Yell and Sound on Aggro'), 

('64607', '646', '4', '0', '100', '66', '34', '0', '4', '5778', '0', '0', '2', '175', '0', '0', '0', '0', '0', '0', 'Mr Smite - Yell and Sound at 66% HP'), 

('64608', '646', '4', '0', '100', '33', '0', '0', '4', '5779', '0', '0', '2', '176', '0', '0', '0', '0', '0', '0', 'Mr Smite - Yell and Sound at 33% HP'),



-- Bleeding Hollow Archer

('1727001', '17270', '0', '0', '100', '10000', '10000', '2500', '11', '30990', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Bleeding Hollow Archer - Cast Multi Shot'),

('1727002', '17270', '0', '0', '100', '15000', '15000', '0', '11', '30614', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Bleeding Hollow Archer - Cast Aimed Shot'),



-- Bleeding Hollow Darkcaster

('1726901', '17269', '0', '0', '100', '3500', '2000', '1000', '11', '27074', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bleeding Hollow Darkcaster - Cast Scorch'),

('1726902', '17269', '0', '0', '100', '13000', '13000', '0', '11', '27212', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Bleeding Hollow Darkcaster - Cast Rain of Fire'),



-- Bleeding Hollow Scryer

('1747801', '17478', '0', '0', '100', '6000', '3000', '1500', '11', '27209', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bleeding Hollow Srycer - Cast Shadowbolt'),

('1747802', '17478', '0', '0', '100', '110000', '1000', '500', '11', '30002', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Bleeding Hollow Scryer - Cast Fear'),

('1747803', '17478', '6', '0', '25', '100', '0', '0', '1', '181', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bleeding Hollow Scryer - Say on aggro'),



-- Bonechewer Beastmaster

('1745501', '17455', '6', '0', '100', '0', '0', '0', '2', '179', '0', '0', '4', '10160', '0', '0', '0', '0', '0', '0', 'Bonechewer Beastmaster - Yell on Aggro'),

('1745502', '17455', '0', '0', '100', '30000', '4000', '0', '11', '24438', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bonechewer Beastmaster - Cast Battle Shout'),

('1745503', '17455', '1', '0', '100', '17000', '0', '0', '12', '17280', '1', '300000', '2', '180', '0', '0', '4', '10161', '0', '0', 'Bonechewer Beastmaster - Summon Hound 1 and Emote + Sound'),

('1745504', '17455', '1', '0', '100', '17020', '0', '0', '12', '17280', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', 'Bonechewer Beastmaster - Summon Hound 2'),

('1745505', '17455', '1', '0', '50', '17020', '0', '0', '12', '17280', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', 'Bonechewer Beastmaster - Summon Hound 3'),

('1745506', '17455', '1', '0', '20', '17030', '0', '0', '12', '17280', '1', '300000', '0', '0', '0', '0', '0', '0', '0', '0', 'Bonechewer Beastmaster - Summon Hound 4'),



-- Bonechewer Destroyer

('1727101', '17271', '0', '0', '100', '7500', '2000', '0', '11', '37335', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bonechewer Destroyer - Cast Mortal Strike'),

('1727102', '17271', '0', '0', '100', '10000', '10000', '0', '11', '10101', '1', '0', '13', '-35', '1', '0', '0', '0', '0', '0', 'Bonechewer Destroyer - Cast Knock Away'),



-- Bonechewer Hungerer

('1725901', '17259', '0', '0', '100', '6000', '6000', '1000', '11', '31754', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bonechewer Hungerer - Cast Strike'),

('1725902', '17259', '0', '0', '100', '11500', '11500', '1500', '11', '31955', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bonechewer Hungerer - Cast Disarm'),

('1725903', '17259', '0', '0', '100', '21000', '6000', '1000', '11', '29584', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bonechewer Hungerer - Cast Demoralizing Shout'),

('1725904', '17259', '0', '0', '50', '7500', '7500', '1000', '11', '30688', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bonechewer Hungerer - Cast Shield Slam'),

('1725905', '17259', '4', '0', '100', '15', '0', '0', '25', '0', '0', '0', '3', '177', '0', '0', '0', '0', '0', '0', 'Bonechewer Hungerer - Run Away In Fear'),



-- Bonechewer Ravener

('1726401', '17264', '0', '0', '100', '9000', '9000', '1000', '11', '30832', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bonechewer Ravener - Cast Kidney Shot'),



-- Bonechewer Ripper

('1728101', '17281', '1', '0', '60', '6000', '0', '0', '11', '33653', '0', '0', '3', '178', '0', '0', '0', '0', '0', '0', 'Bonechewer Ripper - Cast Enrage'),



-- Hellfire Sentry

('1751701', '17517', '0', '0', '100', '9000', '9000', '1000', '11', '30832', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hellfire Sentry - Cast Kidney Shot'),



-- Hellfire Watcher

('1730901', '17309', '4', '0', '100', '90', '0', '15500', '11', '37978', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hellfire Watcher - Cast Renew on self'),

('1730902', '17309', '4', '0', '100', '50', '0', '6000', '11', '32130', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Hellfire Watcher - Cast Heal on self'),

('1730903', '17309', '0', '0', '100', '15000', '4000', '0', '11', '34942', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hellfire Watcher - Cast Shadow Word: Pain'),



-- Shattered Hand Warhound

('1728001','17280','0','0','60','2500','4000','7500','11','30639','1','0','0','0','0','0','0','0','0','0','Shattered Hand Warhound - Cast Carnivorous Bite'),



-- Shadowmoon Houndmaster

('2301801', '23018','0','0','100','15000','3500','5000','11','34490','4','0','0','0','0','0','0','0','0','0','Shadowmoon Houndmaster - Cast Silencing Shot'),

('2301802', '23018','0','0','100','32000','10000','7500','11','31250','1','0','0','0','0','0','0','0','0','0','Shadowmoon Houndmaster - Cast Frost Nova'),

('2301803', '23018','0','0','100','45000','20000','5000','11','34100','4','0','0','0','0','0','0','0','0','0','Shadowmoon Houndmaster - Cast Volley'),



-- Shadowmoon Riding Hound

('2308301', '23083','0','0','100','12000','1000','2000','11','35570','4','0','0','0','0','0','0','0','0','0','Shadowmoon Riding Hound - Cast Charge'),



-- Shadowmoon Reaver

('2287901', '22879','0','0','100','20000','5000','3500','11','31729','4','0','0','0','0','0','0','0','0','0','Shadowmoon Reaver - Cast Mana Burn'),



-- Shadowmoon Weapon Master

('2304901', '23049','0','0','100','15000','1500','1000','11','30633','1','0','0','0','0','0','0','0','0','0','Shadowmoon Weapon Master - Cast Thunderclap'),

('2304902', '23049','0','0','100','20000','7500','1500','11','36835','1','0','0','0','0','0','0','0','0','0','Shadowmoon Weapon Master - Cast War Stomp'),



-- Shadowmoon Soldier

('2304701', '23047','0','0','100','20000','7500','5000','11','36835','1','0','0','0','0','0','0','0','0','0','Shadowmoon Soldier - Cast War Stomp'),

('2304702', '23047','0','0','100','15000','1500','7000','11','30633','1','0','0','0','0','0','0','0','0','0','Shadowmoon Soldier - Cast Thunderclap'),



-- Illidari Archon

('2340001', '23400','6','0','25','0','0','0','11','15473','0','0','0','0','0','0','0','0','0','0','Illidari Archon - Chance to Shadowform on aggro'),

('2340002', '23400','0','0','35','35000','20000','2000','11','24208','0','0','0','0','0','0','0','0','0','0','Illidari Archon - Chance to cast Great Heal'),

('2340003', '23400','0','0','100','25000','5000','10000','11','25364','1','0','0','0','0','0','0','0','0','0','Illidari Archon - Cast Smite'),

('2340004', '23400','0','0','100','30000','15000','5000','11','25387','1','0','0','0','0','0','0','0','0','0','Illidari Archon - Cast Mind Flay'),



-- Priestess of Delight

('2296201', '22962','0','0','100','20000','2000','15000','11','41351','4','0','0','0','0','0','0','0','0','0','Priestess of Delight - Cast Curse of Vitality'),



-- Illidari Assassin 

('2340301', '23403','0','0','100','45000','5000','10000','11','31619','0','0','0','0','0','0','0','0','0','0','Illidari Assassin - Cast Vanish'),

('2340302', '23403','0','0','100','40000','15000','2500','11','30013','1','0','0','0','0','0','0','0','0','0','Illidari Assassin - Cast Disarm'),



-- Illidari Blood Lord

('2339701', '23397','0','0','100','50000','500','20000','11','33581','0','0','0','0','0','0','0','0','0','0','Illidari Blood Lord - Cast Divine Shield'),

('2339702', '23397','0','0','100','35000','15000','15000','11','37369','1','0','0','0','0','0','0','0','0','0','Illidari Blood Lord - Cast Hammer of Justice'),



-- Illidari Battle-Mage

('2340201', '23402','0','0','100','30000','7500','20000','11','41382','1','0','0','0','0','0','0','0','0','0','Illidari Battle-Mage - Cast Blizzard'),

('2340202', '23402','0','0','100','35000','15000','10000','11','41481','1','0','0','0','0','0','0','0','0','0','Illidari Battle-Mage - Cast Flamestrike'),

('2340203', '23402','0','0','100','45000','20000','5000','11','39023','1','0','0','0','0','0','0','0','0','0','Illidari Battle-Mage - Cast Firebolt'),

('2340204', '23402','0','0','100','25000','2000','40000','11','29954','1','0','0','0','0','0','0','0','0','0','Illidari Battle-Mage - Cast Frostbolt'),



-- Promenade Sentinal

('2339401', '23394','0','0','100','50000','1000','5000','11','41360','4','0','0','0','0','0','0','0','0','0','Promenade Sentinal - Cast L5 Arcane Charge'),

('2339402', '23394','4','0','100','75','0','0','11','41349','1','0','0','0','0','0','0','0','0','0','Promenade Snetinal - Cast L4 Arcane Charge at 75% HP'),



-- Priestess of Dementia

('2295701', '22957','0','0','100','15000','5000','10000','11','41397','4','0','0','0','0','0','0','0','0','0','Priestess of Dementia - Cast Confusion'),



-- Spellbound Attendant

('2295901', '22959','0','0','100','20000','5000','5000','11','41396','4','0','0','0','0','0','0','0','0','0','Spellbound Attendant - Cast Sleep'),



-- Charming Courtesan

('2295501', '22955','0','0','100','20000','7500','15000','11','41346','1','0','0','0','0','0','0','0','0','0','Charming Courtesan - Cast Poisonous Throw'),



-- Temple Concubine

('2293901', '22939','0','0','100','15000','5000','5000','11','41338','1','0','0','0','0','0','0','0','0','0','Temple Concubine - Cast Love Tap'),

('2293902', '22939','0','0','100','25000','7500','1000','11','851','4','0','0','0','0','0','0','0','0','0','Temple Concubine - Cast Polymorph Sheep'),



-- Sister of Pleasure

('2296401', '22964','0','0','100','25000','7000','15000','11','38589','1','0','0','0','0','0','0','0','0','0','Sister of Pleasure - Cast Holy Nova'),

('2296402', '22964','0','0','35','45000','20000','20000','11','38580','0','0','0','0','0','0','0','0','0','0','Sister of Pleasure - Chacen to Cast Greater Heal'),



-- Sister of Pain

('2295601', '22956','0','0','75','35000','15000','15000','11','23920','0','0','0','0','0','0','0','0','0','0','Sister of Pain - Cast Spell Reflection'),



-- Bonechewer Blood Prophet

('2323701', '23237','0','0','100','15000','7500','7500','11','41229','1','0','0','0','0','0','0','0','0','0','Bonechewer Blood Prophet - Cast Bloodbolt'),

('2323702', '23237','6','0','100','0','0','0','11','41230','0','0','0','0','0','0','0','0','0','0','Bonechewer Blood Prophet - Cast Prophecy of Blood on Aggro'),



-- Bonechewer Blade Fury

('2323501', '23235','0','0','100','30000','10000','15000','11','40845','0','0','0','0','0','0','0','0','0','0','Bonechewer Blade Fury - Cast Fury'),



-- Bonechewer Shield Deciple

('2323601', '23236','0','0','100','20000','5000','10000','11','41213','1','0','0','0','0','0','0','0','0','0','Bonechewer Shield Deciple - Cast Throw Shield'),

('2323602', '23236','4','0','100','7','0','0','11','41196','0','0','0','0','0','0','0','0','0','0','Bonechewer Shield Deciple - Cast Shield Wall'),



-- Bonechewer Behemoth

('2319601', '23196','0','0','100','25000','1000','20000','11','41277','1','0','0','0','0','0','0','0','0','0','Bonechewer Behemoth - Cast Fiery Comet'),

('2319602', '23196','0','0','100','30000','15000','10000','11','41274','1','0','0','0','0','0','0','0','0','0','Bonechewer Behemoth - Cast Fel Stomp'),

('2319603', '23196','4','0','100','15','0','0','11','40743','0','0','0','0','0','0','0','0','0','0','Bonechewer Behemoth - Cast Enrage'),



-- Coilskar Harpooner

('2287401', '22874','0','0','100','15000','100','15000','11','31758','1','0','0','0','0','0','0','0','0','0','Coilskar Harpooner - Cast Spear Throw'),

('2287402', '22874','0','0','100','35000','20000','20000','11','38912','1','0','0','0','0','0','0','0','0','0','Coilskar Harpooner - Cast Hooked Net'),



-- Dragon Turtle

('2288501', '22885','0','0','100','25000','5000','1500','11','35008','4','0','0','0','0','0','0','0','0','0','Dragon Turtle - Cast Water Spit'),



-- Hyjal Friendly NPC's

('1791901', '17919','0','0','80','20000','6500','10000','11','31731','0','0','0','0','0','0','0','0','0','0','Alliance Footman - Cast Shield Wall'),

('1792001', '17920','0','0','75','50000','500','5000','11','31732','0','0','0','0','0','0','0','0','0','0','Alliance Knight - Cast Rallying Cry'),

('1792201', '17922','0','0','75','35000','10000','15000','11','31741','4','0','0','0','0','0','0','0','0','0','Alliance Sorceress - Cast Slow'),

('1792202', '17922','0','0','100','12000','7500','5000','11','31743','1','0','0','0','0','0','0','0','0','0','Alliance Sorceress - Cast Arcane Missile'),

('1792801', '17928','0','0','75','45000','32000','20000','11','31739','0','0','0','0','0','0','0','0','0','0','Alliance Priest - Cast Heal'),

('1792802', '17928','0','0','100','15000','10000','10000','11','31740','1','0','0','0','0','0','0','0','0','0','Alliance Priest - Cast Holy Smite'),

('1793201', '17932','0','0','100','10000','2500','5000','11','31754','1','0','0','0','0','0','0','0','0','0','Horde Grunt - Cast Strike'),

('1793301', '17933','0','0','100','10000','10000','20000','11','31755','1','0','0','0','0','0','0','0','0','0','Tauren Warrior - Cast War Stomp'),

('1793501', '17935','0','0','100','15000','5000','5000','11','31759','1','0','0','0','0','0','0','0','0','0','Horde Witch Doctor - Cast Holy Bolt'),

('1793502', '17935','0','0','100','60000','50000','20000','11','31760','0','0','0','0','0','0','0','0','0','0','Horde Witch Doctor - Cast Healing Ward'),

('1793503', '17935','6','0','100','0','0','0','11','31760','0','0','0','0','0','0','0','0','0','0','Horde Witch Doctor - Cast Healing Ward on Aggro'),

('1793601', '17936','6','0','100','0','0','0','11','31765','0','0','0','0','0','0','0','0','0','0','Horde Shaman - Cast Lightning Shield on Aggro'),

('1793602', '17936','0','0','100','15000','5000','5000','11','31764','1','0','0','0','0','0','0','0','0','0','Horde Shaman - Cast Lightning Bolt'),

('1793603', '17936','0','0','75','20000','20000','10000','11','6742','0','0','0','0','0','0','0','0','0','0','Horde Shaman - Cast Bloodlust'),



-- Botanica Trash Mobs

('1799301', '17993', '0', '0', '80', '18000', '10000', '7000', '11', '35158', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Protector - Cast Magic Reflective Shield'),

('1799302', '17993', '0', '0', '80', '6000', '6000', '6000', '11', '29765', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Protector - Cast Crystal Strike'),

('1799401', '17994', '0', '0', '100', '20000', '10000', '5000', '11', '34852', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Falconer - Cast Call of the Falcon'),

('1840401', '18404', '0', '0', '80', '15000', '10000', '5000', '11', '34821', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Steward - Cast Arcane Flurry'),

('1840501', '18405', '0', '0', '100', '10000', '4000', '5000', '11', '29885', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tempest Forge Peacekeeper - Cast Arcane Volley'),

('1840502', '18405', '0', '0', '70', '5000', '6000', '4000', '11', '30096', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tempest Forge Peacekeeper - Cast Arcane Explosion, id may be incorrect'),

('1841901', '18419', '0', '0', '80', '5000', '1000', '3000', '11', '34798', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Greenkeeper - Cast Greenkeeper\'s Fury'),

('1841902', '18419', '0', '0', '80', '6000', '5000', '4000', '11', '34800', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Greenkeeper - Cast Impending Coma'),

('1841903', '18419', '0', '0', '70', '6000', '8000', '4000', '11', '34797', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Greenkeeper - Cast Nature Shock'),

('1842001', '18420', '0', '0', '100', '5000', '5000', '3000', '11', '38725', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Geomancer - Cast Arcane Explosion'),

('1842002', '18420', '2', '0', '100', '12000', '1000', '0', '11', '35265', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Geomancer - Cast Fire Shield'),

('1842101', '18421', '2', '0', '100', '60000', '1000', '0', '11', '34355', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Researcher - Cast Poison Shield'),

('1842102', '18421', '0', '0', '70', '10000', '2000', '4000', '11', '34352', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Researcher - Cast Mind Shock'),

('1842103', '18421', '0', '0', '70', '10000', '5000', '4000', '11', '37332', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Researcher - Cast Frost Shock'),

('1842104', '18421', '0', '0', '70', '10000', '8000', '4000', '11', '34354', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Researcher - Cast Flame Shock'),

('1842201', '18422', '4', '0', '100', '60', '0', '21000', '11', '27637', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Botanist - Cast Regrowth'),

('1948601', '19486', '0', '0', '80', '20000', '10000', '5000', '11', '34358', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Chemist - Cast Vial of Poison'),

('1948602', '19486', '0', '0', '80', '10000', '5000', '5000', '11', '20712', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Chemist - Cast Flame Breath'),

('1950501', '19505', '2', '0', '100', '30000', '1000', '0', '11', '34173', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Channeler - Cast Sunseeker Blessing'),

('1950502', '19505', '0', '0', '70', '10000', '4000', '5000', '11', '34637', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Channeler - Cast Soul Channel'),

('1950503', '19505', '0', '0', '40', '10000', '14000', '5000', '11', '34634', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Channeler - Cast Sunseeker Aura'),

('1950701', '19507', '0', '0', '100', '30000', '1000', '2000', '11', '37788', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Gene-Splicer - Cast Death and Decay'),

('1950702', '19507', '4', '0', '100', '0', '50', '0', '12', '19598', '1', '0', '12', '19598', '1', '0', '0', '0', '0', '0', 'Sunseeker Gene-Splicer - Summon 2 Mutate Fleshlasher Adds'),

('1950801', '19508', '0', '0', '100', '10000', '2000', '5000', '11', '37823', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Herbalist - Cast Entangling Roots'),

('1950901', '19509', '0', '0', '100', '12000', '4000', '3000', '11', '37823', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Harvester - Cast Entangling Roots'),

('1950902', '19509', '0', '0', '60', '6000', '7000', '6000', '11', '34639', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sunseeker Harvester - Cast Polymorph'),

('1950903', '19509', '4', '0', '100', '50', '0', '0', '12', '19598', '1', '0', '12', '19598', '1', '0', '0', '0', '0', '0', 'Sunseeker Harvester - Summon 2 Mutate Fleshlasher Adds'),

('1951101', '19511', '0', '0', '60', '5000', '5000', '5000', '11', '34615', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Nethervine Inciter - Cast Mind Numbing Poison'),

('1951102', '19511', '0', '0', '100', '10000', '3000', '5000', '11', '36872', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Nethervine Inciter - Cast Deadly Poison'),

('1951201', '19512', '0', '0', '80', '4000', '5000', '4000', '11', '15496', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Nethervine Reaper - Cast Cleave'),

('1951202', '19512', '0', '0', '100', '12000', '1000', '4000', '11', '34626', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Nethervine Reaper - Cast Pale Death'),

('1951301', '19513', '0', '0', '80', '7000', '5000', '5000', '11', '29168', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mutate Fear-Shrieker - Cast Fear'),

('1963301', '19633', '3', '0', '100', '1000', '100', '0', '11', '34809', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Mender - Cast Holy Fury'),

('1963302', '19633', '0', '0', '80', '10000', '5000', '4000', '11', '38259', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Mender - Cast Mind Blast (Closest Match)'),

('1963303', '19633', '4', '0', '100', '30', '0', '5000', '11', '35096', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodwarder Mender - Cast Greater Heal'),

('1984301', '19843', '0', '0', '50', '7000', '7000', '3000', '11', '34614', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Nethervine Trickster - Cast Backstab'),

('1984302', '19843', '3', '0', '100', '1000', '100', '0', '11', '30831', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Nethervine Trickster - Cast Stealth'),

('1986501', '19865', '0', '0', '100', '10000', '6000', '5000', '11', '34643', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mutate Horror - Cast Corrode Armor'),

('2008301', '20083', '1', '0', '100', '1000', '100', '0', '11', '34809', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Summoned Bloodwarder Mender - Cast Holy Fury'),

('2008302', '20083', '0', '0', '80', '10000', '5000', '4000', '11', '38259', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Summoned Bloodwarder Mender - Cast Mind Blast (Closest Match)'),

('2008303', '20083', '4', '0', '100', '30', '0', '5000', '11', '35096', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Summoned Bloodwarder Mender - Cast Greater Heal'),



-- Darkwater Crocolisk

('1795201', '17952', '0', '0', '100', '10000', '2000', '0', '11', '34370', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Darkwater Crocolisk - Casts Jagged Tooth Snap'),

('2007501', '20075', '0', '0', '100', '10000', '2000', '0', '11', '34370', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Darkwater Crocolisk - Casts Jagged Tooth Snap'),



-- -------------------------------

-- ADDITIONS FOR ACID REVISION 001

-- -------------------------------



-- Zul'Farrack Trash Mobs

('760801', '7608', '4', '0', '100', '20', '0', '15000', '11', '10577', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murta Grimgut - Casts Heal at 20% HP'),

('760802', '7608', '4', '0', '100', '50', '21', '12000', '11', '11640', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murta Grimgut - Casts Renew at 50% HP'),

('760803', '7608', '0', '0', '85', '9000', '3000', '0', '11', '9734', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murta Grimgut - Casts Holy Smite'),

('760804', '7608', '6', '0', '100', '0', '0', '0', '11', '11974', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Murta Grimgut - Casts Power Word Shield on Aggro'),

('760601', '7606', '6', '0', '100', '0', '0', '0', '11', '12741', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Oro Eyegouge - Casts Curse of Weakness'),

('760602', '7606', '0', '0', '80', '25000', '6000', '1000', '11', '11962', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Oro Eyegouge - Casts Immolate'),

('760603', '7606', '0', '0', '80', '17000', '9000', '1250', '11', '36808', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Oro Eyegouge - Casts Rain of Fire'),

('760604', '7606', '0', '0', '75', '9000', '3500', '500', '11', '9613', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Oro Eyegouge - Casts Shadow Bolt'),

('760501', '7605', '0', '0', '80', '12000', '3000', '0', '11', '22416', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Raven - Casts Backstab'),

('760502', '7605', '0', '0', '80', '9000', '5000', '0', '11', '12540', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Raven - Casts Gouge'),

('760503', '7605', '6', '0', '100', '0', '0', '0', '11', '29651', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Raven - Casts Dual Wield on Aggro'),

('887601', '8876', '0', '0', '85', '25000', '9000', '0', '11', '11639', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Acolyte - Casts Shadow Word Pain'),

('887602', '8876', '0', '0', '85', '9000', '3000', '0', '11', '9613', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Acolyte - Shadow Bolt'),

('887603', '8876', '0', '0', '85', '135000', '1000', '0', '11', '11980', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Acolyte - Casts Curse of Weakness'),

('887604', '8876', '0', '0', '75', '15000', '6000', '0', '11', '11981', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Acolyte - Casts Mana Burn'),

('564901', '5649', '0', '0', '85', '9000', '7000', '0', '11', '11898', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Blood Drinker - Casts Blood Leech'),

('778901', '7789', '0', '0', '80', '24000', '6000', '0', '11', '14032', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Cretin - Casts Shadow Word Pain'),

('778902', '7789', '6', '0', '100', '0', '0', '0', '11', '20798', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Cretin - Casts Demon Skin on Aggro'),

('726801', '7268', '0', '0', '85', '6000', '2000', '0', '11', '3391', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Guardian - Casts Thrash'),

('564801', '5648', '0', '0', '75', '8000', '2000', '0', '11', '12471', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Shadowcaster - Casts Shadow Bolt'),

('564802', '5648', '0', '0', '85', '23000', '6000', '0', '11', '14032', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Shadowcaster - Casts Shadow Word Pain'),

('564803', '5648', '6', '0', '100', '0', '0', '0', '11', '20798', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Shadowcaster - Casts Demon Skin on Aggro'),

('564804', '5648', '0', '0', '100', '11000', '1000', '0', '11', '18396', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Shadowcaster - Casts Dismounting Blast'),

('724601', '7246', '0', '0', '85', '3000', '250', '250', '11', '15547', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Shadowhunter - Casts Shoot'),

('724602', '7246', '0', '0', '75', '20000', '5000', '0', '11', '11641', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Shadowhunter - Casts Hex'),

('724603', '7246', '6', '0', '100', '0', '0', '0', '11', '18395', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Shadowhunter - Casts Dismounting Shot on Aggro'),

('724701', '7247', '0', '0', '85', '7000', '3000', '0', '11', '11016', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Soul Eater - Casts Soul Bite'),

('724702', '7247', '4', '0', '100', '50', '0', '16000', '11', '7154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Soul Eater - Casts Dark Offering at 50% HP (Self Cast - Core Limitation)'),

('565001', '5650', '0', '0', '100', '45000', '6000', '0', '11', '4971', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Witch Doctor - Casts Healing Ward'),

('565002', '5650', '0', '0', '85', '35000', '3000', '0', '11', '8264', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Witch Doctor - Casts Lava Spout Totem'),

('565003', '5650', '4', '0', '100', '50', '0', '12000', '11', '11641', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Witch Doctor - Casts Flash Heal'),

('887701', '8877', '4', '0', '100', '30', '0', '0', '11', '8599', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sandfury Zealot - Casts Enrage at 30% HP'),

('726901', '7269', '1', '0', '100', '2000', '0', '0', '11', '3256', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarab - Casts Plague Cloud (Closest Match)'),

('760401', '7604', '0', '0', '85', '13000', '3000', '0', '11', '11972', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sergeant Bly - Casts Shield Bash'),

('760402', '7604', '0', '0', '80', '7000', '7000', '0', '11', '12170', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sergeant Bly - Casts Revenge'),

('815601', '8156', '0', '0', '85', '18000', '7000', '0', '11', '11020', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Servant of Antu\'sul - Casts Petrify'),

('812001', '8120', '0', '0', '85', '19000', '8000', '0', '11', '11020', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sul\'lithuz Abomination - Casts Petrify'),

('813801', '8138', '0', '0', '80', '5000', '3000', '0', '11', '3391', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sul\'lithuz Broodling - Casts Thrash'),

('809501', '8095', '0', '0', '85', '17000', '10000', '0', '11', '11020', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sul\'lithuz Sandcrawler - Casts Petrify'),

('760701', '7607', '0', '0', '85', '9000', '3000', '0', '11', '8858', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Weegli Blastfuse - Casts Bomb'),

('760702', '7607', '0', '0', '80', '70000', '6000', '0', '11', '21688', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Weegli Blastfuse - Casts Goblin Land Mine'),

('760703', '7607', '0', '0', '100', '3000', '1000', '0', '11', '6660', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Weegli Blastfuse - Casts Shoot'),

('727601', '7276', '0', '0', '80', '40000', '3000', '0', '11', '3427', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Zul\'Farrak Dead Hero - Casts Infected Wound'),



-- Venomlash Scorpid (Mob_Uldaman - SimpleAI Conversion PHASE-1)

('702201', '7022', '0', '0', '100', '35000', '3000', '0', '11', '8257', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Venomlash Scorpid - Casts Venom Sting'),



-- Overmaster Pyron (Mob_Overmaster_Pyron - SimpleAI Conversion PHASE-1)

('902601', '9026', '0', '0', '100', '15000', '10000', '0', '11', '11307', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Overmaster Pyron - Casts Fire Nova'),

('902602', '9026', '0', '0', '100', '8000', '12000', '0', '11', '10199', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Overmaster Pyron - Casts Fire Blast'),



-- Chromatic Elite Guard (Mob_Chromatic_Elite_Guard - SimpleAI Conversion PHASE-1)

('1081401', '10814', '0', '0', '100', '13000', '5000', '0', '11', '15708', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Chromatic Elite Guard - Casts Mortal Strike'),

('1081402', '10814', '0', '0', '100', '20000', '8000', '0', '11', '20276', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Chromatic Elite Guard - Casts Knockdown'),

('1081403', '10814', '0', '0', '80', '9000', '12000', '0', '11', '31907', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Chromatic Elite Guard - Casts Strike'),



-- Teremus The Decourer (mob_teremus_the_decourer - SimpleAI Conversion PHASE-1)

('784601', '7846', '0', '0', '100', '20000', '18000', '0', '11', '12667', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Teremus The Decourer - Casts Soul Consumption'),

('784602', '7846', '0', '0', '85', '7000', '2500', '0', '11', '15284', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Teremus The Decourer - Casts Cleave'),

('784603', '7846', '0', '0', '100', '10000', '5000', '0', '11', '20712', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Teremus The Decourer - Casts Flame Breath'),

('784604', '7846', '0', '0', '80', '12000', '9000', '0', '11', '32959', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Teremus The Decourer - Casts Knock Away'),



-- Meshlok the Harvester (Mob_Meshlok_The_Harvester - SimpleAI Conversion PHASE-1)

('1223701', '12237', '0', '0', '100', '9000', '11000', '0', '11', '15593', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Meshlok the Harvester - Casts War Stomp'),

('1223702', '12237', '0', '0', '85', '9000', '7000', '0', '11', '19644', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Meshlok the Harvester - Casts Strike'),



-- Razorlash (Mob_Razorlash - SimpleAI Conversion PHASE-1)

('1225801', '12258', '0', '0', '70', '6500', '4000', '0', '11', '3391', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorlash - Casts Thrash'),

('1225802', '12258', '0', '0', '85', '8000', '6000', '0', '11', '40504', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorlash - Casts Cleave'),

('1225803', '12258', '0', '0', '85', '12000', '12000', '0', '11', '15976', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Razorlash - Casts Puncture'),



-- Tinkerer Gizlock (Boss_Tinkerer_Gizlock - SimpleAI Conversion PHASE-1)

('1360101', '13601', '6', '0', '100', '0', '0', '0', '2', '182', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tinkerer Gizlock - Yell on Aggro'),

('1360102', '13601', '0', '0', '100', '14000', '12000', '0', '11', '22334', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tinkerer Gizlock - Casts Bomb'),

('1360103', '13601', '0', '0', '70', '3000', '1500', '0', '11', '16100', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tinkerer Gizlock - Casts Shoot'),

('1360104', '13601', '0', '0', '85', '16000', '6000', '0', '11', '21833', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tinkerer Gizlock - Casts Goblin Dragon Gun'),

('1360105', '13601', '0', '0', '75', '25000', '25000', '0', '11', '29419', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tinkerer Gizlock - Casts Flash Bomb'),



-- Rotgrip (Boss_Rotgrip - SimpleAI Conversion PHASE-1)

('1359601', '13596', '0', '0', '100', '12000', '6000', '0', '11', '20539', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Rotgrip - Casts Fatal Bite (Closest Match)'),



-- Lord Vyletongue (Boss_Lord_Vyletogue - SimpleAI Conversion PHASE-1)

('1223601', '12236', '0', '0', '100', '5000', '1000', '0', '11', '16100', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lord Vyletongue - Casts Shoot'),

('1223602', '12236', '0', '0', '80', '8000', '9500', '0', '11', '21390', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lord Vyletongue - Casts Multi-Shot'),

('1223603', '12236', '0', '0', '85', '20000', '20000', '0', '11', '21655', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lord Vyletongue - Casts Blink'),

('1223604', '12236', '0', '0', '75', '12000', '8000', '0', '11', '7964', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lord Vyletongue - Casts Smoke Bomb'),

('1223605', '12236', '6', '0', '100', '0', '0', '0', '11', '42459', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lord Vyletongue - Cast Dual Wield on Aggro'),



-- Scarlet Torturer (Mob_Scarlet_Torturer - SimpleAI Conversion PHASE-1)

('430601', '4306', '6', '0', '100', '0', '0', '0', '7', '183', '184', '185', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Torturer - Random Yell on Aggro'),

('430602', '4306', '0', '0', '100', '45000', '45000', '0', '11', '37668', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Torturer - Casts Immolate'),



-- Molten Core Trash Mobs (Mobs_Molten_Core - SimpleAI Conversion PHASE-1)

('1165801', '11658', '0', '0', '100', '8000', '7000', '0', '11', '18944', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Giant - Casts Smash'),

('1165802', '11658', '0', '0', '100', '15000', '15000', '0', '11', '18945', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Giant - Casts Knock Away'),

('1165901', '11659', '0', '0', '100', '10000', '12000', '0', '11', '20276', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Destroyer - Casts Knockdown'),

('1165902', '11659', '0', '0', '100', '12000', '18000', '0', '11', '19129', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Destroyer - Casts Massive Tremor'),

('1166101', '11661', '0', '0', '100', '8000', '8000', '0', '11', '19730', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flamewaker - Casts Strike'),

('1166102', '11661', '0', '0', '100', '12000', '12000', '0', '11', '20277', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flamewaker - Casts Fist of Ragnaros'),

('1166103', '11661', '0', '0', '100', '15000', '5000', '0', '11', '15502', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flamewaker - Casts Sunder Armor'),

('1166301', '11663', '0', '0', '100', '9000', '9000', '0', '11', '20603', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flamewaker Healer - Casts Shadow Shock'),

('1166302', '11663', '0', '0', '100', '2000', '2000', '0', '11', '21077', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flamewaker Healer - Casts Fire Blast'),

('1166401', '11664', '0', '0', '85', '8000', '1000', '0', '11', '36711', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flamewaker Elite - Casts Fireball'),

('1166402', '11664', '0', '0', '100', '12000', '12000', '0', '11', '20229', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flamewaker Elite - Casts Blast Wave'),

('1166403', '11664', '0', '0', '80', '15000', '5000', '0', '11', '20623', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flamewaker Elite - Casts Fire Blast'),

('1166601', '11666', '0', '0', '100', '8000', '12000', '7000', '11', '19635', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Firewalker - Casts Incite Flames'),

('1166602', '11666', '0', '0', '100', '15000', '8000', '0', '11', '19636', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Firewalker - Casts Fire Blossom'),

('1166701', '11667', '0', '0', '100', '10000', '12000', '0', '11', '19630', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flameguard - Casts Cone of Fire'),

('1166702', '11667', '0', '0', '100', '15000', '8000', '0', '11', '19631', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flameguard - Casts Melt Armor'),

('1166801', '11668', '0', '0', '100', '15000', '6000', '7000', '11', '19393', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Firelord - Casts Soul Burn'),

('1166802', '11668', '0', '0', '100', '30000', '10000', '0', '11', '19392', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Firelord - Casts Summon Lava Spawn'),

('1211901', '12119', '0', '0', '100', '30000', '15000', '0', '11', '20740', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flamewaker Protector - Casts Dominate Mind'),

('1211902', '12119', '0', '0', '100', '6000', '6000', '0', '11', '26350', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flamewaker Protector - Casts Cleave'),

('1226501', '12265', '0', '0', '100', '3000', '1000', '0', '11', '19391', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lava Spawn - Casts Fireball'),

('1226502', '12265', '0', '0', '100', '12000', '12000', '0', '11', '19569', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lava Spawn - Casts Split'),



-- Gurok the Usurper (Mobs_Nagrand - SimpleAI Conversion PHASE-1)

('1818201', '18182', '0', '0', '100', '12000', '8000', '0', '11', '23114', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurok the Usurper - Casts Earth Shock'),

('1818202', '18182', '0', '0', '100', '25000', '20000', '0', '11', '24648', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurok the Usurper - Casts Entangling Roots'),

('1818203', '18182', '0', '0', '100', '18000', '12000', '0', '11', '32959', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gurok the Usurper - Casts Knock Away'),



-- Bleeding Hollow Dark Shaman

('1687301', '16873', '0', '0', '100', '9000', '2000', '0', '11', '20825', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bleeding Hollow Dark Shaman - Casts Shadow Bolt'),

('1687302', '16873', '1', '0', '100', '7000', '0', '0', '11', '12550', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bleeding Hollow Dark Shaman - Casts Lightning Shield'),

('1687303', '16873', '4', '0', '100', '40', '0', '0', '11', '6742', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bleeding Hollow Dark Shaman - Casts Bloodlust at 40% HP'),

('1687304', '16873', '0', '0', '100', '15000', '4000', '0', '11', '32062', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bleeding Hollow Dark Shaman - Casts Fire Nova Totem'),



-- Stratholme Trash Mobs (mobs_stratholme - SimpleAI Conversion PHASE-1)

('1038101', '10381','1','0','100','30000','0','0','11','16143','1','0','0','0','0','0','0','0','0','0','Ravaged Cadaver - Casts Cadaver Worms'),

('1038102', '10381','0','0','100','7000','2000','0','11','13446','1','0','0','0','0','0','0','0','0','0','Ravaged Cadaver - Casts Strike'),

('1038103', '10381','6','0','100','0','0','0','11','16324','0','0','0','0','0','0','0','0','0','0','Ravaged Cadaver - Summon Broken Cadaver on Aggro'),

('1038201', '10382','1','0','100','30000','0','0','11','16143','1','0','0','0','0','0','0','0','0','0','Mangled Cadaver - Casts Cadaver Worms'),

('1038301', '10383','1','0','100','10000','0','0','11','16141','1','0','0','0','0','0','0','0','0','0','Broken Cadaver - Casts Exploding Cadaver'),

('1038701', '10387','0','0','100','18000','3000','0','11','15089','1','0','0','0','0','0','0','0','0','0','Vengeful Phantom - Casts Frost Shock'),

('1038801', '10388','0','0','100','15000','1000','0','11','12531','1','0','0','0','0','0','0','0','0','0','Spiteful Phantom - Casts Chilling Touch'),

('1038901', '10389','0','0','100','10000','1000','0','11','7074','0','0','0','0','0','0','0','0','0','0','Wrath Phantom - Casts Screams of the Past'),

('1039001', '10390','0','0','85','6000','4000','0','11','9672','1','0','0','0','0','0','0','0','0','0','Skeletal Guardian - Casts Frostbolt'),

('1039002', '10390','0','0','85','5000','2500','0','11','9613','1','0','0','0','0','0','0','0','0','0','Skeletal Guardian - Casts Shadow Bolt'),

('1039003', '10390','0','0','100','7000','7000','0','11','15254','1','0','0','0','0','0','0','0','0','0','Skeletal Guardian - Casts Arcane Bolt'),

('1039004', '10390','6','0','100','0','0','0','11','13787','0','0','0','0','0','0','0','0','0','0','Skeletal Guardian - Casts Demon Armor on Aggro'),

('1039005', '10390','1','0','100','1000','0','0','11','12544','0','0','0','0','0','0','0','0','0','0','Skeletal Guardian - Casts Frost Armor'),

('1039101', '10391','6','0','100','0','0','0','11','29651','0','0','0','0','0','0','0','0','0','0','Skeletal Berserker - Casts Dual Wield on Aggro'),

('1039102', '10391','0','0','100','6000','1000','0','11','11976','1','0','0','0','0','0','0','0','0','0','Skeletal Berserker - Casts Strike'),

('1039103', '10391','0','0','80','10000','4000','0','11','27991','1','0','0','0','0','0','0','0','0','0','Skeletal Berserker - Casts Sunder Armor'),

('1039104', '10391','1','0','100','9000','0','0','11','13730','1','0','0','0','0','0','0','0','0','0','Skeletal Berserker - Casts Demoralizing Shout'),

('1039401', '10394','0','0','100','10000','5000','0','11','15584','1','0','0','0','0','0','0','0','0','0','Black Guard Sentry - Casts Cleave'),

('1039402', '10394','0','0','100','6000','1000','0','11','17439','1','0','0','0','0','0','0','0','0','0','Black Guard Sentry - Casts Shadow Shock'),

('1039801', '10398','0','0','100','25000','1000','0','11','11443','1','0','0','0','0','0','0','0','0','0','Thuzadin Shadowcaster - Casts Cripple'),

('1039802', '10398','0','0','100','45000','20000','0','11','16429','1','0','0','0','0','0','0','0','0','0','Thuzadin Shadowcaster - Casts Piercing Shadow'),

('1039803', '10398','0','0','100','8000','3000','0','11','15232','1','0','0','0','0','0','0','0','0','0','Thuzadin Shadowcaster - Casts Shadow Bolt'),

('1040001', '10400','6','0','100','0','0','0','11','16431','0','0','0','0','0','0','0','0','0','0','Thuzadin Necromancer - Casts Bone Armor on Aggro'),

('1040002', '10400','0','0','100','60000','1000','0','11','12420','0','0','0','0','0','0','0','0','0','0','Thuzadin Necromancer - Casts Summon Skeletal Servant'),

('1040003', '10400','0','0','100','20000','10000','0','11','16430','1','0','0','0','0','0','0','0','0','0','Thuzadin Necromancer - Casts Soul Tap'),

('1040501', '10405','1','0','100','40000','0','0','11','16458','1','0','0','0','0','0','0','0','0','0','Plague Ghoul - Casts Ghoul Plague'),

('1040502', '10405','0','0','85','25000','8000','0','11','15088','0','0','0','0','0','0','0','0','0','0','Plague Ghoul - Casts Flurry'),

('1040503', '10405','0','0','100','8000','7000','0','11','40505','1','0','0','0','0','0','0','0','0','0','Plague Ghoul - Casts Cleave'),

('1040504', '10405','4','0','100','20','0','0','11','8599','0','0','0','0','0','0','0','0','0','0','Plague Ghoul - Casts Enrage at 20% HP'),

('1040601', '10406','0','0','100','5000','5000','0','11','16172','1','0','0','0','0','0','0','0','0','0','Ghoul Ravener - Casts Head Crack'),

('1040602', '10406','0','0','100','8000','7000','0','11','16553','1','0','0','0','0','0','0','0','0','0','Ghoul Ravener - Casts Ravenous Claw'),

('1040701', '10407','0','0','75','6000','5000','0','11','3391','0','0','0','0','0','0','0','0','0','0','Fleshflayer Ghoul - Casts Thrash'),

('1040702', '10407','0','0','100','20000','3000','0','11','13738','1','0','0','0','0','0','0','0','0','0','Fleshflayer Ghoul - Casts Rend'),

('1040801', '10408','6','0','100','0','0','0','4','6596','0','0','0','0','0','0','0','0','0','0','Rockwing Gargoyle - Sound on Aggro'),

('1040802', '10408','0','0','70','10000','4000','0','11','13444','1','0','0','0','0','0','0','0','0','0','Rockwing Gargoyle - Casts Sunder Armor'),

('1040901', '10409','6','0','100','0','0','0','4','6596','0','0','0','0','0','0','0','0','0','0','Rockwing Screecher - Sound on Aggro'),

('1040902', '10409','0','0','85','40000','6000','0','11','23511','0','0','0','0','0','0','0','0','0','0','Rockwing Screecher - Casts Demoralizing Shout'),

('1040903', '10409','0','0','100','35000','9000','0','11','8715','0','0','0','0','0','0','0','0','0','0','Rockwing Screecher - Casts Terrifying Howl'),

('1040904', '10409','0','0','100','6000','1000','0','11','16997','1','0','0','0','0','0','0','0','0','0','Rockwing Screecher - Casts Gargoyle Strike'),

('1041101', '10411','3','0','100','100','0','0','11','16380','0','0','0','0','0','0','0','0','0','0','Eye of Naxxramas - Casts Greater Invisibility OOC'),

('1041102', '10411','6','0','100','0','0','0','2','186','0','0','4','6596','0','0','11','16381','0','0','Eye of Naxxramas - Yell and Sound and Summon Rockwing Gargoyles on Aggro'),

('1041201', '10412','0','0','100','15000','1000','0','11','15471','1','0','0','0','0','0','0','0','0','0','Crypt Crawler - Casts Enveloping Web'),

('1041301', '10413','0','0','100','15000','1000','0','11','4962','1','0','0','0','0','0','0','0','0','0','Crypt Beast - Casts Encasing Webs'),

('1041401', '10414','0','0','100','5000','5000','0','11','3391','0','0','0','0','0','0','0','0','0','0','Patchwork Horror - Casts Thrash'),

('1041402', '10414','0','0','100','14000','3000','0','11','16346','0','0','0','0','0','0','0','0','0','0','Patchwork Horror - Casts Disease Cloud'),

('1041403', '10414','0','0','100','15000','7000','0','11','10101','4','0','0','0','0','0','0','0','0','0','Patchwork Horror - Casts Knock Away'),

('1041601', '10416','0','0','85','5000','3000','0','11','3391','1','0','0','0','0','0','0','0','0','0','Bile Spewer - Casts Thrash'),

('1041602', '10416','1','0','100','5000','0','0','11','16865','0','0','0','0','0','0','0','0','0','0','Bile Spewer - Casts Spawn Bile Slimes'),

('1041701', '10417','0','0','100','15000','1000','0','11','24011','1','0','0','0','0','0','0','0','0','0','Venom Belcher - Casts Venom Spit'),

('1041702', '10417','0','0','100','30000','5000','0','11','7992','1','0','0','0','0','0','0','0','0','0','Venom Belcher - Casts Slowing Poison'),

('1041801', '10418','6','0','100','0','0','0','11','15749','1','0','0','0','0','0','0','0','0','0','Crimson Guardsman - Casts Shield Charge on Aggro'),

('1041802', '10418','0','0','100','15000','6000','0','11','6713','1','0','0','0','0','0','0','0','0','0','Crimson Guardsman - Casts Disarm'),

('1041803', '10418','0','0','100','8000','4000','0','11','33871','1','0','0','0','0','0','0','0','0','0','Crimson Guardsman - Casts Shield Bash'),

('1041901', '10419','0','0','100','6000','2000','0','11','17503','1','0','0','0','0','0','0','0','0','0','Crimson Conjuror - Casts Frostbolt'),

('1041902', '10419','0','0','100','15000','10000','0','11','22645','0','0','0','0','0','0','0','0','0','0','Crimson Conjuror - Casts Frost Nova'),

('1041903', '10419','0','0','85','10000','7000','0','11','17195','4','0','0','0','0','0','0','0','0','0','Crimson Conjuror - Casts Scorch'),

('1041904', '10419','1','0','100','5000','0','0','11','17162','0','0','0','0','0','0','0','0','0','0','Crimson Conjuror - Casts Summon Water Elemental'),

('1042001', '10420','4','0','100','50','0','0','11','44174','0','0','0','0','0','0','0','0','0','0','Crimson Initiate - Casts Renew at 50% HP'),

('1042002', '10420','4','0','100','25','0','0','11','17138','0','0','0','0','0','0','0','0','0','0','Crimson Initiate - Casts Flash Heal at 25% HP'),

('1042003', '10420','0','0','100','10000','1000','0','11','17194','1','0','0','0','0','0','0','0','0','0','Crimson Initiate - Casts Mind Blast'),

('1042101', '10421','6','0','100','0','0','0','11','8258','0','0','0','0','0','0','0','0','0','0','Crimson Defender - Casts Devotion Aura on Aggro'),

('1042102', '10421','4','0','100','66','0','0','11','15493','0','0','0','0','0','0','0','0','0','0','Crimson Defender - Casts Holy Light at 66% HP'),

('1042103', '10421','4','0','100','45','0','0','11','15493','0','0','0','0','0','0','0','0','0','0','Crimson Defender - Casts Holy Light at 45% HP'),

('1042104', '10421','4','0','100','25','0','0','11','15493','0','0','0','0','0','0','0','0','0','0','Crimson Defender - Casts Holy Light at 25% HP'),

('1042105', '10421','4','0','100','10','0','0','11','15493','0','0','0','0','0','0','0','0','0','0','Crimson Defender - Casts Holy Light at 10% HP'),

('1042106', '10421','0','0','100','60000','10000','0','11','13005','1','0','0','0','0','0','0','0','0','0','Crimson Defender - Casts Hammer of Justice'),

('1042107', '10421','4','0','100','20','0','0','11','13874','0','0','0','0','0','0','0','0','0','0','Crimson Defender - Casts Divine Shield at 20% HP'),

('1042201', '10422','0','0','100','6000','1000','0','11','15230','1','0','0','0','0','0','0','0','0','0','Crimson Sorcerer - Casts Arcane Bolt'),

('1042202', '10422','0','0','100','25000','20000','0','11','13323','2','0','0','0','0','0','0','0','0','0','Crimson Sorcerer - Casts Polymorph'),

('1042203', '10422','6','0','100','0','0','0','11','12544','0','0','0','0','0','0','0','0','0','0','Crimson Sorcerer - Casts Frost Armor on Aggro'),

('1042204', '10422','0','0','100','8500','5000','0','11','14145','1','0','0','0','0','0','0','0','0','0','Crimson Sorcerer - Casts Fire Blast'),

('1042205', '10422','1','0','100','15000','0','0','11','17150','0','0','0','0','0','0','0','0','0','0','Crimson Sorcerer - Casts Arcane Might (Self Cast Due To Core Limitation)'),

('1042301', '10423','4','0','100','50','0','0','11','15586','0','0','0','0','0','0','0','0','0','0','Crimson Priest - Casts Heal at 50% HP (Self Cast due to Core Limitation)'),

('1042302', '10423','0','0','100','5000','3000','0','11','15238','1','0','0','0','0','0','0','0','0','0','Crimson Priest - Casts Holy Smite'),

('1042303', '10423','0','0','85','45000','15000','0','11','17139','0','0','0','0','0','0','0','0','0','0','Crimson Priest - Casts Power Word Shield'),

('1042304', '10423','0','0','100','15000','5000','0','11','17142','1','0','0','0','0','0','0','0','0','0','Crimson Priest - Casts Holy Fire'),

('1042401', '10424','0','0','100','8000','5000','0','11','17284','1','0','0','0','0','0','0','0','0','0','Crimson Gallant - Casts Holy Strike'),

('1042402', '10424','0','0','100','10000','5000','0','11','14518','1','0','0','0','0','0','0','0','0','0','Crimson Gallant - Casts Crusader Strike'),

('1042403', '10424','6','0','100','0','0','0','11','13008','0','0','0','0','0','0','0','0','0','0','Crimson Gallant - Casts Retribution Aura on Aggro'),

('1042501', '10425','0','0','80','20000','2000','0','11','11667','1','0','0','0','0','0','0','0','0','0','Crimson Battle Mage - Casts Immolate'),

('1042502', '10425','0','0','100','9000','12000','0','11','15253','0','0','0','0','0','0','0','0','0','0','Crimson Battle Mage - Casts Arcane Explosion'),

('1042503', '10425','0','0','100','13000','8000','0','11','17145','0','0','0','0','0','0','0','0','0','0','Crimson Battle Mage - Casts Blast Wave'),

('1042601', '10426','0','0','100','10000','10000','0','11','15785','1','0','0','0','0','0','0','0','0','0','Crimson Inquisitor - Casts Mana Burn'),

('1042602', '10426','0','0','100','25000','6000','0','11','19776','1','0','0','0','0','0','0','0','0','0','Crimson Inquisitor - Casts Shadow Word Pain'),

('1042603', '10426','0','0','100','15000','100','0','11','22919','1','0','0','0','0','0','0','0','0','0','Crimson Inquisitor - Casts Mind Flay'),

('1042604', '10426','6','0','100','0','0','0','11','17151','0','0','0','0','0','0','0','0','0','0','Crimson Inquisitor - Casts Shadow Barrier on Aggro'),

('1046301', '10463','0','0','100','6000','1000','0','11','16868','1','0','0','0','0','0','0','0','0','0','Shrieking Banshee - Casts Banshee Wail'),

('1046302', '10463','0','0','100','30000','5000','0','11','3589','1','0','0','0','0','0','0','0','0','0','Shrieking Banshee - Casts Deafening Screech'),

('1046401', '10464','0','0','100','20000','3000','0','11','17105','0','0','0','0','0','0','0','0','0','0','Wailing Banshee - Casts Banshee Curse'),

('1046402', '10464','0','0','100','30000','100','0','11','19645','0','0','0','0','0','0','0','0','0','0','Wailing Banshee - Casts Anti-Magic Shield'),

('1069701', '10697','0','0','100','10000','4000','0','11','16866','1','0','0','0','0','0','0','0','0','0','Bile Slime - Casts Venom Spit'),

('1069702', '10697','0','0','100','15000','1000','0','11','7992','1','0','0','0','0','0','0','0','0','0','Bile Slime - Casts Slowing Poison'),

('1087601', '10876','0','0','100','20000','1000','0','11','11443','1','0','0','0','0','0','0','0','0','0','Undead Scarab - Casts Poison'),

('1104301', '11043','6','0','100','0','0','0','11','674','0','0','0','0','0','0','0','0','0','0','Crimson Monk - Casts Dual Wield on Aggro'),

('1104302', '11043','0','0','100','7000','2000','0','11','3391','0','0','0','0','0','0','0','0','0','0','Crimson Monk - Casts Thrash'),

('1104303', '11043','0','0','100','10000','4000','0','11','11978','1','0','0','0','0','0','0','0','0','0','Crimson Monk - Casts Kick'),

('1105401', '11054','0','0','100','5000','1000','0','11','15620','1','0','21','0','0','0','0','0','0','0','Crimson Rifleman - Casts Shoot'),



-- King Bangalash

('73101','731','4','0','100','50', '45', '0', '11', '8816', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'King Bangalsh - Casts Summon Panthers at 50% HP'),



-- Magisters' Terrace

('2476101','24761','8','0','100','0','0','0','11','44406','1','0','0','0','0','0','0','0','0','0','Brightscale Wyrm - Cast Energry Infusion on Death'),

('2469601','24696','0','0','100','1500','3700','8000','11','20299','4','0','0','0','0','0','0','0','0','0','Coilskar Witch - Cast Forked Lightning'),

('2469602','24696','0','0','100','20000','28400','5000','11','17741','0','0','0','0','0','0','0','0','0','0','Coilskar Witch - Cast Mana Shield'),

('2469801','24698','0','0','100','12000','10000','5000','11','44538','1','0','0','0','0','0','0','0','0','0','Ethereum Smuggler - Cast Arcane Explosion'),

('2465601','24656','0','0','100','1000','1000','2000','11','44164','1','0','0','0','0','0','0','0','0','0','Fizzle - Cast Firebolt'),

('2469701','24697','0','0','100','25000','3500','10000','11','44547','1','0','0','0','0','0','0','0','0','0','Sister of Torment - Cast Deadly Embrace'),

('2469702','24697','0','0','100','12000','0','10000','11','44640','1','0','0','0','0','0','0','0','0','0','Sister of Torment - Cast Lash of Pain'),

('2468401','24684','0','0','50','30000','60000','20000','11','44479','0','0','0','0','0','0','0','0','0','0','Sunblade Blood Knight - Cast Holy Light'),

('2468402','24684','0','0','100','5000','15000','10000','11','44482','4','0','0','0','0','0','0','0','0','0','Sunblade Blood Knight - Cast Judgement of Wrath'),

('2468403','24684','6','0','100','0','0','0','11','44480','0','0','0','0','0','0','0','0','0','0','Sunblade Blood Knight - Cast Seal of Wrath on Aggro'),

('2481501','24815','0','0','100','2000','500','3000','11','44577','1','0','0','0','0','0','0','0','0','0','Sunblade Imp - Cast Firebolt'),

('2476201','24762','0','0','100','11000','2000','5000','11','15232','1','0','0','0','0','0','0','0','0','0','Sunblade Keeper - Cast Shadowbolt'),

('2468301','24683','6','0','100','0','0','0','11','44475','1','0','0','0','0','0','0','0','0','0','Sunblade Mage Guard - Cast Magic Dampening Field'),

('2468302','24683','0','0','100','19000','6800','2500','11','44478','1','0','0','0','0','0','0','0','0','0','Sunblade Mage Guard - Cast Glaive Throw'),

('2468501','24685','0','0','100','15000','2500','10000','11','44644','1','0','0','0','0','0','0','0','0','0','Sunblade Magister - Cast Arcane Nova'),

('2468502','24685','0','0','100','5000','500','8000','11','44606','1','0','0','0','0','0','0','0','0','0','Sunblade Magister - Cast Frostbolt'),

('2468701','24687','6','0','100','0','0','0','11','44599','1','0','0','0','0','0','0','0','0','0','Sunblade Physician - Cast Inject Poison on Aggro'),

('2468702','24687','0','0','40','12000','12000','7500','11','44599','1','0','0','0','0','0','0','0','0','0','Sunblade Physician - Cast Inject Poison'),

('2468703','24687','0','0','80','17000','26000','10000','11','44583','0','0','0','0','0','0','0','0','0','0','Sunblade Physician - Cast Prayer of Mending'),

('2468601','24686','0','0','100','10000','20000','5000','11','44518','1','0','0','0','0','0','0','0','0','0','Sunblade Warlock - Cast Immolate'),

('2468602','24686','0','0','100','15000','5000','35000','11','44519','4','0','0','0','0','0','0','0','0','0','Sunblade Warlock - Cast Incarnate'),

('2468901','24689','0','0','50','7000','1200','10000','11','44505','0','0','0','0','0','0','0','0','0','0','Wretched Bruiser - Cast Drink Fel Infusion'),

('2468902','24689','0','0','100','16000','500','8000','11','44534','1','0','0','0','0','0','0','0','0','0','Wretched Bruiser - Cast Wretched Strike'),

('2469001','24690','0','0','20','10000','2000','10000','11','44505','0','0','0','0','0','0','0','0','0','0','Wretched Husk - Cast Drink Fel Infusion'),

('2469002','24690','0','0','100','8000','59000','25000','11','44503','1','0','0','0','0','0','0','0','0','0','Wretched Hust - Cast Wretched Fireball'),

('2469003','24690','0','0','100','10000','6000','15000','11','44504','1','0','0','0','0','0','0','0','0','0','Wretched Husk - Cast Wretched Frostbolt'),

('2468801','24688','0','0','10','6000','500','10000','11','44505','0','0','0','0','0','0','0','0','0','0','Wretched Skuller - Cast Drink Fel Infusion'),

('2468802','24688','0','0','100','3000','6200','3000','11','44533','1','0','0','0','0','0','0','0','0','0','Wretched Skuller - Cast Wretched Stab'),



-- Magisters' Terrace (Heroic)

('2554501','25545','8','0','100','0','0','0','11','44406','1','0','0','0','0','0','0','0','0','0','Brightscale Wyrm (Heroic) - Cast Energry Infusion on Death (Verified Data)'),

('2554701','25547','0','0','100','15000','7000','5000','11','46150','4','0','0','0','0','0','0','0','0','0','Coilskar Witch (Heroic) - Cast Forked Lightning (Verified Data)'),

('2554702','25547','0','0','100','40000','40000','7000','11','46151','0','0','0','0','0','0','0','0','0','0','Coilskar Witch (Heroic) - Cast Mana Shield (Verified Data)'),

('2555101','25551','0','0','100','7500','3000','50000','11','44538','1','0','0','0','0','0','0','0','0','0','Ethereum Smuggler (Heroic) - Cast Arcane Explosion (Verified Data)'),

('2555301','25553','0','0','100','1000','1000','2000','11','44164','1','0','0','0','0','0','0','0','0','0','Fizzle (Heroic) - Cast Firebolt (Verified Data)'),

('2556301','25563','0','0','100','10000','15000','5000','11','44547','1','0','0','0','0','0','0','0','0','0','Sister of Torment (Heroic) - Cast Deadly Embrace (Verified Data)'),

('2556302','25563','0','0','75','1500','5000','5000','11','44640','1','0','0','0','0','0','0','0','0','0','Sister of Torment (Heroic) - Cast Lash of Pain (Verified Data)'),

('2556501','25565','0','0','75','30000','15000','20000','11','46029','0','0','0','0','0','0','0','0','0','0','Sunblade Blood Knight (Heroic) - Cast Holy Light (Verified Data)'),

('2556502','25565','0','0','100','30000','20000','10000','11','44482','4','0','0','0','0','0','0','0','0','0','Sunblade Blood Knight (Heroic) - Cast Judgement of Wrath (Verified Data)'),

('2556503','25565','6','0','100','0','0','0','11','44481','0','0','0','0','0','0','0','0','0','0','Sunblade Blood Knight (Heroic) - Cast Seal of Wrath on Aggro (Verified Data)'),

('2556601','25566','0','0','100','1000','4500','2500','11','46044','1','0','0','0','0','0','0','0','0','0','Sunblade Imp (Heroic) - Cast Firebolt (Verified Data)'),

('2556701','25567','0','0','100','13200','500','15000','11','15232','1','0','0','0','0','0','0','0','0','0','Sunblade Keeper (Heroic) - Cast Shadowbolt (Verified Data)'),

('2556702','25567','0','0','100','15000','6100','15000','11','20741','1','0','0','0','0','0','0','0','0','0','Sunblade Keeper (Heroic) - Cast Shadowbolt Volley (Verified Data)'),

('2556801','25568','0','0','100','33000','31000','10000','11','44475','1','0','0','0','0','0','0','0','0','0','Sunblade Mage Guard (Heroic) - Cast Magic Dampening Field (Verified Data)'),

('2556802','25568','0','0','100','10000','7000','10000','11','46028','1','0','0','0','0','0','0','0','0','0','Sunblade Mage Guard (Heroic) - Cast Glaive Throw (Verified Data)'),

('2556901','25569','0','0','100','17000','4000','10000','11','44644','1','0','0','0','0','0','0','0','0','0','Sunblade Magister (Heroic) - Cast Arcane Nova (Verified Data)'),

('2556902','25569','0','0','20','3500','500','10000','11','46035','1','0','0','0','0','0','0','0','0','0','Sunblade Magister (Heroic) - Cast Frostbolt (Verified Data)'),

('2557001','25570','6','0','100','0','0','0','11','46046','1','0','0','0','0','0','0','0','0','0','Sunblade Physician (Heroic) - Cast Inject Poison on Aggro (Verified Data)'),

('2557002','25570','0','0','100','10000','14000','15000','11','46046','1','0','0','0','0','0','0','0','0','0','Sunblade Physician (Heroic) - Cast Inject Poison (Verified Data)'),

('2557003','25570','0','0','100','24000','24000','30000','11','46045','4','0','0','0','0','0','0','0','0','0','Sunblade Physician (Heroic) - Cast Prayer of Mending (Verified Data)'),

('2557201','25572','6','0','100','0','0','0','11','44520','0','0','0','0','0','0','0','0','0','0','Sunblade Warlock (Heroic) - Cast Fel Armor on Aggro (Verified Data)'),

('2557202','25572','1','0','75','1000','0','0','11','44517','0','0','0','0','0','0','0','0','0','0','Sunblade Warlock (Heroic) - Summon Sunblade Imp (Verified Data)'),

('2557203','25572','0','0','100','10000','13900','5000','11','46042','1','0','0','0','0','0','0','0','0','0','Sunblade Warlock (Heroic) - Cast Immolate (Verified Data)'),

('2557204','25572','0','0','100','5000','4000','15000','11','46043','4','0','0','0','0','0','0','0','0','0','Sunblade Warlock (Heroic) - Cast Incarnate (Verified Data)'),

('2557501','25575','0','0','100','23000','7900','10000','11','44505','0','0','0','0','0','0','0','0','0','0','Wretched Bruiser (Heroic) - Cast Drink Fel Infusion (Verified Data)'),

('2557502','25575','0','0','100','6000','3800','5000','11','44534','1','0','0','0','0','0','0','0','0','0','Wretched Bruiser (Heroic) - Cast Wretched Strike (Verified Data)'),

('2557601','25576','0','0','100','29000','4000','10000','11','44505','0','0','0','0','0','0','0','0','0','0','Wretched Husk (Heroic) - Cast Drink Fel Infusion (Verified Data)'),

('2557602','25576','0','0','50','7000','5000','10000','11','44503','1','0','0','0','0','0','0','0','0','0','Wretched Hust (Heroic) - Cast Wretched Fireball (Verified Data)'),

('2557603','25576','0','0','50','14000','6500','10000','11','44504','1','0','0','0','0','0','0','0','0','0','Wretched Husk (Heroic) - Cast Wretched Frostbolt (Verified Data)'),

('2557701','25577','0','0','100','29000','7300','10000','11','44505','0','0','0','0','0','0','0','0','0','0','Wretched Skuller (Heroic) - Cast Drink Fel Infusion (Verified Data)'),

('2557702','25577','0','0','100','7000','14000','5000','11','44533','1','0','0','0','0','0','0','0','0','0','Wretched Skuller (Heroic) - Cast Wretched Stab (Verified Data)'),



-- Scarlet Monastery

('428601','4286','0','0','100','20000','5000','10000','11','3639','0','0','0','0','0','0','0','0','0','0','Scarlet Soldier - Cast Improved Blocking'),

('428901','4289','6','0','100','0','0','0','11','2601','0','0','0','0','0','0','0','0','0','0','Scarlet Evoker - Cast Fire Shield on Aggro'),

('428902','4289','0','0','100','15000','5000','5000','11','9053','1','0','0','0','0','0','0','0','0','0','Scarlet Evoker - Cast Fireball'),

('428903','4289','0','0','100','20000','8000','5000','11','8422','1','0','0','0','0','0','0','0','0','0','Scarlet Evoker - Cast Flamestrike'),

('429001','4290','6','0','100','0','0','0','11','7164','0','0','0','0','0','0','0','0','0','0','Scarlet Guardsman - Cast Defemsove Stance on Aggro'),

('429002','4290','0','0','100','30000','15000','10000','11','6713','1','0','0','0','0','0','0','0','0','0','Scarlet Guardsman - Cast Disarm'),

('429101','4291','0','0','100','15000','5000','2500','11','9053','1','0','0','0','0','0','0','0','0','0','Scarlet Diviner - Cast Fireball'),

('429102','4291','0','0','100','20000','8000','5000','11','8131','4','0','0','0','0','0','0','0','0','0','Scarlet Diviner - Cast Mana Burn'),

('429201','4292','6','0','100','0','0','0','11','8258','0','0','0','0','0','0','0','0','0','0','Scarlet Protector - Cast Devotion Aura on Aggro'),

('429202','4292','0','0','100','15000','8000','15000','11','31713','0','0','0','0','0','0','0','0','0','0','Scarlet Protector - Cast Holy Light'),

('429401','4294','0','0','100','10000','1500','5000','11','9672','1','0','0','0','0','0','0','0','0','0','Scarlet Sorcerer - Cast Frostbolt'),

('429402','4294','0','0','50','15000','7500','15000','11','6146','1','0','0','0','0','0','0','0','0','0','Scarlet Sorcerer - Cast Slow'),

('429501','4295','4','0','100','30','0','0','11','8269','0','0','0','0','0','0','0','0','0','0','Scarlet Myrmidon - Cast Enrage'),

('429701','4297','6','0','50','0','0','0','11','8985','0','0','0','0','0','0','0','0','0','0','Scarlet Conjuror - Cast Summon Fire Elemental on Aggro'),

('429702','4297','0','0','100','15000','5000','5000','11','9053','1','0','0','0','0','0','0','0','0','0','Scarlet Conjuror - Cast Fireball'),

('429801','4298','6','0','100','0','0','0','11','7164','0','0','0','0','0','0','0','0','0','0','Scarlet Defender - Cast Defensive Stand on Aggro'),

('429802','4298','0','0','100','20000','5000','10000','11','3639','0','0','0','0','0','0','0','0','0','0','Scarlet Defender - Cast Improved Blocking'),

('429803','4298','0','0','100','15000','7500','15000','11','11972','1','0','0','0','0','0','0','0','0','0','Scarlet Defender - Cast Shield Bash'),

('430101','4301','6','0','100','0','0','0','11','31403','0','0','0','0','0','0','0','0','0','0','Scarlet Centurion - Cast Battle Shout on Aggro'),

('430201','4302','0','0','100','12000','2500','10000','11','17143','0','0','0','0','0','0','0','0','0','0','Scarlet Champion - Cast Holy Strike'),

('430301','4303','4','0','100','30','0','0','11','8269','0','0','0','0','0','0','0','0','0','0','Scarlet Abbot - Cast Enrage'),

('430302','4303','0','0','65','40000','17500','2500','11','6064','0','0','0','0','0','0','0','0','0','0','Scarlet Abbot - Cast Heal'),

('430303','4303','6','0','100','0','0','0','11','1006','0','0','0','0','0','0','0','0','0','0','Scarlet Abbot - Cast Inner Fire on Aggro'),

('430304','4303','4','0','100','20','0','0','11','8362','0','0','0','0','0','0','0','0','0','0','Scarlet Abbot - Cast Renew'),

('454001','4540','0','0','100','15000','5000','15000','11','11978','1','0','0','0','0','0','0','0','0','0','Scarlet Monk - Cast Kick'),

('454002','4540','0','0','100','20000','10000','10000','11','3391','0','0','0','0','0','0','0','0','0','0','Scarlet Monk - Cast Thrash'),

('642601','6426','0','0','100','10000','2500','5000','11','7068','4','0','0','0','0','0','0','0','0','0','Anguished Dead - Cast Veil of Shadow'),

('642701','6427','6','0','75','0','0','0','11','8986','0','0','0','0','0','0','0','0','0','0','Haunting Phantasm - Cast Summon Illusionary Phantasm on Aggro'),

('648901','6489','0','0','100','20000','5000','15000','11','702','4','0','0','0','0','0','0','0','0','0','Ironspine - Cast Curse of Weakness'),

('648902','6489','0','0','100','60000','1500','20000','11','3815','1','0','0','0','0','0','0','0','0','0','Ironspine - Cast Poison Cloud'),



-- Hellfire Warder (mob_hellfire_warder - SimpleAI Conversion PHASE-1)

('1882901','18829','0','0','75','10000','10000','0','11','39175','4','0','0','0','0','0','0','0','0','0','Hellfire Warder - Casts Shadow Bolt Volley'),

('1882902','18829','0','0','75','50000','20000','0','11','34437','1','0','0','0','0','0','0','0','0','0','Hellfire Warder - Casts Death Coil'),

('1882903','18829','0','0','75','30000','30000','0','11','34435','4','0','0','0','0','0','0','0','0','0','Hellfire Warder - Casts Rain of Fire'),



-- Aberrant Owlbeast

('1718701', '17187', '0', '0', '100', '8000', '8000', '500', '11', '31270', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Aberrant Owlbeast - Cast Moonfire'),



-- Blackwind Warp Chaser

('2321901', '23219', '11', '0', '100', '0', '5', '8000', '11', '32739', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blackwind Warp Chaser - Cast Venomous Bite'),

('2321902', '23219', '0', '0', '100', '18000', '5000', '0', '11', '32943', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blackwind Warp Chaser - Cast Phasing Invisibility'),

('2321903', '23219', '11', '0', '100', '8', '25', '18100', '11', '32920', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blackwind Warp Chaser - Cast Warp'),

('2321904', '23219', '11', '0', '100', '8', '25', '18000', '11', '37417', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blackwind Warp Chaser - Cast Warp Charge'),



-- Dreadcaller

('1943401', '19434', '0', '0', '100', '18100', '4000', '0', '11', '11443', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Dreadcaller - Cast Cripple'),

('1943402', '19434', '0', '0', '100', '9000', '2000', '0', '11', '32666', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Dreadcaller - Cast Shadow Bolt'),



-- Flamewalker Imp

('1913601', '19136', '0', '0', '100', '6000', '1000', '2000', '11', '9053', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flamewaker Imp - Cast Fireball'),



-- Talonsworn Forest-Rager

('2302901', '23029', '11', '0', '100', '0', '10', '12000', '11', '15548', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Talonsworn Forest-Rager - Cast Thunderclap'),



-- Hellfire Ramparts Trash (Heroic)

('1804801','18048','11','0','100','4','30','1','29','15','0','0','0','0','0','0','0','0','0','0','Bleeding Hollow Archer (Heroic) - Enable Ranged Movement Generator'),

('1804802','18048','11','0','100','4','30','2000','11','36980','1','0','0','0','0','0','0','0','0','0','Bleeding Hollow Archer (Heroic) - Casts Shoot (Ranged)'),

('1804803','18048','0','0','100','5000','20000','3000','11','43205','1','0','0','0','0','0','0','0','0','0','Bleeding Hollow Archer (Heroic) - Casts Multishot'),

('1804804','18048','0','0','100','16000','0','2000','11','38861','1','0','0','0','0','0','0','0','0','0','Bleeding Hollow Archer (Heroic) - Casts Aimed Shot'),

('1804805','18048','11','0','100','0','4','1','29','0','0','0','0','0','0','0','0','0','0','0','Bleeding Hollow Archer (Heroic) - Enable Ranged Movement Generator'),

('1804806','18048','13','0','100','0','0','0','29','15','0','0','0','0','0','0','0','0','0','0','Bleeding Hollow Archer (Heroic) - Set Ranged Movement on Respawn'),

('1804901','18049','0','0','100','6000','3000','2000','11','38636','4','0','0','0','0','0','0','0','0','0','Dark Caster (Heroic) - Casts Scorch'),

('1804902','18049','6','0','100','0','0','0','11','38636','1','0','0','0','0','0','0','0','0','0','Dark Caster (Heroic) - Casts Scorch on Aggro'),

('1804903','18049','0','0','100','6000','7000','2000','11','34435','4','0','0','0','0','0','0','0','0','0','Dark Caster (Heroic) - Casts Rain of Fire'),

('1805001','18050','0','0','100','5000','6000','2000','11','38825','1','0','0','0','0','0','0','0','0','0','Bleeding Hollow Scryer (Heroic) - Casts Shadow Bolt'),

('1805002','18050','0','0','100','7000','3000','0','11','38825','4','0','0','0','0','0','0','0','0','0','Bleeding Hollow Scryer (Heroic) - Casts Shadow Bolt'),

('1805003','18050','0','0','100','3000','0','3000','11','30615','4','0','0','0','0','0','0','0','0','0','Bleeding Hollow Scryer (Heroic) - Casts Fear'),

('1805101','18051','1','0','100','7000','0','0','12','18059','5','0','0','0','0','0','0','0','0','0','Bleeding Hollow Beastmaster (Heroic) - Summoning Beast 1'),

('1805102','18051','1','0','100','6000','0','0','12','18059','5','0','0','0','0','0','0','0','0','0','Bleeding Hollow Beastmaster (Heroic) - Summoning Beast 2'),

('1805103','18051','1','0','100','5000','0','0','12','18059','5','0','0','0','0','0','0','0','0','0','Bleeding Hollow Beastmaster (Heroic) - Summoning Beast 3'),

('1805104','18051','1','0','100','1000','0','0','11','24438','0','0','0','0','0','0','0','0','0','0','Bleeding Hollow Beastmaster (Heroic) - Casts Battle Shout on Aggro'),

('1805201','18052','0','0','100','13000','8000','2000','11','39069','1','0','13','100','3','0','0','0','0','0','Bleeding Hollow Destroyer (Heroic) - Casts Uppercut and Aggro Change'),

('1805202','18052','0','0','100','8000','0','2000','11','37335','1','0','0','0','0','0','0','0','0','0','Bleeding Hollow Destroyer (Heroic) - Casts Mortal Strike'),

('1805301','18053','4','0','100','5','0','0','3','42','0','0','25','0','0','0','0','0','0','0','Bleeding Hollow Hungerer (Heroic) - Emote and Flee at 5% HP'),

('1805302','18053','0','0','100','3000','3000','2000','11','31754','1','0','0','0','0','0','0','0','0','0','Bleeding Hollow Hungerer (Heroic) - Casts Strike'),

('1805303','18053','0','0','100','12000','1000','3000','11','30013','1','0','0','0','0','0','0','0','0','0','Bleeding Hollow Hungerer (Heroic) - Casts Disarm'),

('1805304','18053','0','0','100','25000','0','0','11','29584','1','0','0','0','0','0','0','0','0','0','Bleeding Hollow Hungerer (Heroic) - Casts Demoralizing Shout'),

('1805401','18054','0','0','100','9000','3000','2000','11','41389','1','0','13','-100','1','0','0','0','0','0','Bleeding Hollow Ravener (Heroic) - Casts Kidney Shot and Aggro Change'),

('1805901','18059','0','0','100','12000','4000','3000','11','39020','5','0','0','0','0','0','0','0','0','0','Bleeding Hollow Warhound (Heroic) - Casts Mana Burn'),



-- Shadowfang Keep Trash Mobs

('252901','2529','4','0','100','40','0','0','11','7124','1','0','0','0','0','0','0','0','0','0','Son of Arugal - Casts Arugal\'s Gift at 40% HP'),

('385101','3851','6','0','100','0','0','0','11','12544','0','0','0','0','0','0','0','0','0','0','Shadowfang Whitescalp - Casts Frost Armor on Aggro'),

('385301','3853','0','0','85','16000','3000','0','11','7121','0','0','0','0','0','0','0','0','0','0','Shadowfang Moonwalker - Casts Anti-Magic Shield'),

('385401','3854','4','0','85','30','0','9000','11','7106','0','0','0','0','0','0','0','0','0','0','Shadowfang Wolfguard - Casts Dark Restore (Self Cast instead of on Pet due to Core Limitation)'),

('385402','3854','6','0','100','0','0','0','11','7107','0','0','0','0','0','0','0','0','0','0','Shadowfang Wolfguard - Casts Summon Wolfguard Worg on Aggro'),

('385501','3855','0','0','75','22000','3000','0','11','8140','4','0','0','0','0','0','0','0','0','0','Shadowfang Darksoul - Casts Befuddlement'),

('385502','3855','0','0','85','25000','5000','0','11','970','1','0','0','0','0','0','0','0','0','0','Shadowfang Darksoul - Casts Shadow Word: Pain'),

('385701','3857','4','0','100','50','0','9000','11','7122','1','0','0','0','0','0','0','0','0','0','Shadowfang Glutton - Casts Blood Tap at 50% HP'),

('385901','3859','4','0','100','40','0','60000','11','7072','0','0','0','0','0','0','0','0','0','0','Shadowfang Ragetooth - Casts Wild Rage at 40% HP'),

('386101','3861','0','0','80','75000','10000','0','11','7127','4','0','0','0','0','0','0','0','0','0','Bleak Worg - Casts Wavering Will'),

('386301','3863','4','0','100','50','0','192000','11','7132','0','0','0','0','0','0','0','0','0','0','Lupine Horror - Casts Summon Lupine Delusions at 50% HP'),

('386401','3864','0','0','85','20000','6000','0','11','7139','0','0','0','0','0','0','0','0','0','0','Fel Steed - Casts Fel Stomp'),

('387301','3873','1','0','80','5000','0','0','11','7054','4','0','0','0','0','0','0','0','0','0','Tormented Officer - Casts Forsaken Skills'),

('387501','3875','1','0','100','4000','0','0','11','7057','3','0','0','0','0','0','0','0','0','0','Haunted Servitor - Casts Haunting Spirits'),

('387701','3877','0','0','75','11000','3500','0','11','7074','0','0','0','0','0','0','0','0','0','0','Wailing Guardsman - Casts Screams of the Past'),

('462701','4627','4','0','75','50','0','7000','11','7154','0','0','0','0','0','0','0','0','0','0','Arugal\'s Voidwalker - Casts Dark Offering at 50% HP (Self Cast Until Core Support is Available)'),



-- Shadowfang Keep Bosses

('387201','3872','0','0','85','5000','5000','0','11','40505','1','0','0','0','0','0','0','0','0','0','Deathsworn Captain - Casts Cleave'),

('387202','3872','6','0','100','0','0','0','11','7165','0','0','0','0','0','0','0','0','0','0','Deathsworn Captain - Casts Battle Stance on Aggro'),

('387203','3872','0','0','100','25000','3000','0','11','9080','1','0','0','0','0','0','0','0','0','0', 'Deathsworn Captain - Casts Hamstring'),

('388701','3887','0','0','75','22000','4000','0','11','7068','1','0','0','0','0','0','0','0','0','0','Baron Silverlaine - Casts Veil of Shadow'), 

('427501','4275','0','0','85','11000','4000','0','11','7803','1','0','0','0','0','0','0','0','0','0','Archmage Arugal - Casts Thundershock'),

('427502','4275','0','0','85','15000','6000','0','11','7588','4','0','0','0','0','0','0','0','0','0','Archmage Arugal - Casts Void Bolt'),

('427801','4278','0','0','80','60000','8000','0','11','5588','1','0','0','0','0','0','0','0','0','0','Commander Springvale - Casts Hammer of Justice'),

('427802','4278','4','0','90','80','0','10000','11','1026','0','0','0','0','0','0','0','0','0','0','Commander Springvale - Casts Holy Light at 80% HP'),

('427803','4278','0','0','100','300000','30000','0','11','642','0','0','0','0','0','0','0','0','0','0', 'Commander Springvale - Casts Divine Shield'),



-- Blindlight Murlocs

('481801','4818','6','0','100','0','0','0','11','7164','0','0','0','0','0','0','0','0','0','0','Blindlight Murloc - Casts Defensive Stance on Aggro'),

('481802','4818','0','0','75','10000','4000','500','11','7405','1','0','0','0','0','0','0','0','0','0','Blindlight Murloc - Casts Sunder Armor'),

('481901','4819','4','0','100','50','0','60000','11','8382','1','0','0','0','0','0','0','0','0','0','Blindlight Muckdweller - Casts Leech Poison at 50% HP'),

('482001','4820','0','0','80','8000','4000','0','11','9532','1','0','0','0','0','0','0','0','0','0','Blindlight Oracle - Casts Lightning Bolt'),

('482002','4820','0','0','85','35000','12000','0','11','8362','0','0','0','0','0','0','0','0','0','0','Blindlight Oracle - Casts Renew'),

('482003','4820','4','0','100','30','0','25000','11','6063','0','0','0','0','0','0','0','0','0','0','Blindlight Oracle - Casts Heal at 30% HP'),



-- Bloodaxe Legion Mobs

('958301','9583','0','0','80','15000','12000','0','11','15618','1','0','0','0','0','0','0','0','0','0','Bloodaxe Veteran - Casts Snap Kick'),

('958302','9583','0','0','90','9000','5000','0','11','15615','1','0','0','0','0','0','0','0','0','0','Bloodaxe Veteran - Casts Pummel'),

('958303','9583','6','0','100','0','0','0','11','674','0','0','0','0','0','0','0','0','0','0','Bloodaxe Veteran - Casts Dual Wield'),

('969201','9692','0','0','85','45000','10000','0','11','15572','4','0','0','0','0','0','0','0','0','0','Bloodaxe Raider - Casts Sunder Armor'),

('969202','9692','0','0','85','7000','2000','0','11','15284','1','0','0','0','0','0','0','0','0','0','Bloodaxe Raider - Casts Cleave'),

('969301','9693','0','0','75','16000','8000','0','11','15743','1','0','0','0','0','0','0','0','0','0','Bloodaxe Evoker - Casts Flamecrack'),

('969302','9693','0','0','80','15000','5000','0','11','15744','4','0','0','0','0','0','0','0','0','0','Bloodaxe Evoker - Casts Blast Wave'),

('969303','9693','0','0','85','12000','10000','0','11','13748','1','0','0','0','0','0','0','0','0','0','Bloodaxe Evoker - Casts Arcane Bolt'),

('971601','9716','0','0','80','9000','9000','0','11','10966','1','0','0','0','0','0','0','0','0','0','Bloodaxe Warmonger - Casts Uppercut'),

('971602','9716','4','0','100','20','0','0','11','8269','0','0','0','0','0','0','0','0','0','0','Bloodaxe Warmonger - Casts Enrage at 20% HP'),

('971701','9717','0','0','75','25000','9000','0','11','15734','4','0','0','0','0','0','0','0','0','0','Bloodaxe Summoner - Casts Summon'),

('971702','9717','0','0','90','13000','5000','0','11','15532','0','0','0','0','0','0','0','0','0','0','Bloodaxe Summoner - Casts Frost Nova'),

('971703','9717','0','0','90','6000','1000','0','11','15791','1','0','0','0','0','0','0','0','0','0','Bloodaxe Summoner - Casts Arcane Missiles'),



-- Bloodfeather  Harpy

('201801','2018','0','0','80','5000','2000','0','11','20793','1','0','0','0','0','0','0','0','0','0','Bloodfeather Sorceress - Casts Fireball'),

('201802','2018','6','0','100','0','0','0','11','12544','0','0','0','0','0','0','0','0','0','0','Bloodfeather Sorceress - Casts Frost Armor on Aggro'),

('201901','2019','0','0','70','15000','3000','0','11','5515','0','0','0','0','0','0','0','0','0','0','Bloodfeather Fury - Casts Savagery'),

('202001','2020','0','0','100','13000','7000','0','11','6982','0','0','0','0','0','0','0','0','0','0','Bloodfeather Wind Witch - Casts Gust of Wind'),

('202101','2021','4','0','100','50','0','18000','11','332','0','0','0','0','0','0','0','0','0','0','Bloodfeather Matriarch - Casts Healing Wave'),

('202102','2021','0','0','85','6000','3000','0','11','9532','1','0','0','0','0','0','0','0','0','0','Bloodfeather Matriarch - Casts Lightning Bolt'),



-- Bloodfury  Harpy

('402301','4023','0','0','70','5000','3000','0','11','3391','0','0','0','0','0','0','0','0','0','0','Bloodfury Roguefeather - Casts Thrash'),

('402401','4024','14','0','100','20','0','0','11','38959','1','0','0','0','0','0','0','0','0','0','Bloodfury Slayer - Casts Execute at 20% Player HP'),

('402402','4024','0','0','75','7000','140000','0','11','16231','1','0','0','0','0','0','0','0','0','0','Bloodfury Slayer - Casts Curse of Recklessness'),

('402501','4025','0','0','80','10000','2000','0','11','2608','1','0','0','0','0','0','0','0','0','0','Bloodfury Ambusher - Casts Shock'),

('402601','4026','0','0','85','28000','12000','0','11','6728','1','0','0','0','0','0','0','0','0','0','Bloodfury Windcaller - Casts Enveloping Winds'),

('402701','4027','0','0','85','40000','9000','0','11','6535','1','0','0','0','0','0','0','0','0','0','Bloodfury Storm Witch - Casts Lightning Cloud'),

('402702','4027','0','0','85','8000','4000','0','11','9532','1','0','0','0','0','0','0','0','0','0','Bloodfury Storm Witch - Casts Lightning Bolt'),

('1257901','12579','0','0','85','23000','5000','0','11','13443','1','0','0','0','0','0','0','0','0','0','Bloodfury Ripper - Casts Rend'),

('1257902','12579','4','0','100','40','0','0','11','8599','0','0','0','0','0','0','0','0','0','0','Bloodfury Ripper - Casts Enrage at 40% HP'),



-- Bloodsail Pirates

('156101','1561','0','0','80','12000','6000','4000','11','6533','1','0','0','0','0','0','0','0','0','0','Bloodsail Raider - Casts Net'),

('156102','1561','6','0','100','0','0','0','11','29651','0','0','0','0','0','0','0','0','0','0','Bloodsail Raider - Casts Dual Wield'),

('156201','1562','0','0','75','5000','1000','0','11','20823','0','0','0','0','0','0','0','0','0','0','Bloodsail Mage - Casts Fireball'),

('156202','1562','4','0','100','50','0','50000','11','2601','0','0','0','0','0','0','0','0','0','0','Bloodsail Mage - Casts Fire Shield III at 50% HP'),

('156301','1563','0','0','100','15000','10000','2000','11','6713','1','0','0','0','0','0','0','0','0','0','Bloodsail Swashbuckler - Casts Disarm'),

('156302','1563','0','0','85','12000','7000','2000','11','11978','1','0','0','0','0','0','0','0','0','0','Bloodsail Swashbuckler - Casts Kick'),

('156401','1564','0','0','100','140000','20000','0','11','11980','1','0','0','0','0','0','0','0','0','0','Bloodsail Warlock - Casts Curse of Weakness'),

('156402','1564','0','0','80','5000','2000','2500','11','20825','1','0','0','0','0','0','0','0','0','0','Bloodsail Warlock - Casts Shadow Bolt'),

('156403','1564','3','0','100','3000','0','0','11','8722','0','0','0','0','0','0','0','0','0','0','Bloodsail Warlock - Casts Summon Succubus'),

('156501','1565','0','0','100','45000','12000','4000','11','744','1','0','0','0','0','0','0','0','0','0','Bloodsail Sea Dog - Casts Poison'),

('156502','1565','0','0','100','6000','2000','2000','11','37685','1','0','0','0','0','0','0','0','0','0','Bloodsail Sea Dog - Casts Backstab'),

('156503','1565','0','0','85','7000','5000','1500','11','12540','1','0','0','0','0','0','0','0','0','0','Bloodsail Sea Dog - Casts Gouge'),

('165301','1653','0','0','75','5000','1000','0','11','20823','1','0','0','0','0','0','0','0','0','0','Bloodsail Elder Magus - Casts Fireball'),

('165302','1653','0','0','80','14000','9000','0','11','20827','1','0','0','0','0','0','0','0','0','0','Bloodsail Elder Magus - Casts Flamestrike');



-- Current Complete Local Text Table for all Accepted Scripts

-- ----------------------------------------------------------

INSERT into `localized_texts` (`id`, `locale_0`, `comment`) VALUES

('1', 'I see those fools at the Abbey sent some fresh meat for us.', '103'),

('2', 'The Brotherhood will not tolerate your actions.', '38,116'),

('3', 'Ah, a chance to use this freshly sharpened blade.', '38,116'),

('4', 'Feel the power of the Brotherhood!', '38,116'),

('5', 'More bones to gnaw on...', '97,448,478'),

('6', 'Grrrr... fresh meat!','97,448,478'),

('7', 'You no take candle!', '6,40,80,257'),

('8', 'Yiieeeee! Me run!.', '6,80,257,475'),

('9', 'What aggravation is this? You will die!', '17978'),

('10', 'Scream while you burn! ', '17978'),

('11', 'I\'ll incinerate you!', '17978'),

('12', 'I revel in your pain!', '17978'),

('13', 'You seek a prize, eh? How about death?', '17978'),

('14', 'Your life will be mine!', '17978'),

('15', 'I hate to say I told you so...', '17978'),

('16', 'You won\'t... get far', '17978'),

('17', 'What are you doing? These specimens are very delicate!','17975'),

('18', 'Nature bends to my will!','17975'),

('19', 'Endorel aluminor!','17975'),

('20', 'Your lifecycle is now concluded!','17975'),

('21', 'The specimens...must be...preserved','17975'),

('22', 'VanCleef pay big for your heads!', '644'),

('23', 'On guard!', '20886'),

('24', 'Defend yourself, for all the good it will do...', '20886'),

('25', 'Knew this was... the only way out', '20886'),

('26', 'Yes, that was quite satisfying', '20886'),

('27', 'At last, a target for my frustrations!', '20886'),

('28', 'Have you come to kill Dalliah? Can I watch?', '20886'),

('29', 'Life energy to... consume', '20870'),

('30', 'The shadow... will engulf you', '20870'),

('31', 'This vessel... is empty', '20870'),

('32', 'No...more...life', '20870'),

('33', 'The void...beckons', '20870'),

('34', 'Step forward! I will see that you are properly welcomed', '17976'),

('35', 'Oh stop your whimpering', '17976'),

('36', 'I\'ve not yet.. begun to..', '17976'),

('37', 'You are no longer dealing with some underling.', '17976'),

('38', 'Band\'or shorel\'aran!', '17976'),

('39', 'Guards! Come and kill these intruders!', '17976'),

('40', 'Is this the end?', '15551'),

('41', 'What will become of...', '15551'),

('42', 'runs away!', 'Common Text'),

('43', 'No!', '16407'),

('44', 'I am finished!', '16407'),

('45', 'The master... will be angry...', '16407'),

-- 46 MISSING 

-- 47 MISSING 

-- 48 MISSING 

('49', 'Wait--no! No!', '16414'),

('50', 'Not... Fair...', '16409'),

('51', 'The fates have turned against me!', '16408'),

('52', 'Where am I? What--', '16406'),

('53', 'What is happening?', '16406'),

('54', 'You... will... pay...', '16424'),

('55', 'You will be punished!', '16424'),

('56', 'Five seconds! I\'m not kidding!', '16460'),

('57', 'So I said, \"Yeah, but that\'ll cost you extra.\"', '16460'),

('58', 'He asked if the imp could join in... can you believe it? Actually, it wasn\'t half bad...', '16460'),

('59', 'We could have had so much fun!', '16461'),

('60', 'They fall asleep after. Me, I fall asleep during....', '16461'),

('61', 'I\'ll miss the show!', '16468'),

('62', 'Yes... I think I remember now...', '16468'),

('63', 'It\'s all... coming back to me', '16470'),

('64', 'Is it really over?', '16470'),

('65', 'Free... at last', '16481'),

('66', 'Time to move on...', '16481'),

('67', 'Death is far too merciful for your kind', '16485'),

('68', 'The same fate awaits all who would steal from the master', '16485'),

('69', 'Others will take my place!', '16485'),

('70', 'This... changes nothing. Eternal damnation awaits you!', '16485'),

('71', 'Turn your back while you can!', '16544'),

('72', 'You will succeed only in damning yourselves!', '16544'),

('73', 'It is unwise to anger me.','20885'),

('74', 'Completely ineffective. Just like someone else I know.','20885'),

('75', 'You chose the wrong opponent.','20885'),

('76', 'Now I\'m really... angry...','20885'),

('77', 'Ahh... That is much better.','20885'),

('78', 'Ahh... Just what I needed.','20885'),

('79', 'Reap the Whirlwind!','20885'),

('80', 'I\'ll cut you to pieces!','20885'),

('81', 'Your strategy was flawed.', '19218'),

('82', 'Yes, the only logical outcome.', '19218'),

('83', 'An unforeseen... contingency.', '19218'),

('84', 'Measure twice cut once.', '19218'),

('85', 'If my division is correct you should be quite dead.', '19218'),

('86', 'I predict a painful death.', '19218'), 

('87', 'You should split while you can.', '19219'),

('88', 'Damn, I\'m good!', '19219'),

('89', 'Bully!', '19219'),

('90', 'Go ahead, gimme your best shot. I can take it!', '19219'),

('91', 'Think you can hurt me, huh? Think I\'m afraid of you?!', '19219'),

('92', 'Can\'t say I didn\'t warn you!', '19219'), 

('93', 'The work must continue.', '17941'),

('94', 'Don\'t make me kill you!', '17941'),

('95', 'You brought this on yourselves.', '17941'),

('96', 'It had to be done.', '17941'),

('97', 'You should not have come.', '17941'),

('98', 'I... Deserve this.', '17941'), 

('99', 'You will never wake the dreamer!', '3669'),

('100', 'If you nice me let you live.', '16809'),

('101', 'Me hungry!', '16809'),

('102', 'Smash!', '16809'),

('103', 'No, we will NOT let you live!', '16809'),

('104', 'You always hungry. That why we so fat!', '16809'),

('105', 'Why don\'t you let me do the talking?', '16809'),

('106', 'This one die easy!', '16809'),

('107', 'I\'m tired. You kill next one!', '16809'),

('108', 'That\'s because I do all the hard work!', '16809'),

('109', 'This all.. your fault!', '16809'),

('110', 'I... hate... you!', '16809'),

('111', 'Me not like this one...', '16809'),

('112', 'You stay here. Me go kill someone else!', '16809'),

('113', 'I\'m not done yet, idiot!', '16809'),

('114', 'That\'s not funny!', '16809'),

('115', 'We kill his friend!', '16809'),

('116', 'Ha ha ha.', '16809'),

('117', 'Abandon all hope! The legion has returned to finish what was begun so many years ago. This time there will be no escape!', '17842'),

('118', 'Reesh, hokta!', '17842'),

('119', 'Just a taste... of what awaits you', '17842'),

('120', 'Don\'t fight it', '17842'),

('121', 'Your time is almost... up', '17842'),

('122', 'No one is going to save you', '17842'), 

('123', 'I am the serpent king! I can do anything.', '3673'),

('124', 'Insolence!', '16329'),

('125', 'The Legion\'s final conquest has begun! Once again the subjugation of this world is within our grasp. Let none survive!', '17767'),

('126', 'Succumb to the icy chill... of death!', '17767'),

('127', 'It will be much colder in your grave', '17767'),

('128', 'Crumble and rot!', '17767'),

('129', 'Ashes to ashes, dust to dust', '17767'),

('130', 'All life must perish!', '17767'),

('131', 'Victory to the Legion!', '17767'),

('132', 'You have won this battle, but not... the... war', '17767'), 

('133', 'I be da predator! You da prey... ', '23574'),

('134', 'You can\'t... kill... me spirit!', '23574'),

('135', 'Feed, me bruddahs!', '23574'),

('136', 'Stop your cryin\'!', '23574'),

('137', 'Ya got nothin\'!', '23574'),

('138', 'All you be doin\' is wastin\' me time!', '23574'), 

('139', 'Come an\' join me bruddah !', '23574'),

('140', 'The coils of death... Will crush you.', '3670'),

('141', 'Invaders! Sound the Alarm!', '23586'),

('142', 'Pathetic mortals! You will pay dearly!', '18731'),

('143', 'I will break you!', '18731'),

('144', 'Finally! Something to relieve the tedium!', '18731'),

('145', 'Do not grow overconfident...mortal.', '18731'),

('146', 'This is the part I enjoy most.', '18731'),

('147', 'Do you fear death?', '18731'),

('148', 'Woot! Thanks!', '17681'),

('149', 'goes into a frenzy!', '19632'),

('150', 'begins casting a massive heal!', '17730'),

('151', 'becomes enraged!', '17728'),

('152', 'grows in size upon seeing $N!', '17725'),

('153', 'strength fades!', '17725'),

('154', 'Illidan reigns!', '17727'),

('155', 'begins to arm the Proximity Bomb!', '17414'),

('156', 'The blood is our power!', '17491'),

('157', 'Lok Narash!', '17370'),

('158', 'For Kargath! For Victory!', '17397'),

('159', 'Lok\'tar Illidari!', '17397'),

('160', 'This world is OURS!', '17397'),

('161', 'Cry for mercy! Your meaningless lives will soon be forfeit.', '17888'),

('162', 'Your death will be a painful one.', '17888'),

('163', 'You... are marked.', '17888'),

('164', 'You... are nothing!', '17888'),

('165', 'Miserable nuisance!', '17888'),

('166', 'Shaza-Kiel!', '17888'),

('167', 'What good does this violence serve? What is done is done. I have failed my people.', '19456'),

('168', 'oh come on! lets not fight!', '19456'),

('169', 'None may challenge the Brotherhood!', '639'),

('170', 'and stay down!', '639'),

('171', 'Lap dogs\, all of you!', '639'),

('172', 'Fools! our cause it righteous!', '639'),

('173', 'The Brotherhood will prevail!', '639'),

('174', 'We\'re under attack! Avast ya swabs! Repel the invaders!', '646'),

('175', 'You land lovers are tougher then I thought! I will need to improvise', '646'),

('176', 'Dugh\, Now you are making me angry!', '646'),

('177', 'attempts to run away in fear!', '17259'),

('178', 'becomes enraged!', '17259'),

('179', 'Hold them back while I release the warhounds!', '17259'),

('180', 'My pets are hungry and they will dine on your flesh!', '17259'),

('181', 'We are the true Horde!', '17259'),



-- -------------------------------

-- ADDITIONS FOR ACID REVISION 001

-- -------------------------------



('182', 'Mine! Mine! Mine! Gizlock is the ruler of this domain! You shall never reveal my presence!', '13601'),

('183', 'What? Oh no. I don\'t care what you have to say. I just enjoy inflicting pain.', '4306'),

('184', 'You will talk eventually. You might as well spill it now.', '4306'),

('185', 'Confess and we shall set you free.', '4306'),

('186', 'The living are here!', '10411');









-- Current Complete Summons Table for all Accepted Scripts

-- ----------------------------------------------------------

INSERT into `eventai_summons` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `comment` ) VALUES

('1', '8074.84', '-3840', '690.061', '4.6', '180000', '10727');





-- Add back in custom entries and finalize

-- ---------------------------------------

ALTER TABLE `eventai_scripts` AUTO_INCREMENT = 100001;

INSERT INTO `eventai_scripts` (`creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_param1`, `event_param2`, `event_param3`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`)

SELECT `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_param1`, `event_param2`, `event_param3`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment` FROM `temp_scripts`;

DROP TABLE `temp_scripts`;



INSERT INTO `db_version` (`version`) VALUES

('ACID 0.0.1 - Full Release');



-- NN@EOF