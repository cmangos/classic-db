-- Shy-Rotam Quest and NPCs should be tameable
-- This quest was Horde only in Classic. In 2.3 it was changed to be both sides.
-- Also, both Shy-Rotam and Sian-Rotam should be tameable NPCs. SQL for fixes for these below.
-- This closes #771 
-- Source: http://www.wowhead.com/npc=10737/shy-rotam#comments

/* Set quest Shy-Rotam to be Horde only */
UPDATE quest_template SET RequiredRaces='178' WHERE entry IN ('5054', '5055', '5056');

/* Shy-Rotam ID 10737 to tameable */
UPDATE creature_template SET CreatureTypeFlags='1' WHERE Entry='10737';

/* Sian-Rotam ID: 10741 to tameable */
UPDATE creature_template SET CreatureTypeFlags='1' WHERE Entry='10741';
