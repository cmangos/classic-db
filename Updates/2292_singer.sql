-- Fix faction of NPC 2600 (Singer) in Arathi Highlands
-- Thanks @AnonXS for pointing from sniff data. Strangely, she is not affiliated with the Syndicate
-- See: https://www.wowhead.com/npc=2600/singer#comments:id=137294
UPDATE creature_template SET Faction=16 WHERE Entry=2600;
