-- Correct Stats for Captured Arko'narin 11016 & Arko'narin 11018 (should also have unitflags 256 default add sometime)
UPDATE `creature_template` SET `SpeedWalk` = 1, `UnitFlags`='512', `CreatureTypeFlags`='4096' WHERE `entry` = 11016;
UPDATE `creature_template` SET `Faction` = 250, `MeleeBaseAttackTime` = 2000, `SpeedWalk` = 1, `CreatureTypeFlags`='4096', `HealthMultiplier`='2.6' WHERE `entry` = 11018; -- (5361 hp)

