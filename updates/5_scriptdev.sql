DELETE FROM `eventai_scripts` WHERE `creature_id` IN (6229, 7915, 7800,3586,643);

INSERT INTO `eventai_scripts` (`id`, `creature_id` , `event_type` , `event_inverse_phase_mask` , `event_chance` ,`event_param1` , `event_param2` , `event_param3` , `action1_type` , `action1_param1` ,`action1_param2` , `action1_param3` , `action2_type` , `action2_param1` , `action2_param2` ,`action2_param3` , `action3_type` , `action3_param1` , `action3_param2` , `action3_param3` ,`comment`) VALUES



-- Mekgineer Thermaplugg

('780001','7800','0','0','100','15000','15000','20000','11','10101','1','0','0','0','0','0','0','0','0','0','Mekgineer Thermaplugg - Cast Knock Away'),

('780002','7800','0','0','100','40000','40000','20000','11','11130','1','0','0','0','0','0','0','0','0','0','Mekgineer Thermaplugg - Cast Knock Away'),

('780003','7800','6','0','100','0','0','0','2','188','0','0','4','5807','0','0','0','0','0','0','Mekgineer Thermaplugg - Aggro yell/sound'),

('780004','7800','0','0','100','40000','20000','25000','2','189','0','0','4','5808','0','0','0','0','0','0','Mekgineer Thermaplugg - Combat yell/sound'),

('780005','7800','7','0','100','0','0','0','2','191','0','0','4','5810','0','0','0','0','0','0','Mekgineer Thermaplugg - Kill yell/sound'),

('780006','7800','0','0','100','30000','30000','0','32','7915','4','2','32','7915','4','3','2','190','0','0','Mekgineer Thermaplugg - Summon and yell'),

('780007','7800','0','0','100','30000','30000','0','4','5809','0','0','0','0','0','0','0','0','0','0','Mekgineer Thermaplugg - Sound for yell on summon'),



-- Walking Bomb (Summoned in Mekgineer Thermaplugg's Script)

('791501','7915','1','0','100','15000','0','0','11','11504','0','0','0','0','0','0','0','0','0','0','Walking Bomb - Cast Walking Bomb Effect on spawn'),



-- Crowd Pummeler 9-60

('622901','6229','0','0','100','25000','25000','10000','11','5568','1','0','0','0','0','0','0','0','0','0','Crowd Pummeler 9-60 - Cast Trample'),

('622902','6229','0','0','100','35000','40000','25000','11','10887','1','0','0','0','0','0','0','0','0','0','Crowd Pummeler 9-60 - Cast Crowd Pummel'),

('622903','6229','0','0','100','15000','15000','5000','11','8374','1','0','0','0','0','0','0','0','0','0','Crowd Pummeler 9-60 - Cast Arcing Smash'),



-- Miner Johnson

('358601','3586','0','0','100','20000','20000','7500','11','12097','1','0','0','0','0','0','0','0','0','0','Miner Johnson - Cast Pierce Armor'),



-- Sneed

('64301','643','0','0','100','25000','25000','10000','11','6713','1','0','0','0','0','0','0','0','0','0','Sneed - Cast Disarm');



DELETE FROM `eventai_summons` WHERE `id` IN (2,3);

INSERT INTO `eventai_summons` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `comment`) VALUES

('2','-521.934','693.13','-327.005','2.95','120000','7800'),

('3','-535.318','649.987','-326.494','2.72','120000','7800');



DELETE FROM `localized_texts` WHERE `id` IN (188,189,190,191);

INSERT INTO `localized_texts` (`id`, `locale_0`, `comment`) VALUES

('188','USURPERS!!! GNOMEREGAN IS MINE!!!','7800'),

('189','My machines are the future! They\'ll destroy you all!','7800'),

('190','Explosions! MORE explosions! I\'ve got to have more explosions!','7800'),

('191','...and stay dead! He got served!','7800');