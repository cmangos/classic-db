ALTER TABLE db_version CHANGE COLUMN required_z2795_01_mangos_waypoint_path_name required_z2797_01_mangos_eai_dbguid_support bit;
ALTER TABLE db_version CHANGE COLUMN required_z2797_01_mangos_eai_dbguid_support required_z2798_01_mangos_battleground_reflooot bit;

ALTER TABLE battleground_template ADD COLUMN PlayerSkinReflootId MEDIUMINT UNSIGNED NOT NULL DEFAULT 0 COMMENT 'reference_loot_template entry';

INSERT INTO reference_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('1', '17422', '75', '0', '1', '20', '0', 'Armor Scraps'),
('1', '17306', '-100', '0', '1', '1', '3', 'Stormpike Soldier''s Blood'),
('1', '17423', '-100', '0', '1', '1', '4', 'Storm Crystal');
INSERT INTO reference_loot_template_names(entry, name) VALUES
(1,'Alterac Valley - Player Skinning loot - complemented by hardcoded pvp rank loot');
UPDATE battleground_template SET PlayerSkinReflootId=1 WHERE Id IN(1);

