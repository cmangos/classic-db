-- Add your query below.
-- https://github.com/vmangos/core/commit/51841ef44498b043eee6a80fb827b736be825fcb

-- https://www.wowhead.com/wotlk/npc=13322/hydraxian-honor-guard

-- 3984: Target Is Friendly Or Better With Faction 749
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (3984, 5, 749, 4);
-- 3984: Target Is Honored Or Better With Faction 749
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (4203, 5, 749, 5);

-- Add missing Hydraxian Honor Guard gossips at Friendly and Honored.
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (5109, 6162, 0, 3984);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (5109, 6163, 0, 4203);

-- End of migration.

