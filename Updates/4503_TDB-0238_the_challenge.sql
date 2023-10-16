UPDATE broadcast_text SET ChatTypeID=1 WHERE Id IN(11953,11952);

DELETE FROM creature_spell_targeting WHERE Id=122 AND type=1 AND Param3=32770;
DELETE FROM creature_spell_targeting WHERE Id=123 AND type=1 AND Param3=2;
DELETE FROM creature_spell_targeting WHERE Id=210 AND type=2 AND Param3=0;
INSERT INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, UnitCondition, Comments) VALUES
('122', '1', '0', '0', '32770', '-1', 'Attack - random player casting'),
('123', '1', '0', '0', '2', '150', 'Attack - random player dispel type 1'),
('210', '2', '0', '0', '0', '180', 'Support - Unitcond - Less than 30% and more than one attacker');
UPDATE creature_spell_targeting SET Comments='Attack - random player non tank casting' WHERE Id = 102;
UPDATE creature_template SET SpellList = 1605901 WHERE entry=16059; -- Theldren
DELETE FROM creature_spell_list_entry WHERE Id IN(1605901);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1605901, 'BRD - The Challenge - Theldren', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1605901);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1605901', '0', '27578', '0', '-1', '0', '0', '1', '1','2000','5000','120000','120000', 'Theldren - Battle Shout'),
('1605901', '1', '27581', '0', '-1', '1', '0', '1', '1','2000','5000','30000','40000', 'Theldren - Disarm'),
('1605901', '2', '19134', '0', '-1', '100', '0', '1', '1','5000','10000','30000','40000', 'Theldren - Frightening Shout'),
('1605901', '3', '27580', '0', '-1', '1', '0', '1', '1','5000','10000','10000','15000', 'Theldren - Mortal Strike'),
('1605901', '4', '27584', '0', '-1', '1', '0', '1', '1','5000','10000','10000','15000', 'Theldren - Hamstring'),
('1605901', '5', '27579', '0', '-1', '0', '0', '1', '1','10000','15000','10000','15000', 'Theldren - Demoralizing Shout'),
('1605901', '6', '27577', '0', '132', '210', '0', '1', '1','10000','15000','30000','40000', 'Theldren - Intercept based on unit cond'),
('1605901', '7', '15503', '0', '872', '0', '0', '1', '1','10000','10000','120000','120000', 'Theldren - Drink Healing Potion below 20%');

UPDATE creature_template SET SpellList = 1605801 WHERE entry=16058; -- Volida
DELETE FROM creature_spell_list_entry WHERE Id IN(1605801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1605801, 'BRD - The Challenge - Volida', 0, 75);
DELETE FROM creature_spell_list WHERE Id IN(1605801);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1605801', '0', '20822', '2', '-1', '1', '0', '1', '1','0','0','0','0', 'Volida - Frostbolt'),
('1605801', '1', '15063', '0', '-1', '103', '0', '1', '1','10000','15000','30000','40000', 'Volida - Frost Nova'),
('1605801', '2', '20828', '0', '-1', '1', '0', '1', '1','10000','10000','10000','10000', 'Volida - Cone of Cold'),
('1605801', '3', '14514', '0', '101', '0', '0', '1', '1','20000','30000','50000','60000', 'Volida - Blink'),
('1605801', '4', '27618', '0', '-1', '101', '0', '1', '1','20000','30000','60000','70000', 'Volida - Blizzard'),
('1605801', '5', '27619', '0', '-1', '0', '0', '1', '1','15000','15000','180000','180000', 'Volida - Ice Block'),
('1605801', '6', '15503', '0', '872', '0', '0', '1', '1','10000','10000','120000','120000', 'Volida - Drink Healing Potion below 20%');

UPDATE creature_template SET SpellList = 1605101 WHERE entry=16051; -- Snokh Blackspine
DELETE FROM creature_spell_list_entry WHERE Id IN(1605101);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1605101, 'BRD - The Challenge - Snokh Blackspine', 0, 75);
DELETE FROM creature_spell_list WHERE Id IN(1605101);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1605101', '0', '20827', '0', '-1', '101', '0', '1', '10','1000','2000','10000','15000', 'Snokh Blackspine - Flamestrike'),
('1605101', '1', '17273', '0', '-1', '1', '0', '1', '10','5000','10000','60000','80000', 'Snokh Blackspine - Pyroblast'),
('1605101', '2', '23039', '0', '-1', '103', '0', '1', '10','10000','15000','20000','30000', 'Snokh Blackspine - Blast Wave'),
('1605101', '3', '13323', '0', '-1', '101', '0', '1', '10','10000','20000','20000','30000', 'Snokh Blackspine - Polymorph'),
('1605101', '4', '15241', '2', '-1', '1', '0', '1', '1','0','0','0','0', 'Snokh Blackspine - Scorch'),
('1605101', '5', '14514', '0', '101', '0', '0', '1', '1','20000','30000','50000','60000', 'Snokh Blackspine - Blink'),
('1605101', '6', '15503', '0', '872', '0', '0', '1', '1','10000','10000','120000','120000', 'Snokh Blackspine - Drink Healing Potion below 20%');

