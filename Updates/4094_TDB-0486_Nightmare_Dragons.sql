-- Correct More Stats for Nightmare Dragons (14887,14888,14889,14890)
-- In parts already corrected in classicmangos
-- https://youtu.be/YUmiG7-ExtY?t=138
UPDATE `creature_template` SET `Faction` = 50, `UnitFlags` = 64, `PowerMultiplier` = 25, `DamageMultiplier` = 20, `SpeedWalk` = 2, `SpeedRun` = 1.71429, `MeleeBaseAttackTime` = 2000, `MechanicImmuneMask` = 650854267, `Detection` = 50 WHERE `entry` IN (
14887, -- Ysondre (13D)
14888, -- Lethon (37D) 2196-2912! Bestiary
14889, -- Emeriss (10D)
14890 -- Taerar (13D)
);
UPDATE `creature_template_addon` SET `auras` = '19818 25041' WHERE `entry` IN (14887,14888,14889,14890); -- Mark of Nature is also present OOC

-- Trigger mobs are visibile when they should NOT
UPDATE `creature_template` SET `UnitFlags` = 33554432, `ExtraFlags` = 524352 WHERE `entry` = 15224; -- Dream Fog

