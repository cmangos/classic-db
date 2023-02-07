-- https://github.com/cmangos/issues/issues/2237
-- Part of https://github.com/cmangos/issues/issues/2986
UPDATE `creature_template` SET `InhabitType` = `InhabitType`|2 WHERE `entry` IN (
5056, -- Deviate Dreadfang
5459, -- Centipaar Tunneler
5756, -- Deviate Venomwing
16349, -- Ghostclaw Ravager
16352 -- Greater Spindleweb
); -- shallow water identification

