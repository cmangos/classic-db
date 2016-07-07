-- These are but a fraction of the guardian pets, but most are with engi and need to be scripted. This will do for now.

-- Fixed Level of Tracking Hound (6867)
UPDATE `creature_template` SET `MinLevel`=30, `MaxLevel`=30 WHERE `Entry`=6867;

-- set new Extraflag for guardians (and imp) that are not supposed to melee.
-- Warlock Pet: Imp
UPDATE `creature_template` SET `ExtraFlags`=0x00020000 WHERE `Entry`=416;
-- Player Guardian Explosive Sheep
UPDATE `creature_template` SET `ExtraFlags`=0x00020000 WHERE `Entry`=2675;
-- Player Guardian: Crimson Cannon
UPDATE `creature_template` SET `ExtraFlags`=0x00020000 WHERE `Entry`=11199;

-- Remove damage and make passive
-- Player Guardian: Alarm-O-Bot - Needs to have its level maximized as well or it's pretty much useless.
UPDATE `creature_template` SET `ExtraFlags`=0x00020000, `UnitFlags`=0x00000200, `MinLevel`=60, `MaxLevel`=60 WHERE `Entry`=14434;

-- Removing damage and movement from guardians which are not supposed to fight back or move.
-- Target Dummy
UPDATE `creature_template` SET `ExtraFlags`=0x00020000, `UnitFlags`=0x00040204 WHERE `Entry`=2673;
-- Advanced target Dummy
UPDATE `creature_template` SET `ExtraFlags`=0x00020000, `UnitFlags`=0x00040204 WHERE `Entry`=2674;
-- Masterwork Target Dummy
UPDATE `creature_template` SET `ExtraFlags`=0x00020000, `UnitFlags`=0x00040204 WHERE `Entry`=12426;

-- Damage needs to be brought in line with at least a trash mob of the same level, especially since it's not supposed to move.
UPDATE `creature_template` SET `UnitFlags`=0x00000004 WHERE `Entry`=15901;
-- `MinMeleeDamage`=104, `MaxMeleeDamage`=138,

-- Cleansed Timberling is the wrong level - https://web.archive.org/web/20060320043711/http://wow.allakhazam.com/item.html?witem=5218
UPDATE `creature_template` SET `MinLevel`=7, `MaxLevel`=7 WHERE `Entry`=3570;
-- `MinMeleeDamage`=9, `MaxMeleeDamage`=13, `MinLevelHealth`=152, `MaxLevelHealth`=152,

-- Fixing a very little known bug, but these are not supposed to give full exp... we need to start using the experience multiplier, using a 0 value here would also save us the no exp at kill extra flag.
UPDATE `creature_template` SET `ExperienceMultiplier`=0.25 WHERE `Entry`=7769;
