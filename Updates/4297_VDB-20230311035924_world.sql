-- https://github.com/vmangos/core/commit/f8a50e33edd59b0986205fccda1d3b01ced32bc7

-- Add enslave immunity to several demons.
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry` IN (7461, 7462, 7463, 7665, 7666, 7667, 7728, 8318, 8717, 8718, 9516, 10201, 10813, 11490, 11492, 12236, 12396, 14101, 14354, 15467);

