DELETE FROM `eventai_scripts` WHERE `creature_id` IN (620,18113,18470,18292,22807);

INSERT INTO `eventai_scripts` (`id`,`creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_param1`, `event_param2`, `event_param3`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES



-- Feralfen Hunter (Fix Console Error)

('1811301', '18113', '6', '0', '100', '0', '0', '0', '11', '32060', '1', '0','11', '12024', '1', '0', '0', '0', '0', '0', 'Feralfen Hunter - Cast Summon Spore Bat and Cast Net '),

('1811302', '18113', '0', '0', '100', '6000', '1000', '0', '11', '6660', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Feralfen Hunter - Cast Shoot'),

('1811303', '18113', '0', '0', '100', '10000', '4000', '0', '11', '31975', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Feralfen Hunter - Cast Serpent Sting'),



-- Bonelasher  (Fix Console Error)

('1847001','18470','0','0','100','170000','10000','5000','11','34363','1','0','0','0','0','0','0','0','0','0','Bonelasher - Cast Fevered Disease'),



-- Bleeding Hollow Refugee  (Fix Console Error)

('1829201','18292','2','0','100','60000','30000','120000','6','310','308','-1','5','5','0','0','0','0','0','0','Bleeding Hollow Refugee - Gossip Speech and Emote'),



-- Lost Torranche (Fix Console Error)

('2280701','22807','4','0','100','15','0','0','25','0','0','0','3','42','0','0','0','0','0','0','Lost Torranche - Run Away in Fear'),



-- Chicken - Missed in Previous commit

('62001','620','0','0','50','600000','300000','300000','11','13563','0','0','0','0','0','0','0','0','0','0','Chicken - Summon Chicken Egg');



-- --------------------------------------------------------------------------------------

-- ALL HAVE BEEN ADDED/CHANGED TO 0.0.3 UP TO THIS POINT

-- --------------------------------------------------------------------------------------



DROP TABLE IF EXISTS `sd2_db_version`;

CREATE TABLE `sd2_db_version` (

`version` varchar(255) NOT NULL default '' COMMENT 'Database version string'

) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sd2_db_version` (`version`) VALUES

('ACID 0.0.2 - Update Pack r16');







