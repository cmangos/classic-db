-- Remove now deprecated DBScript string
DELETE FROM dbscript_string WHERE entry=2000000030;
-- Drop script using removed DBScript string
DELETE FROM dbscripts_on_gossip WHERE dataingt=2000000002;
