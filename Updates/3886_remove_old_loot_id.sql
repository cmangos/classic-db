-- Remove loot ID for creatures that don't have loot
-- https://classic.wowhead.com/npc=4983/ogron
-- https://classic.wowhead.com/npc=7957/jerkai-moonweaver
-- https://classic.wowhead.com/npc=10321/emberstrife
UPDATE creature_template SET LootId=0 WHERE Entry IN (4983, 7957, 10321);
