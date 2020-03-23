-- Set Default MovementType to Idle for Stationary Summoned Units
-- Like Mines, Totems that still miss it and can cause issues when they are summoned
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` IN (
8035, -- Dark Iron Land Mine
16385); -- Lightning Totem
