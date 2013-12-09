-- Fixed level and health of creature 14984 (Sergeant Maclear) in Arathi Highlands because
-- she wrongly was level 1 with 64 hit points
-- Source: UDB for HP
UPDATE `creature_template` SET `minlevel` = 62, `maxlevel` = 62, `minhealth` = 3237, `maxhealth` = 3237 WHERE `entry` = 14984;
UPDATE `creature` SET `curhealth` = 3237 WHERE `id` = 14984;
