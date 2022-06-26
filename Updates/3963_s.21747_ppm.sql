-- Fix ppm for Lawbringer Armor 8p
-- https://classic.wowhead.com/item-set=208/lawbringer-armor
-- https://www.reddit.com/r/classicwow/comments/ez05dm/will_i_need_lawbringer_set_for_bwl/fgmrh9z/?utm_source=reddit&utm_medium=web2x&context=3
-- https://us.forums.blizzard.com/en/wow/t/lawbringer-8-set-bonus-proc-rate/343326
-- https://classic.wowhead.com/item-set=208/lawbringer-armor#comments:id=3180437
-- https://github.com/vmangos/core/issues/1455
REPLACE INTO `spell_proc_event` (`entry`, `ppmRate`) VALUES (21747, 1); -- none befor, procced on every hit xD

