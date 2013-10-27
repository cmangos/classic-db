-- Decreased the HP of creature 2337 (Darkstrand Voidcaller) as they were far to high
-- Source: TBC-DB
UPDATE `creature_template` SET `minhealth` = 702, `maxhealth` = 739 WHERE `entry` = 2337;
UPDATE `creature` SET `curhealth` = 702 WHERE `id` = 2337;