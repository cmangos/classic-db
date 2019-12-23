 -- The Prophet Skeram - 64 checked with CCSDB
UPDATE creature_template SET UnitFlags=64 WHERE entry IN(15263); -- this is tied to a 2.0.1 birth spell, vanilla only prolly 64 or different spell
DELETE FROM spell_target_position WHERE Id IN(4801,8195,20449);
INSERT INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
('4801', '531', '-8344.97', '2081.36', '125.649', '0'),
('8195', '531', '-8306.68', '2060.84', '133.062', '0'),
('20449', '531', '-8330.63', '2123.14', '133.062', '0');
 -- Bug Trio
UPDATE creature_template SET UnitFlags=64,CreatureType=1 WHERE entry IN(15511);
UPDATE creature_model_info SET bounding_radius=2.5,combat_reach=4.725 WHERE modelid IN(15656);
UPDATE creature_template SET UnitFlags=64,CreatureType=1 WHERE entry IN(15543);
UPDATE creature_model_info SET bounding_radius=2,combat_reach=3.78 WHERE modelid IN(15657);
UPDATE creature_template SET UnitFlags=64,CreatureType=1 WHERE entry IN(15544);
UPDATE creature_model_info SET bounding_radius=1.6,combat_reach=3.024 WHERE modelid IN(15658);
UPDATE creature_template SET UnitFlags=33554432 WHERE entry IN(15933);
 -- Battleguard Sartura
UPDATE creature_template SET UnitFlags=64,CreatureType=7 WHERE entry IN(15511);
UPDATE creature_model_info SET bounding_radius=2.75,combat_reach=4.125 WHERE modelid IN(15583);
UPDATE creature_model_info SET bounding_radius=1.75,combat_reach=2.625 WHERE modelid IN(15465);
 -- Fankriss the Unyielding
UPDATE creature_template SET UnitFlags=(64+32768),CreatureType=1,Family=42 WHERE entry IN(15630);
UPDATE creature_template SET UnitFlags=0,CreatureType=1,Family=41 WHERE entry IN(15962);
UPDATE creature_model_info SET bounding_radius=3,combat_reach=3 WHERE modelid IN(15582);
UPDATE creature_model_info SET bounding_radius=0.575,combat_reach=1.725 WHERE modelid IN(15362);
UPDATE creature_template SET Detection=80 WHERE entry IN(15510);
 -- Viscidus
UPDATE creature_model_info SET bounding_radius=1.5,combat_reach=12 WHERE modelid IN(15686);
UPDATE creature_template SET UnitFlags=64,CreatureType=15,Family=0 WHERE entry IN(15962);
UPDATE creature_template SET Leash=130 WHERE entry IN(15299);
 -- Princess Huhuran
UPDATE creature_template SET UnitFlags=64,CreatureType=1,Family=41 WHERE entry IN(15962);
UPDATE creature_model_info SET bounding_radius=1,combat_reach=3 WHERE modelid IN(15739);
UPDATE creature_template SET Detection=80 WHERE entry IN(15509);
 -- Twin Emperors
UPDATE creature_template SET UnitFlags=64,CreatureType=7,Family=0 WHERE entry IN(15276,15275);
UPDATE creature_model_info SET bounding_radius=1.5,combat_reach=4.5 WHERE modelid IN(15761);
UPDATE creature_model_info SET bounding_radius=1.5,combat_reach=4.5 WHERE modelid IN(15778);
 -- Ouro
UPDATE creature_template SET UnitFlags=64,CreatureType=1,Family=42 WHERE entry IN(15517);
UPDATE creature_model_info SET bounding_radius=7.5,combat_reach=18.75 WHERE modelid IN(15509);
UPDATE creature_template SET UnitFlags=33554432,CreatureType=10,Family=0 WHERE entry IN(15957);
UPDATE creature_template SET SpeedWalk=12/2.5,SpeedRun=12/7 WHERE entry IN(15712);
UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=15/7 WHERE entry IN(15718);

