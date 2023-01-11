ALTER TABLE db_version CHANGE COLUMN required_z2795_01_mangos_waypoint_path_name required_z2797_01_mangos_eai_dbguid_support bit;
ALTER TABLE db_version CHANGE COLUMN required_z2797_01_mangos_eai_dbguid_support required_z2798_01_mangos_battleground_reflooot bit;

ALTER TABLE battleground_template ADD COLUMN PlayerSkinReflootId MEDIUMINT UNSIGNED NOT NULL DEFAULT 0 COMMENT 'reference_loot_template entry';

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 3018 AND 3028;
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(3018,11,0,5,0,0,2,'PvP Rank < 6'),
(3019,11,6,9,0,0,2,'PvP Rank >= 6 < 10'),
-- Quest condition (entry 3020, type 11) has too high rank idx in value2 (20)!
-- #define NEGATIVE_HONOR_RANK_COUNT 4
-- #define POSITIVE_HONOR_RANK_COUNT 15
-- #define HONOR_RANK_COUNT 19 // negative + positive ranks
(3020,11,10,19,0,0,2,'PvP Rank >= 10 < 20'),
-- 1 	5879 	Private %s 	Private %s 	1
-- 2 	5880 	Corporal %s 	Corporal %s 	2
-- 3 	5881 	Sergeant %s 	Sergeant %s 	3
-- 4 	5882 	Master Sergeant %s 	Master Sergeant %s 	4
-- 5 	5883 	Sergeant Major %s 	Sergeant Major %s 	5
-- 6 	5884 	Knight %s 	Knight %s 	6
-- 7 	5885 	Knight-Lieutenant %s 	Knight-Lieutenant %s 	7
-- 8 	5886 	Knight-Captain %s 	Knight-Captain %s 	8
-- 9 	5887 	Knight-Champion %s 	Knight-Champion %s 	9
-- 10 	5888 	Lieutenant Commander %s 	Lieutenant Commander %s 	10
-- 11 	5889 	Commander %s 	Commander %s 	11
-- 12 	5890 	Marshal %s 	Marshal %s 	12
-- 13 	5891 	Field Marshal %s 	Field Marshal %s 	13
-- 14 	5892 	Grand Marshal %s 	Grand Marshal %s 	14

-- 15 	5893 	Scout %s 	Scout %s 	15
-- 16 	5894 	Grunt %s 	Grunt %s 	16
-- 17 	5895 	Sergeant %s 	Sergeant %s 	17
-- 18 	5896 	Senior Sergeant %s 	Senior Sergeant %s 	18
-- 19 	5897 	First Sergeant %s 	First Sergeant %s 	19
-- 20 	5898 	Stone Guard %s 	Stone Guard %s 	20
-- 21 	5899 	Blood Guard %s 	Blood Guard %s 	21
-- 22 	5900 	Legionnaire %s 	Legionnaire %s 	22
-- 23 	5901 	Centurion %s 	Centurion %s 	23
-- 24 	5902 	Champion %s 	Champion %s 	24
-- 25 	5903 	Lieutenant General %s 	Lieutenant General %s 	25
-- 26 	5904 	General %s 	General %s 	26
-- 27 	5905 	Warlord %s 	Warlord %s 	27
-- 28 	5906 	High Warlord %s 	High Warlord %s
(3021,6,67,4,0,0,2,''),
(3022,6,469,4,0,0,2,''),
(3023,-1,3018,3021,0,0,0,''),
(3024,-1,3019,3021,0,0,0,''),
(3025,-1,3020,3021,0,0,0,''),
(3026,-1,3018,3022,0,0,0,''),
(3027,-1,3019,3022,0,0,0,''),
(3028,-1,3020,3022,0,0,0,'');
INSERT INTO reference_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('1', '17502', '75', '0', '1', '1', '3023', ''),
('1', '17503', '75', '0', '1', '1', '3024', ''),
('1', '17504', '75', '0', '1', '1', '3025', ''),
('1', '17326', '75', '0', '1', '1', '3026', ''),
('1', '17327', '75', '0', '1', '1', '3027', ''),
('1', '17328', '75', '0', '1', '1', '3028', ''),
('1', '18144', '75', '0', '1', '1', '293', ''),
('1', '18207', '75', '0', '1', '1', '294', ''),
('1', '18206', '75', '0', '1', '1', '295', ''),
('1', '18142', '75', '0', '1', '1', '296', ''),
('1', '18147', '75', '0', '1', '1', '297', ''),
('1', '18145', '75', '0', '1', '1', '298', ''),
('1', '18143', '75', '0', '1', '1', '299', ''),
('1', '18146', '75', '0', '1', '1', '300', ''),
('1', '17422', '75', '0', '1', '20', '0', 'Armor Scraps'),
('1', '17306', '-100', '0', '1', '1', '4', 'Stormpike Soldier''s Blood'),
('1', '17423', '-100', '0', '1', '1', '3', 'Storm Crystal');
INSERT INTO reference_loot_template_names(entry, name) VALUES
(1,'Alterac Valley - Player Skinning loot');
UPDATE battleground_template SET PlayerSkinReflootId=1 WHERE Id IN(1);

