-- https://github.com/cmangos/classic-db/commit/54ed72bc89d8003e9a291c4b78f7295bd760b387
-- Spell (ID:27094) listed in `spell_group_spell` group id 1 does not exist.
-- Spell (ID:27089) listed in `spell_group_spell` group id 2 does not exist.
-- Spell (ID:28170) listed in `spell_group_spell` group id 3 does not exist.
-- Spell (ID:27143) listed in `spell_group_spell` group id 7 does not exist.
-- Spell (ID:30910) listed in `spell_group_spell` group id 12 does not exist.
DELETE FROM `spell_group_spell` WHERE `SpellId` IN (27094,27089,28170,27143,30910); -- tbc+
-- Spell 905 listed in `spell_proc_event` is not first rank (324) in chain
-- Spell 945 listed in `spell_proc_event` is not first rank (324) in chain
-- Spell 325 listed in `spell_proc_event` is not first rank (324) in chain
-- Spell 8134 listed in `spell_proc_event` is not first rank (324) in chain
-- Spell 10432 listed in `spell_proc_event` is not first rank (324) in chain
-- Spell 10431 listed in `spell_proc_event` is not first rank (324) in chain

-- Spell 12574 listed in `spell_proc_event` is not first rank (11213) in chain
-- Spell 12577 listed in `spell_proc_event` is not first rank (11213) in chain
-- Spell 12575 listed in `spell_proc_event` is not first rank (11213) in chain
-- Spell 12576 listed in `spell_proc_event` is not first rank (11213) in chain

-- Spell 12812 listed in `spell_proc_event` is not first rank (12281) in chain
-- Spell 12815 listed in `spell_proc_event` is not first rank (12281) in chain
-- Spell 12813 listed in `spell_proc_event` is not first rank (12281) in chain
-- Spell 12814 listed in `spell_proc_event` is not first rank (12281) in chain

-- Spell 13961 listed in `spell_proc_event` is not first rank (13960) in chain
-- Spell 13964 listed in `spell_proc_event` is not first rank (13960) in chain
-- Spell 13962 listed in `spell_proc_event` is not first rank (13960) in chain
-- Spell 13963 listed in `spell_proc_event` is not first rank (13960) in chain

-- Spell 14071 listed in `spell_proc_event` is not first rank (13983) in chain
-- Spell 14070 listed in `spell_proc_event` is not first rank (13983) in chain

-- Spell 16280 listed in `spell_proc_event` is not first rank (16257) in chain
-- Spell 16277 listed in `spell_proc_event` is not first rank (16257) in chain
-- Spell 16278 listed in `spell_proc_event` is not first rank (16257) in chain
-- Spell 16279 listed in `spell_proc_event` is not first rank (16257) in chain

-- Spell 19308 listed in `spell_proc_event` is not first rank (18137) in chain
-- Spell 19312 listed in `spell_proc_event` is not first rank (18137) in chain
-- Spell 19309 listed in `spell_proc_event` is not first rank (18137) in chain
-- Spell 19311 listed in `spell_proc_event` is not first rank (18137) in chain
-- Spell 19310 listed in `spell_proc_event` is not first rank (18137) in chain

-- Spell 20920 listed in `spell_proc_event` is not first rank (20375) in chain
-- Spell 20918 listed in `spell_proc_event` is not first rank (20375) in chain
-- Spell 20915 listed in `spell_proc_event` is not first rank (20375) in chain
-- Spell 20919 listed in `spell_proc_event` is not first rank (20375) in chain

-- Spell 29446 listed in `spell_proc_event` is not first rank (29441) in chain
-- Spell 29444 listed in `spell_proc_event` is not first rank (29441) in chain
-- Spell 29445 listed in `spell_proc_event` is not first rank (29441) in chain
-- Spell 29447 listed in `spell_proc_event` is not first rank (29441) in chain 

-- Spell 29075 listed in `spell_proc_event` is not first rank (29074) in chain
-- Spell 29076 listed in `spell_proc_event` is not first rank (29074) in chain
DELETE FROM `spell_proc_event` WHERE `entry` IN (905,945,325,8134,10432,10431,12574,12577,12575,12812,12576,12815,12813,12814,13961,13964,13962,13963,14071,16280,16277,16278,14070,16279,19308,19312,19309,19311,19310,20920,20918,20915,20919,29446,29075,29076,29444,29445,29447);