UPDATE creature_template SET SpellList = 1605302 WHERE entry=16053; -- Korv
DELETE FROM creature_spell_list_entry WHERE Id IN(1605302);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1605302, 'BRD - The Challenge - Korv', 25, 0);
DELETE FROM creature_spell_list WHERE Id IN(1605302);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1605302', '0', '15786', '0', '-1', '0', '0', '1', '1','1000','2000','60000','80000', 'Korv - Earthbind Totem'),
('1605302', '1', '21401', '8', '-1', '1', '0', '1', '1','1000','2000','5000','10000', 'Korv - Frost Shock'),
('1605302', '2', '27621', '0', '-1', '0', '0', '1', '1','5000','10000','90000','120000', 'Korv - Windfury Totem'),
('1605302', '3', '27623', '0', '-1', '0', '0', '1', '1','5000','10000','60000','80000', 'Korv - Fire Nova Totem'),
('1605302', '4', '27624', '1', '-1', '201', '0', '1', '1','10000','15000','10000','15000', 'Korv - Lesser Healing Wave'),
('1605302', '5', '27626', '0', '-1', '123', '0', '1', '1','10000','15000','15000','20000', 'Korv - Purge'),
('1605302', '6', '20549', '0', '-1', '103', '0', '1', '1','10000','15000','0','0', 'Korv - War Stomp'),
('1605302', '7', '15503', '0', '872', '0', '0', '1', '1','10000','10000','120000','120000', 'Korv - Drink Healing Potion below 20%');

UPDATE creature_template SET SpellList = 1604901 WHERE entry=16049; -- Lefty
DELETE FROM creature_spell_list_entry WHERE Id IN(1604901);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1604901, 'BRD - The Challenge - Lefty', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1604901);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1604901', '0', '27620', '0', '-1', '122', '0', '1', '1','1000','2000','7000','10000', 'Lefty - Snap Kick'),
('1604901', '1', '11428', '0', '-1', '1', '0', '1', '1','10000','15000','12000','17000', 'Lefty - Knockdown'),
('1604901', '2', '27672', '0', '-1', '0', '0', '1', '1','20000','30000','80000','100000', 'Lefty - Initiate Secret Technique'),
('1604901', '3', '15503', '0', '872', '0', '0', '1', '1','10000','10000','120000','120000', 'Lefty - Drink Healing Potion below 20%');

DELETE FROM creature_template_addon WHERE entry=16050;
INSERT INTO creature_template_addon(entry,auras) VALUES
(16050,8601);
UPDATE creature_template SET SpellList = 1605001 WHERE entry=16050; -- Rotfang
DELETE FROM creature_spell_list_entry WHERE Id IN(1605001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1605001, 'BRD - The Challenge - Rotfang', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1605001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1605001', '0', '12540', '0', '-1', '1', '0', '1', '1','5000','10000','10000','15000', 'Rotfang - Gouge'),
('1605001', '1', '27613', '0', '-1', '122', '0', '1', '1','5000','10000','10000','15000', 'Rotfang - Kick'),
('1605001', '2', '14873', '0', '-1', '1', '0', '1', '1','2000','4000','4000','6000', 'Rotfang - Sinister Strike'),
('1605001', '3', '27615', '0', '-1', '1', '0', '1', '1','10000','15000','20000','30000', 'Rotfang - Kidney Shot'),
('1605001', '4', '27611', '0', '-1', '1', '0', '1', '1','10000','15000','10000','15000', 'Rotfang - Eviscerate'),
('1605001', '5', '27617', '0', '281', '0', '0', '1', '1','10000','20000','80000','100000', 'Rotfang - Vanish below 50% hp'),
('1605001', '6', '15503', '0', '872', '0', '0', '1', '1','10000','10000','120000','120000', 'Rotfang - Drink Healing Potion below 20%');

UPDATE creature_template SET SpellList = 1605501 WHERE entry=16055; -- Va'jashni
DELETE FROM creature_spell_list_entry WHERE Id IN(1605501);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1605501, 'BRD - The Challenge - Va''jashni', 50, 0);
DELETE FROM creature_spell_list WHERE Id IN(1605501);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1605501', '0', '27605', '0', '-1', '100', '0', '1', '1','2000','4000','2000','4000', 'Va''jashni - Shadow Word: Pain'),
('1605501', '1', '27609', '0', '-1', '123', '0', '1', '1','5000','10000','12000','16000', 'Va''jashni - Dispel Magic'),
('1605501', '2', '27607', '1', '-1', '202', '0', '1', '1','10000','15000','10000','15000', 'Va''jashni - Power Word: Shield'),
('1605501', '3', '27608', '1', '-1', '201', '0', '1', '1','4000','6000','4000','6000', 'Va''jashni - Flash Heal'),
('1605501', '4', '27606', '1', '-1', '202', '0', '1', '1','10000','15000','20000','30000', 'Va''jashni - Renew'),
('1605501', '5', '27610', '0', '-1', '0', '0', '1', '1','15000','20000','80000','100000', 'Va''jashni - Psychic Scream'),
('1605501', '6', '15503', '0', '872', '0', '0', '1', '1','10000','10000','120000','120000', 'Va''jashni - Drink Healing Potion below 20%');

