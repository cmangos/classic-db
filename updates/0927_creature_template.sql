-- Fixed stats of NPC 12238 (Zaetar's Spirit) in Maraudon
-- Source: TBC-DB, UDB and https://www.youtube.com/watch?v=foGlLZofce4
UPDATE `creature_template` SET `UnitClass` = 2, `MinLevelHealth` = 3297, `MaxLevelHealth` = 3297, `MinLevelMana` = 2434, `MaxLevelMana` = 2434, `HealthMultiplier` = 1.35, `ArmorMultiplier` = 1 WHERE `Entry` = 12238;
