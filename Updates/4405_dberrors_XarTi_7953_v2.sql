-- Xar'Ti 7953
-- .mod rep 530 43000
-- gossip corrected (V2) - thx @lixiaozheng for noticing
-- https://github.com/cmangos/classic-db/commit/23d5e8695cf780864066cdd9eaf5871814d58db8

-- I can teach you the finer points of Raptor Riding, provided you have enough gold to cover the lesson! - 4875
UPDATE gossip_menu SET condition_id=9035 WHERE entry = 4022 AND text_id=4875; -- 810 (I can Teach you for money text, being troll or being exalted)

-- You need to be exalted with the trolls of the Darkspear tribe before I will teach you a riding skill, $c. - 5865
UPDATE gossip_menu SET condition_id=9038 WHERE entry = 4022 AND text_id=5865; -- 0 (Not Exalted or Not Troll denial text)

-- I seek training to ride a steed. (https://www.wowhead.com/tbc/npc=7953/xarti#comments:id=129990)
UPDATE gossip_menu_option SET condition_id=9035 WHERE `id` = 0 AND menu_id=4022; -- 810 -> (Has Minimum Rank Exalted With Faction ID: 530) OR (Player RaceMask: 128)

-- CLASSIC + WOTLK
-- 842	14	128	0	0	0	0	
-- 810	5	530	7	0	0	0	

-- TBC
-- 300	14	128	0	0	0	0	Player RaceMask: 128
-- 268	5	530	7	0	0	0	Has Minimum Rank Exalted With Faction ID: 530

-- NEW
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 9035 AND 9038;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(9035, -2, 810, 842, 0, 0, 0, '(Has Minimum Rank Exalted With Faction ID: 530) OR (Player RaceMask: 128)'), -- 268,300 in tbc
(9036, 14, 128, 0, 0, 0, 1, 'NOT (Player RaceMask: 128)'),
(9037, 5, 530, 7, 0, 0, 1, 'NOT (Has Minimum Rank Exalted With Faction ID: 530)'),
(9038, -1, 9036, 9037, 0, 0, 0, 'NOT (NOT (Player RaceMask: 128)) AND (NOT (Has Minimum Rank Exalted With Faction ID: 530))');

-- DBERRORS

-- Creature (Entry: 12999) has nonexistent modelid in modelid_1/modelid_2
UPDATE `creature_template` SET `modelid2` = 11686 WHERE `entry` = 12999; -- restore sniff value used in tbc and wrath. (probability issue)

-- Table creature_spawn_data_template for entry 9989 has empty name
-- https://github.com/cmangos/classic-db/commit/55c3678aa405985d0088a5b57be28795eca966b2
-- Add missing name for creature_spawn_data_template 9989
-- Based on https://github.com/cmangos/wotlk-db/commit/921fed38847283aa6fa74caa2657d5df636d293a#diff-45c17ac7e0c4904a54f1e4531852807297287b41d17e462b35df8dec1a3f6d0dR65
UPDATE `creature_spawn_data_template` SET `Name` = '- SPAWN FLAG RUN, Relayid 30510' WHERE `Entry` = 9989;

-- 2023-06-25 14:31:18 Creature (GUID: 21761) does not exist but has a record in `creature_addon`
-- 2023-06-25 14:31:18 Creature (GUID: 21768) does not exist but has a record in `creature_addon`
-- https://github.com/cmangos/classic-db/commit/2679ac48a7ba7737d9b529678c2a81c8c589ac25
DELETE FROM `creature_addon` WHERE `guid` IN (21761,21768);
REPLACE INTO creature_addon (guid, sheath_state, stand_state) VALUES
(140032, 1, 3), -- no effect because model lack animation for it, but sniff confirmed. 
(140033, 1, 3);

