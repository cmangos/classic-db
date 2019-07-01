-- Adjust ppmRate for Badge of the Swarmguard 26480 - i.21670
-- https://wowwiki.fandom.com/wiki/Badge_of_the_Swarmguard?oldid=1546608
-- https://vanilla-twinhead.twinstar.cz/?issue=9819
-- https://web.archive.org/web/20070510001706/http://thottbot.com/i21670
-- https://github.com/lh-server/core/blob/development/sql/old_migrations/20170601002619_world.sql
UPDATE spell_proc_event SET ppmRate=15 WHERE entry=26480; -- ~ 4secs 
