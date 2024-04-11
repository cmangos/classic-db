-- Add your query below.
-- https://github.com/vmangos/core/commit/e1ac6740bb9716769a2fb5fc34a36d0bde37627c

-- Correct damage school of creatures.
UPDATE `creature_template` SET `DamageSchool`=2 WHERE `entry`=9436; -- Spawn of Bael'Gar should do Fire damage, not Physical
UPDATE `creature_template` SET `DamageSchool`=0 WHERE `entry`=8908; -- Molten War Golem should do Physical damage, not Fire
UPDATE `creature_template` SET `DamageSchool`=4 WHERE `entry`=10387; -- Vengeful Phantom should do Frost damage, not Physical
UPDATE `creature_template` SET `DamageSchool`=5 WHERE `entry`=10436; -- Baroness Anastari should do Shadow damage, not Physical
UPDATE `creature_template` SET `DamageSchool`=6 WHERE `entry`=14400; -- Arcane Feedback should do Arcane damage, not Nature
UPDATE `creature_template` SET `DamageSchool`=6 WHERE `entry`=14399; -- Arcane Torrent should do Arcane damage, not Nature
UPDATE `creature_template` SET `DamageSchool`=5 WHERE `entry`=8539; -- Eyeless Watcher should do Shadow damage, not Physical
UPDATE `creature_template` SET `DamageSchool`=5 WHERE `entry`=5676; -- Summoned Voidwalker should do Shadow damage, not Physical
UPDATE `creature_template` SET `DamageSchool`=3 WHERE `entry`=15212; -- Hoary Templar should do Nature damage, not Physical
UPDATE `creature_template` SET `DamageSchool`=2 WHERE `entry`=4785; -- Illusionary Nightmare should do Fire damage, not Physical
UPDATE `creature_template` SET `DamageSchool`=5 WHERE `entry`=703; -- Lieutenant Fangore should do Shadow damage, not Physical
UPDATE `creature_template` SET `DamageSchool`=2 WHERE `entry`=14467; -- Kroshius should do Fire damage, not Physical
UPDATE `creature_template` SET `DamageSchool`=2 WHERE `entry`=3736; -- Darkslayer Mordenthal should do Fire damage, not Physical

-- End of migration.

