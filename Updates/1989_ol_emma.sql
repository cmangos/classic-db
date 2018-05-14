-- Fixed texts for NPC 3520 (Ol' Emma)
-- This closes #177
-- Sources: 
-- https://wow.gamepedia.com/index.php?title=Ol%27_Emma&oldid=2615034
-- http://www.wowhead.com/npc=3520/ol-emma#comments
UPDATE dbscript_string SET content_default='O\'course I\'m talkin to myself. Only way to get a decent conversation in this city.' WHERE entry=2000005105;
UPDATE dbscript_string SET content_default='Seems like a hundred times a day I walk all the way to the well to get more water. No respect for their elders I tell ya.' WHERE entry=2000005107;
UPDATE dbscript_string SET content_default='Deja vu. For a moment I thought I was back home... before the plague...' WHERE entry=2000005108;
