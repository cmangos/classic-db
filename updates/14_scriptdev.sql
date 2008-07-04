DELETE FROM `eventai_scripts` WHERE `creature_id` IN (6,30,38,40,43,46,60,61,79,80,94,97,99,100,103,113,116,119,257,295,299,327,330,390,448,471,473,474,475,476,478,524,583,620,732,881,2044,6846,6866,6927);

INSERT INTO `eventai_scripts` (`id`,`creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_param1`, `event_param2`, `event_param3`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES

-- Elwynn Forest

-- ------------------

-- Kobold Vermin  (Confirmed Official Data)

('601','6','6','0','50','0','0','0','6','7','8','-1','0','0','0','0','0','0','0','0','Kobold Vermin - Random Say on Aggro'),



-- Forest Spider (Confirmed Official Data)

('3001','30','0','0','80','15000','11000','5000','11','11918','1','0','0','0','0','0','0','0','0','0','Forest Spider - Casts Poison'),



-- Defias Thug  (Confirmed Official Data)

('3801','38','6','0','40','0','0','0','6','2','3','4','0','0','0','0','0','0','0','0','Defias Thug - Random Say on Aggro'),



-- Kobold Miner (Confirmed Official Data)

('4001','40','6','0','25','0','0','0','1','7','0','0','0','0','0','0','0','0','0','0','Kobold Miner - Random Say on Aggro'),

('4002','40','0','0','100','38000','6000','4000','11','6016','1','0','0','0','0','0','0','0','0','0','Kobold Miner - Casts Pierce Armor'),



-- Mine Spider (Confirmed Official Data)

('4301','43','0','0','100','18000','4500','10000','11','11918','1','0','0','0','0','0','0','0','0','0','Mine Spider - Casts Poison'),



-- Murloc Forager (Confirmed Official Data)

('4601','46','4','0','100','40','0','0','11','3368','0','0','0','0','0','0','0','0','0','0','Murloc Forager - Drink Minor Potion at 40% HP'),



-- Ruklar the Trapper (Confirmed Official Data)

('6001','60','0','0','100','21000','19600','10000','11','12024','1','0','0','0','0','0','0','0','0','0','Ruklar the Trapper - Casts Net'),

('6002','60','0','0','100','45000','8200','5000','11','6016','1','0','0','0','0','0','0','0','0','0','Ruklar the Trapper - Casts Pierce Armor'),



-- Thuros Lightfingers (Confirmed Official Data)

('6101','61','6','0','40','0','0','0','6','2','3','4','0','0','0','0','0','0','0','0','Thuros Lightfingers - Random Say on Aggro'),



-- Narg The Taskmaster(Confirmed Official Data)

('7901','79','0','0','100','18000','2000','0','11','9128','0','0','0','0','0','0','0','0','0','0','Narg the Taskmaster - Casts Battleshout'),



-- Kobold Labourer (Confirmed Official Data)

('8001','80','6','0','40','0','0','0','6','7','8','-1','0','0','0','0','0','0','0','0','Kobold Labourer - Random Chance Say'),



-- Defias Cutpurse (Confirmed Official Data)

('9401','94','1','0','100','2400','1100','5500','11','53','1','0','0','0','0','0','0','0','0','0','Defias Cutpurse - Casts Backstab'),



-- Riverpaw Runt (Confirmed Official Data)

('9701','97','6','0','50','0','0','0','6','5','6','-1','0','0','0','0','0','0','0','0','Riverpaw Runt - Random Say on Aggro'),

('9702','97','4','0','100','15','0','0','25','0','0','0','1','42','0','0','0','0','0','0','Riverpaw Runt - Flee at 15% HP'),



-- Morgaine the Sly (Confirmed Official Data)

('9901','99','0','0','100','16300','1800','0','11','1776','1','0','0','0','0','0','0','0','0','0','Morgaine the Sly - Casts Gouge'),

('9902','99','0','0','100','30000','8900','10000','11','11918','1','0','0','0','0','0','0','0','0','0','Morgaine the Sly - Casts Poison'),

('9903','99','0','0','100','3400','5500','2000','11','53','1','0','0','0','0','0','0','0','0','0','Morgaine the Sly - Casts Backstab'),



-- Gruff Swiftbite (Confirmed Official Data)

('10001','100','0','0','100','16000','2000','2000','11','3391','0','0','0','0','0','0','0','0','0','0','Gruff Swiftbite - Cast Thrash Spell'),



-- Garrick Padfoot (Confirmed Official Data)

('10301','103','6','2','100','0','0','0','11','71','0','0','0','0','0','0','0','0','0','0','Garrick Padfoot - Defensive Stance Spell (Phase 1)'), 

('10302','103','1','2','100','1000','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Garrick Padfoot - 1 Second Delay and Increment Phase'), 

('10303','103','1','1','100','0','0','0','1','1','0','0','0','0','0','0','0','0','0','0','Garrick Padfoot - Say (Phase 2)'), 



-- Stonetusk Boar (Confirmed Official Data)

('11301','113','6','0','15','0','0','0','11','6268','0','0','0','0','0','0','0','0','0','0','Stonetusk Boar - Casts Rushing Charge'),



-- Defias Bandit (Confirmed Official Data)

('11601','116','6','0','25','0','0','0','6','2','3','4','0','0','0','0','0','0','0','0','Defias Bandit - Random Say on Aggro'),

('11602','116','0','0','65','5000','4000','4000','11','8646','1','0','0','0','0','0','0','0','0','0','Defias Bandit - Casts Snap Kick'),



-- Longsnout (Confirmed Official Data)

('11901','119','6','0','15','0','0','0','11','6268','0','0','0','0','0','0','0','0','0','0','Longsnout - Casts Rushing Charge'),



-- Kobold Worker (Confirmed Official Data)

('25701','257','6','0','50','0','0','0','6','7','8','-1','0','0','0','0','0','0','0','0','Kobold Worker - Random Say on Aggro'),



-- Innkeeper Farley - (Need to Verify Timers)

('29501','295','2','0','40','600000','60000','120000','1','233','0','0','0','0','0','0','0','0','0','0','Innkeeper Farley - Random OOC Say'),



-- Young Wolf (Confirmed Official Data)

('29901','299','3','0','40','120000','0','0','4','1018','0','0','5','393','0','0','0','0','0','0','Young Wolf - Out of Combat Sound and Emote'),



-- Goldtooth (Confirmed Official Data)

('32701','327','6','0','40','0','0','0','6','7','8','-1','0','0','0','0','0','0','0','0','Goldtooth - Random Say on Aggro'),

('32702','327','4','0','100','20','0','0','25','0','0','0','1','42','0','0','0','0','0','0','Goldtooth - Flee at 20% HP'),



-- Princess (Confirmed Official Data)

('33001','330','6','0','20','0','0','0','11','6268','0','0','0','0','0','0','0','0','0','0','Princess - Casts Rushing Charge'),



-- Porcine Entourage (Confirmed Official Data)

('39001','390','6','0','20','0','0','0','11','6268','0','0','0','0','0','0','0','0','0','0','Porcine Entourage - Casts Rushing Charge'),



-- Hogger (Confirmed Official Data)

('44801','448','6','0','75','0','0','0','6','5','6','-1','0','0','0','0','0','0','0','0','Hogger - Random Say on Aggro'),

('44802','448','6','0','100','0','0','0','11','6268','0','0','0','0','0','0','0','0','0','0','Hogger - Casts Rushing Charge'),

('44803','448','0','0','100','46000','6000','2000','11','6016','1','0','0','0','0','0','0','0','0','0','Hogger - Casts Armor Pierce'),

('44804','448','0','0','100','20000','1300','9000','11','6730','1','0','0','0','0','0','0','0','0','0','Hogger - Casts Head Butt'),



-- Mother Fang (Confirmed Official Data)

('47101','471','0','0','100','17000','1500','2000','11','11918','1','0','0','0','0','0','0','0','0','0','Mother Fang - Casts Poison'),

('47102','471','0','0','100','22900','6700','8000','11','12023','1','0','0','0','0','0','0','0','0','0','Mother Fang - Casts Web'),



-- Morgan the Collector (Confirmed Official Data)

('47301','473','0','0','100','11900','1900','2000','11','1776','1','0','0','0','0','0','0','0','0','0','Morgan the Collector - Casts Gouge'),



-- Defias Rogue Wizard (Confirmed Official Data)

('47401','474','2','0','100','1800000','1000','0','11','168','0','0','0','0','0','0','0','0','0','0','Defias Rogue Wizard - Cast Frost Armor on Spawn'),

('47402','474','6','0','100','0','0','0','21','0','0','0','22','6','0','0','0','0','0','0','Defias Rogue Wizard - Ranged Movement and Set Phase 1 and on Aggro'),

('47403','474','6','0','10','0','0','0','1','2','0','0','0','0','0','0','0','0','0','0','Defias Rogue Wizard - Chance Say on Aggro'),

('47404','474','0','6','100','1500','0','3100','11','13439','1','0','0','0','0','0','0','0','0','0','Defias Rogue Wizard - (Phase 1) Cast FrostBolt above 15% Mana'),

('47405','474','5','0','100','15','0','0','22','5','0','0','21','1','0','0','0','0','0','0','Defias Rogue Wizard - Set Phase 2 and Change Combat Movement when Mana is at 15%'),

('47406','474','5','5','100','100','28','0','21','0','0','0','22','6','0','0','0','0','0','0','Defias Rogue Wizard - (Phase 2) Set Ranged Movement and Set Phase 1 when Mana is above 28%'),

('47407','474','9','0','100','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Defias Rogue Wizard - On Evade set Phase to 0'),



-- Kobold Tunneler (Confirmed Official Data)

('47501','475','6','0','25','0','0','0','1','8','0','0','0','0','0','0','0','0','0','0','Kobold Tunneler - Chance Say on Aggro'),



-- Kobold Geomancer (Confirmed Official Data)

('47601','476','2','0','100','1800000','1000','0','11','168','0','0','0','0','0','0','0','0','0','0','Kobold Geomancer - Cast Frost Armor on Spawn'),

('47602','476','6','0','100','0','0','0','21','0','0','0','22','6','0','0','0','0','0','0','Kobold Geomancer - Ranged Movement and Set Phase 1 and on Aggro'),

('47603','476','6','0','40','0','0','0','1','7','0','0','0','0','0','0','0','0','0','0','Kobold Geomancer - Chance Say on Aggro'),

('47604','476','0','6','100','0','0','3000','11','20793','1','0','0','0','0','0','0','0','0','0','Kobold Geomancer - (Phase 1) Cast Fireball above 15% Mana'),

('47605','476','5','0','100','15','0','0','22','5','0','0','21','1','0','0','0','0','0','0','Kobold Geomancer - Set Phase 2 and Change Combat Movement when Mana is at 15%'),

('47606','476','5','5','100','100','28','0','21','0','0','0','22','6','0','0','0','0','0','0','Kobold Geomancer - (Phase 2) Set Ranged Movement and Set Phase 1 when Mana is above 28%'),

('47607','476','9','0','100','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Kobold Geomancer - On Evade set Phase to 0'),



-- Riverpaw Outrunner (Confirmed Official Data)

('47801','478','6','0','50','0','0','0','6','5','6','-1','0','0','0','0','0','0','0','0','Riverpaw Outrunner - Random Say on Aggro'),

('47802','478','0','0','60','16000','2000','2000','11','3391','0','0','0','0','0','0','0','0','0','0','Riverpaw Outrunner - Cast Thrash Spell'),



-- Rockhide Boar (Confirmed Official Data)

('52401','524','6','0','10','0','0','0','11','6268','0','0','0','0','0','0','0','0','0','0','Rockhide Boar - Cast Rushing Charge on Aggro'),



-- Defias Ambusher (Confirmed Official Data)

('58301','583','6','0','40','0','0','0','6','2','3','4','0','0','0','0','0','0','0','0','Defias Ambusher - Random Say on Aggro'),



-- Chicken (Unconfirmed Data)

('62001','620','0','0','50','600000','300000','300000','11','13563','0','0','0','0','0','0','0','0','0','0','Chicken - Summon Chicken Egg'),



-- Murloc Lurker (Confirmed Official Data)

('73201','732','0','0','100','3900','6000','3000','11','7159','1','0','0','0','0','0','0','0','0','0','Murloc Lurker - Casts Backstab'),



-- Surena Caledon (Confirmed Official Data)

('88101','881','2','0','100','1800000','1000','0','11','12554','0','0','0','0','0','0','0','0','0','0','Surena Caledon - Cast Frost Armor on Spawn'),

('88102','881','6','0','100','0','0','0','21','0','0','0','22','6','0','0','0','0','0','0','Surena Caledon - Ranged Movement and Set Phase 1 and on Aggro'),

('88104','881','0','6','75','600','0','1300','11','20793','1','0','0','0','0','0','0','0','0','0','Surena Caledon - (Phase 1) Cast Fireball above 11% Mana'),

('88105','881','5','0','100','11','0','0','22','5','0','0','21','1','0','0','0','0','0','0','Surena Caledon - Set Phase 2 and Change Combat Movement when Mana is at 11%'),

('88106','881','5','5','100','100','20','0','21','0','0','0','22','6','0','0','0','0','0','0','Surena Caledon - (Phase 2) Set Ranged Movement and Set Phase 1 when Mana is above 20%'),

('88107','881','9','0','100','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Surena Caledon - On Evade set Phase to 0'),



-- Forlorn Spirit - Need Official Data (All Timers are Guessed)

('204401','2044','1','0','100','2000','0','0','11','3105','1','0','0','0','0','0','0','0','0','0','Forlorn Spirit - Casts Curse of Stalvan'),

('204402','2044','10','0','100','0','0','45000','11','118','6','0','0','0','0','0','0','0','0','0','Forlorn Spirit - Casts Polymorph on Spell Hit'),



-- Clara Charles - (Semi-Official) - Should only Summon when at the Well

('591701','5917','12','0','100','1','0','300000','32','583','6','7','0','0','0','0','0','0','0','0','Clara Charles - Summons Defias Ambusher on OOC LOS'),



-- Defias Dockmaster (Confirmed Official Data)

('684601','6846','6','0','100','0','0','0','1','232','0','0','0','0','0','0','0','0','0','0','Defias Dockmaster - Say on Aggro'),

('684602','6846','1','0','100','1500','0','0','32','6866','6','4','32','6866','6','5','32','6866','6','6','Defias Dockmaster - Summon 3 Defias Bodyguards on Aggro'),



-- Defias Bodyguard (Confirmed Official Data)

('686601','6866','6','0','40','0','0','0','6','2','3','4','0','0','0','0','0','0','0','0','Defias Bodyguard - Random Say on Aggro'),

('686602','6866','0','0','70','34000','2900','4000','11','6713','1','0','0','0','0','0','0','0','0','0','Defias Bodyguard - Casts Disarm'),

('686603','6866','0','0','80','5900','5500','7000','11','7159','1','0','0','0','0','0','0','0','0','0','Defias Bodyguard - Casts Backstab'),



-- Defias Dockworker(Confirmed Official Data)

('692701','6927','6','0','40','0','0','0','6','2','3','4','0','0','0','0','0','0','0','0','Defias Dockworker - Random Say on Aggro'),

('692702','6927','0','0','100','40100','10500','0','11','8646','1','0','0','0','0','0','0','0','0','0','Defias Dockworker - Casts Snap Kick');



DELETE FROM `localized_texts` WHERE id IN (232,233);

INSERT into `localized_texts` (`id`, `locale_0`, `comment`) VALUES

('232','The Brotherhood will not be hampered by insects.','6846'),

('233','So much to do, so much to do! Where does the time go?','295');



DELETE FROM `eventai_summons` WHERE id IN (4,5,6,7);

INSERT into `eventai_summons` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `comment` ) VALUES

('4','-9967.55','-135.956','24.5909','0.170326','180000','6846'), 

('5','-9958.49','-140.526','24.2409','4.0015','180000','6846'),

('6','-9964.59','-140.567','24.5105','0.741307','180000','6846'),

('7','-9232.11','342.473','74.4399','4.31658','180000','5917');



DROP TABLE IF EXISTS `db_version`;

DROP TABLE IF EXISTS `sd2_db_version`;

CREATE TABLE `sd2_db_version` (

`version` varchar(255) NOT NULL default '' COMMENT 'Database version string'

) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO `sd2_db_version` SET `version` = 'ACID 0.0.2 - Update Pack r14';