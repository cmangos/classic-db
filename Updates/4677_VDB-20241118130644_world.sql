-- Add your query below.
-- https://github.com/vmangos/core/commit/07834065128b4d0c516e0354593b54f0fefa477e

-- Add vendor list for TEST Resist Gear.
UPDATE `creature_template` SET `NpcFlags`=4 WHERE  `entry`=12516; -- 128 tbc+
DELETE FROM `npc_vendor` WHERE `entry` = 12516;
-- INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 1, 5828); -- Ring of Uber Resists (TEST)
-- INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 2, 10555); -- Resist Test Item
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 3, 16068); -- Test Fire Resist Cloth LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 4, 16069); -- Test Fire Resist Leather LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 5, 16070); -- Test Fire Resist Mail LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 6, 16071); -- Test Fire Resist Plate LockBox

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 7, 16173); -- Test Frost Resist Cloth LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 8, 16174); -- Test Frost Resist Leather LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 9, 16175); -- Test Frost Resist Mail LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 10, 16176); -- Test Frost Resist Plate LockBox

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 11, 16180); -- Test Nature Resist Cloth LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 12, 16178); -- Test Nature Resist Leather LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 13, 16179); -- Test Nature Resist Mail LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 14, 16177); -- Test Nature Resist Plate LockBox

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 15, 16181); -- Test Shadow Resist Cloth LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 16, 16182); -- Test Shadow Resist Leather LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 17, 16183); -- Test Shadow Resist Mail LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 18, 16184); -- Test Shadow Resist Plate LockBox

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 19, 16186); -- Test Arcane Resist Cloth LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 20, 16187); -- Test Arcane Resist Leather LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 21, 16188); -- Test Arcane Resist Mail LockBox
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (12516, 22, 16185); -- Test Arcane Resist Plate LockBox
-- End of migration.