UPDATE creature_template SET SpellList = 1605401 WHERE entry=16054; -- Rezznik
DELETE FROM creature_spell_list_entry WHERE Id IN(1605401);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1605401, 'BRD - The Challenge - Rezznik', 25, 0);
DELETE FROM creature_spell_list WHERE Id IN(1605401);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1605401', '0', '8209', '0', '-1', '0', '0', '1', '1','1000','2000','15000','20000', 'Rezznik - Explosive Sheep'),
('1605401', '1', '27677', '1', '-1', '3', '0', '1', '1','2000','4000','20000','30000', 'Rezznik - Recombobulate'),
('1605401', '2', '27603', '0', '-1', '0', '0', '1', '1','4000','6000','10000','15000', 'Rezznik - Goblin Dragon Gun'),
('1605401', '3', '19784', '0', '-1', '101', '0', '1', '1','10000','15000','15000','20000', 'Rezznik - Dark Iron Bomb'),
('1605401', '4', '27602', '0', '-1', '0', '0', '1', '1','20000','30000','80000','100000', 'Rezznik - Summon Arcanite Dragonling'),
('1605401', '5', '15503', '0', '872', '0', '0', '1', '1','10000','10000','120000','120000', 'Rezznik - Drink Healing Potion below 20%');

UPDATE creature_template SET SpellList = 1609501 WHERE entry=16095; -- Gnashjaw
DELETE FROM creature_spell_list_entry WHERE Id IN(1609501);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1609501, 'BRD - The Challenge - Gnashjaw', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1609501);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1609501', '0', '15503', '0', '872', '0', '0', '1', '1','10000','10000','120000','120000', 'Gnashjaw - Drink Healing Potion below 20%');

UPDATE creature_template SET SpellList = 1605201 WHERE entry=16052; -- Malgen Longspear
DELETE FROM creature_spell_list_entry WHERE Id IN(1605201);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1605201, 'BRD - The Challenge - Malgen Longspear', 0, 75);
DELETE FROM creature_spell_list WHERE Id IN(1605201);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1605201', '0', '27633', '0', '-1', '1', '0', '1', '1','5000','10000','20000','30000', 'Malgen Longspear - Wing Clip'),
('1605201', '1', '16100', '2', '-1', '1', '0', '1', '1','0','0','0','0', 'Malgen Longspear - Shoot'),
('1605201', '2', '27632', '0', '-1', '1', '0', '1', '1','10000','15000','4000','6000', 'Malgen Longspear - Aimed Shot'),
('1605201', '3', '18651', '0', '-1', '1', '0', '1', '1','10000','15000','10000','15000', 'Malgen Longspear - Multi-Shot'),
('1605201', '4', '27634', '0', '-1', '100', '0', '1', '1','10000','15000','20000','25000', 'Malgen Longspear - Concussive Shot on random player'),
('1605201', '5', '27753', '0', '281', '0', '0', '1', '1','20000','30000','80000','100000', 'Malgen Longspear - Freezing Trap below 50% hp'),
('1605201', '6', '15503', '0', '872', '0', '0', '1', '1','10000','10000','120000','120000', 'Malgen Longspear - Drink Healing Potion below 20%');

UPDATE creature_template SET SpellList = 1247301 WHERE entry=12473; -- Arcanite Dragonling
DELETE FROM creature_spell_list_entry WHERE Id IN(1247301);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1247301, 'BRD - The Challenge - Arcanite Dragonling', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(1247301);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1247301', '0', '8873', '0', '-1', '0', '0', '1', '1','4000','6000','10000','15000', 'Arcanite Dragonling - Flame Breath'),
('1247301', '1', '9658', '0', '-1', '1', '0', '1', '1','5000','10000','15000','20000', 'Arcanite Dragonling - Flame Buffet');

