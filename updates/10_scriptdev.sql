DELETE FROM `eventai_scripts` WHERE `creature_id` IN (103,642,6,17898,11256,3518,1402,1405,2015,2017,7397,11663,15547,17730,17803,16459,16460,16461,16473);

INSERT INTO `eventai_scripts` (`id`,`creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_param1`, `event_param2`, `event_param3`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES



-- Garrick Padfoot (Fixed Yell Coding)

('10301','103','6','2','100','100','0','0','11','71','0','0','0','0','0','0','0','0','0','0','Garrick Padfoot - Defensive Stance Spell (Phase 1)'), 

('10302','103','1','2','100','1000','100','0','23','1','0','0','0','0','0','0','0','0','0','0','Garrick Padfoot - 1 Second Delay and Increment Phase'), 

('10303','103','1','1','100','0','100','0','1','1','0','0','0','0','0','0','0','0','0','0','Garrick Padfoot - Say (Phase 2)'),



-- Sneed\'s Shredder (Fixed Workaround with Using Correct Eject Sneed Spell)

('64201','642','0','0','85','20000','9000','0','11','3603','1','0','0','0','0','0','0','0','0','0','Sneed\'s Shredder - Casts Distracting Pain'), 

('64202','642','0','0','80','30000','18000','0','11','7399','1','0','0','0','0','0','0','0','0','0','Sneed\'s Shredder - Casts Terrify'), 

('64203','642','8','0','100','0','0','0','11','5141','0','7','0','0','0','0','0','0','0','0','Sneed\'s Shredder - Casts Eject Sneed'),



-- Abomination (Fix Knokdown Spell)

('1789801','17898','0','0','80','30000','10000','25000','11','31610','1','0','0','0','0','0','0','0','0','0','Abomination - Cast Knockdown'),

('1789802','17898','6','0','100','0','0','0','11','29865','0','0','0','0','0','0','0','0','0','0','Abomination - Poison Aura on Aggro'),

('1789803','17898','1','0','100','1000','0','0','11','37256','0','0','0','0','0','0','0','0','0','0','Abomination - Apply Disease Cloud'),



-- Manifestation of Water

('1125601','11256','3','0','100','10000','0','0','1','203','0','0','0','0','0','0','0','0','0','0','Manifestation of Water - Say after Spawn'),



-- Harpy and Stormwind NPC

('351801','3518','2','0','100','180000','0','0','6','204','205','-1','0','0','0','0','0','0','0','0','Thomas Miller - Random Say'),

('140201','1402', '2', '0','100', '180000', '0', '0', '6', '206', '207', '208', '0', '0', '0', '0', '0', '0', '0', '0', 'Topper McNabb - Random Say'),

('140501','1405', '2', '0','100', '180000', '0', '0', '6', '206', '207', '208', '0', '0', '0', '0', '0', '0', '0', '0', 'Morris Lawry - Random Say'),

('201501','2015', '6', '0', '70', '0', '0','0', '1', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodfeather Harpy - Say on Aggro'),

('201701','2017', '6', '0', '70', '0','0', '0', '1', '202', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodfeather Rogue - Say on Aggro'),



-- Earthen Stonecarver (Fixed Spells)

('739701', '7397','0','0','100','10000','5000','10000','11','10452','1','0','0','0','0','0','0','0','0','0','Earthen Stonecarver - Cast Flame Buffet'),

('739702', '7397','0','0','100','20000','0','5000','11','2602','0','0','0','0','0','0','0','0','0','0','Earthen Stonecarver - Cast Fire Shield IV on Aggro'),



-- Flamewalker Healer (Fixed Spells)

('1166301', '11663', '0', '0', '100', '9000', '9000', '0', '11', '20603', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flamewaker Healer - Casts Shadow Shock'),

('1166302', '11663', '0', '0', '100', '2000', '2000', '0', '11', '22677', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Flamewaker Healer - Casts Shadow Bolt'),



-- Spectral Charger (Removed Incorrect Spell)

(1554701, 15547, 0, 0, 85, 15000, 5000, 0, 11, 36140, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Charger - Charge'), 



-- Murkblood Healer (Fixed Spells and Switched to Event 16 for Group Healing)

(1773001, 17730, 16, 0, 80, 7000, 40, 12000, 11, 37979, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Murkblood Healer - Casts Holy Light'), 

(1773002, 17730, 16, 0, 100, 6000, 40, 9000, 11, 38209, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Murkblood Healer - Casts Heal'), 

(1773003, 17730, 4, 0, 70, 80, 0, 15000, 11, 30604, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Murkblood Healer - Casts Prayer of Healing'), 



-- Coilfang Oracle (Changed Heal Spell to Event 16)

(1780301, 17803, 0, 0, 75, 18000, 9000, 0, 11, 8281, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Oracle - Casts Sonic Boom'), 

(1780302, 17803, 0, 0, 80, 21000, 16000, 0, 11, 22582, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Oracle - Casts Frost Shock'), 

(1780303, 17803, 16, 0, 100, 13200, 40, 10000, 11, 31730, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Oracle - Casts Heal'), 



-- Wanton Hostess (Rewrote Scripts for better Spell Implimentation) 

(1645901, 16459, 6, 0, 100, 0, 0, 0, 11, 29485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wanton Hostess - Cast Alluring Aura on Aggro'), 

(1645902, 16459, 4, 0, 100, 50, 0, 0, 28, 0, 29485, 0, 11, 29472, 0, 0, 11, 29486, 0, 0, 'Wanton Hostess - Remove Alluring Aura / Casts Hostess Transform / Casts Bewitching Aura'), 

(1645903, 16459, 0, 0, 75, 20000, 8000, 0, 11, 38183, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wanton Hostess - Cast Banshee Wail'), 



-- Night Mistress (Rewrote Scripts for better Spell Implimentation) 

(1646001, 16460, 4, 0, 100, 50, 0, 0, 11, 29488, 1, 0, 11, 29491, 0, 0, 0, 0, 0, 0, 'Night Mistress - Casts Night Mistress Transform and Impending Betrayal at 50% HP'), 

(1646002, 16460, 0, 0, 80, 15000, 7000, 0, 11, 29487, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Night Mistress - Cast Shadow Bolt'), 

(1646003, 16460, 0, 0, 85, 25000, 15000, 0, 11, 30358, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Night Mistress - Cast Searing Pain'), 

(1646004, 16460, 0, 0, 60, 30000, 25000, 0, 7, 56, 57, 58, 0, 0, 0, 0, 0, 0, 0, 0, 'Night Mistress - Random Yells'), 



-- Concubine (Rewrote Scripts for better Spell Implimentation) 

(1646101, 16461, 4, 0, 100, 50, 0, 0, 11, 29489, 1, 0, 11, 29490, 0, 0, 0, 0, 0, 0, 'Concubine - Casts Concubine Transform and Seduction at 50% HP'), 

(1646102, 16461, 0, 0, 75, 14000, 9000, 4000, 11, 15969, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Concubine - Casts Tormenting Lash'), 

(1646103, 16461, 8, 0, 100, 0, 0, 0, 2, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Concubine - Yell at Creature Death'), 

(1646104, 16461, 3, 0, 100, 40000, 0, 0, 2, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Concubine - Yell'), 



-- Spectral Performer (Fixed HP% For Cast Spotlight)

(1647301, 16473, 0, 0, 80, 30000, 16000, 0, 11, 29679, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Performer - Cast Bad Poetry'), 

(1647302, 16473, 0, 0, 70, 20000, 6000, 0, 11, 29680, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Performer - Cast Curtain Call'), 

(1647303, 16473, 4, 0, 100, 50, 0, 0, 11, 29683, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Performer - Cast Spotlight'); 



DELETE FROM `localized_texts` WHERE `id` IN (200,202,203,204,205,206,207,208);

INSERT into `localized_texts` (`id`, `locale_0`, `comment`) VALUES

('200','You will be easy prey, $C.','2015,2017,2018'),

('202','A fine trophy your head will make, $R.','2015,2017,2018'),

('203','Ma reth bromo zoln kilagrin dra ma zoern tu ko fraht ka tadrom Ma krin drinor zaln dirnor Ma krin kan aasrugel korsul','11256'),

('204','Fresh bread for sale!','3518'),

('205','Freshly baked bread for sale!','3518'),

('206','Shine yer armor for a copper?','1402,1405'),

('207','Help a poor bloke out?','1402,1405'),

('208','Some coin?','1402,1405');



UPDATE `db_version` SET `version` = 'ACID 0.0.1 - Update Pack r10';

















