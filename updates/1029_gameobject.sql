-- Removed wrong GO in Dustwallow Marsh: they were added in TBC
-- There are several 'floating' Blackhoof Cages & a floating Campfire within the Bluefen area.
-- This closes #773 
-- Source for deletion for classic:
-- http://www.wowhead.com/item=33061/grimtotem-key#comments (Added 2.3)
-- http://wowwiki.wikia.com/Blackhoof_Village

/* Blackhoof Cages */
DELETE FROM gameobject WHERE guid IN (11183,11184,11185,11707,11708,11710,11719);

/* Burning Embers */
DELETE FROM gameobject WHERE guid='7633';
