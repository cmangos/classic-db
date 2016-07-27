-- Removed wrong items from NPC 14846 (Lhara) they were added after Classic
-- This closes #874
-- Source: http://web.archive.org/web/20061026014935/http://wow.allakhazam.com/db/mob.html?wmob=14846
DELETE FROM npc_vendor WHERE entry=14846 AND item IN (13456, 13468); -- Greater Frost Protection Potion and Black Lotus
