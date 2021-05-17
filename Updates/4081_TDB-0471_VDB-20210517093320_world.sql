-- https://github.com/vmangos/core/commit/a001a71c1ed7b5ed84493be056b85fe57dcdda07
-- Add your query below.

-- Reduce Kindal Moonweaver's respawn time.
UPDATE `creature` SET `spawntimesecsmin`=30, `spawntimesecsmax`=30 WHERE `id`=7956;

-- End of migration.

