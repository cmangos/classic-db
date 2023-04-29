UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 15426; -- Ahn'Qiraj Trigger
UPDATE `creature_template` SET `Detection` = 35 WHERE `entry` IN (15511,15543,15544);

-- using c.15667 spawn
UPDATE `spell_target_position` SET `target_position_x` = -8039.99, `target_position_y` = 918.23, `target_position_z` = -43.3467, `target_orientation` = 0 WHERE `id` = 25865;
UPDATE `spell_target_position` SET `target_position_x` = -8039.25, `target_position_y` = 901.31, `target_position_z` = -44.3567, `target_orientation` = 0 WHERE `id` = 25866;
UPDATE `spell_target_position` SET `target_position_x` = -8035.67, `target_position_y` = 935.75, `target_position_z` = -43.1667, `target_orientation` = 0 WHERE `id` = 25867;
UPDATE `spell_target_position` SET `target_position_x` = -8033.95, `target_position_y` = 886.75, `target_position_z` = -44.2267, `target_orientation` = 0 WHERE `id` = 25868;
UPDATE `spell_target_position` SET `target_position_x` = -8028.91, `target_position_y` = 951.47, `target_position_z` = -42.2867, `target_orientation` = 0 WHERE `id` = 25869;
UPDATE `spell_target_position` SET `target_position_x` = -8021.9, `target_position_y` = 873.87, `target_position_z` = -44.7267, `target_orientation` = 0 WHERE `id` = 25870;
UPDATE `spell_target_position` SET `target_position_x` = -8020.54, `target_position_y` = 965.46, `target_position_z` = -41.7667, `target_orientation` = 0 WHERE `id` = 25871;
UPDATE `spell_target_position` SET `target_position_x` = -8011.23, `target_position_y` = 975.76, `target_position_z` = -41.9167, `target_orientation` = 0 WHERE `id` = 25872;
UPDATE `spell_target_position` SET `target_position_x` = -8005.9, `target_position_y` = 861.04, `target_position_z` = -46.5967, `target_orientation` = 0 WHERE `id` = 25873;
UPDATE `spell_target_position` SET `target_position_x` = -7997.31, `target_position_y` = 979.57, `target_position_z` = -41.4667, `target_orientation` = 0 WHERE `id` = 25874;
UPDATE `spell_target_position` SET `target_position_x` = -7987.19, `target_position_y` = 857.5, `target_position_z` = -48.3367, `target_orientation` = 0 WHERE `id` = 25875;
UPDATE `spell_target_position` SET `target_position_x` = -7982.12, `target_position_y` = 976.92, `target_position_z` = -41.5367, `target_orientation` = 0 WHERE `id` = 25876;
UPDATE `spell_target_position` SET `target_position_x` = -7968.85, `target_position_y` = 972.09, `target_position_z` = -41.5467, `target_orientation` = 0 WHERE `id` = 25877;
UPDATE `spell_target_position` SET `target_position_x` = -7967.9, `target_position_y` = 863.93, `target_position_z` = -47.8667, `target_orientation` = 0 WHERE `id` = 25878;
UPDATE `spell_target_position` SET `target_position_x` = -7956.48, `target_position_y` = 961.05, `target_position_z` = -41.4767, `target_orientation` = 0 WHERE `id` = 25879;
UPDATE `spell_target_position` SET `target_position_x` = -7954.64, `target_position_y` = 876.43, `target_position_z` = -47.6067, `target_orientation` = 0 WHERE `id` = 25880;
UPDATE `spell_target_position` SET `target_position_x` = -7949.18, `target_position_y` = 944.06, `target_position_z` = -43.3867, `target_orientation` = 0 WHERE `id` = 25881;
UPDATE `spell_target_position` SET `target_position_x` = -7947.49, `target_position_y` = 925.37, `target_position_z` = -46.7267, `target_orientation` = 0 WHERE `id` = 25882;
UPDATE `spell_target_position` SET `target_position_x` = -7946, `target_position_y` = 890.23, `target_position_z` = -47.3167, `target_orientation` = 0 WHERE `id` = 25883;
UPDATE `spell_target_position` SET `target_position_x` = -7943.05, `target_position_y` = 906.16, `target_position_z` = -47.9967, `target_orientation` = 0 WHERE `id` = 25884;

-- 6033	42	71101	0	0	0	1	WorldStateID: 71101 WorldStateConditionSign: 0 otherOperand: 1
-- the otheroperand: 1 value3 = 1 made them despawn when boss is alive, which is exactly opposite of what we want
DELETE FROM `conditions` WHERE `condition_entry` = 6033; -- use instance format.
DELETE FROM worldstate_name WHERE Id=71101;

-- 181068	Small Obsidian Chunk	17883 - https://web.archive.org/web/20071219003335/http://wow.allakhazam.com/db/object.html?wobject=492
-- 181069	Large Obsidian Chunk	17884 - https://web.archive.org/web/20080111203040/http://wow.allakhazam.com/db/object.html?wobject=493
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (17883,17884);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17883, 22202, 90, 1, 1, 1, 0, 'Small Obsidian Shard'), -- Small Obsidian Shard	90.52%	(25017 in 27636)
(17883, 22203, 5, 1, 1, 1, 0, 'Large Obsidian Shard'), -- Large Obsidian Shard	3.97%	(1098 in 27636)
(17883, 7076, 5, 1, 1, 1, 0, 'Essence of Earth'), -- Essence of Earth	4.08%	(1127 in 27636)
(17883, 12363, 0.5, 2, 1, 1, 0, 'Arcane Crystal'), -- Arcane Crystal	0.42%	(117 in 27636)
(17883, 12364, 1, 2, 1, 1, 0, 'Huge Emerald'), -- Huge Emerald	0.78%	(216 in 27636)
(17883, 12800, 1, 2, 1, 1, 0, 'Azerothian Diamond'), -- Azerothian Diamond	0.72%	(199 in 27636)

(17884, 22202, 50, 1, 2, 3, 0, 'Small Obsidian Shard'), -- Small Obsidian Shard	49.78%	(1922 in 3861)
(17884, 22203, 40, 1, 1, 1, 0, 'Large Obsidian Shard'), -- Large Obsidian Shard	40.69%	(1571 in 3861)
(17884, 7076, 10, 1, 1, 1, 0, 'Essence of Earth'), -- Essence of Earth	6.97%	(269 in 3861)
(17884, 12364, 1, 2, 1, 1, 0, 'Huge Emerald'), -- Huge Emerald	0.73%	(28 in 3861)
(17884, 12363, 1, 2, 1, 1, 0, 'Arcane Crystal'), -- Arcane Crystal	0.96%	(37 in 3861)
(17884, 12800, 1, 2, 1, 1, 0, 'Azerothian Diamond'); -- Azerothian Diamond	0.83%	(32 in 3861)

