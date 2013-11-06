-- Fixed unit_flag of creature 9816 (Pyroguard Emberseer) in Blackrock Spire
-- as it was set to 'passive' and could not be engaged, breaking the whole event and dungeon
-- Thanks scotty0100 for pointing
UPDATE `creature_template` SET `unit_flags` = 33554752 WHERE `entry` = 9816;
