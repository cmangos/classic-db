-- Add your query below.
-- https://github.com/vmangos/core/commit/a1ca9713327d8920c54bc4cf56303165c6ccf4db

-- https://www.wowhead.com/wotlk/npc=167/morhan-coppertongue#sells
-- Enamelled Broadsword - Morhan Coppertongue
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 167 AND `item` = 4765;

-- Feral Blade - Morhan Coppertongue
UPDATE `npc_vendor` SET `maxcount` = 2 WHERE `entry` = 167 AND `item` = 4766;

-- End of migration.