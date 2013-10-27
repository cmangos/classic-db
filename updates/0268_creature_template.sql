-- Increased stats for creature 2058 (Deathstalker Faerleia) as she should be able to almost solo the quest The Pyrewood Ambush
-- Values based on TBC-DB/UDB and wowwiki.com
UPDATE `creature_template` SET
`minlevel` = 18,
`maxlevel` = 18,
`minhealth` = 1251,
`maxhealth` = 1251,
`armor` = 768,
`mindmg` = 26,
`maxdmg` = 35,
`attackpower` = 64
 WHERE `entry` = 2058;
UPDATE `creature` SET `curhealth` = 1251 WHERE `id` = 2058;
