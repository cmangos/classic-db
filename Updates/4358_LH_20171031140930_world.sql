-- Add your query below.
-- https://github.com/lh-server/core/commit/4cc94dc20de67d5237ab5330208003df01233f9b
-- https://www.wowhead.com/tbc/search?q=Thick%20Cloth
DELETE FROM `gameobject_loot_template` WHERE `item` IN (200,201,202,203,3597,3598,3883);
-- End of migration.

