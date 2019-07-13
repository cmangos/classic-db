-- Add basic Leash for Drek'Thar 11946 & Vanndar Stormpike 11948
UPDATE `creature_template` SET `Leash` = 32 WHERE `entry` IN (
11946, -- Drek'Thar
11948 -- Vanndar Stormpike
);
