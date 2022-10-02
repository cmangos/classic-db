ALTER TABLE db_version CHANGE COLUMN required_z2795_01_mangos_waypoint_path_name required_z2797_01_mangos_eai_dbguid_support bit;
ALTER TABLE db_version CHANGE COLUMN required_z2797_01_mangos_eai_dbguid_support required_z2798_01_mangos_battleground_reflooot bit;

ALTER TABLE battleground_template ADD COLUMN PlayerSkinReflootId MEDIUMINT UNSIGNED NOT NULL DEFAULT 0 COMMENT 'reference_loot_template entry';

INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(3018,11,0,5,0,0,2,'PvP Rank < 6'),
(3019,11,6,9,0,0,2,'PvP Rank >= 6 < 10'),
(3020,11,10,20,0,0,2,'PvP Rank >= 10'),
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

