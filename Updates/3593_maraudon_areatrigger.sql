-- Correct required_level for Maraudon
-- All others except BWL (50 instead of 60) are in line with what we have
-- In regards to botting and cheating it is advised to change these values
-- https://wowwiki-archive.fandom.com/wiki/Maraudon?oldid=1632001
-- https://wowwiki-archive.fandom.com/wiki/Instances_by_level?oldid=1626603
-- https://wow.tools/dbc/?dbc=mapdifficulty&build=2.5.2.40617#page=1 can not be used as it holds revamp corrupted data.
UPDATE areatrigger_teleport SET required_level=35, status_failed_text='You must be at least level 35 to enter.' WHERE id IN (3133,3134); -- map 349 - Maraudon, (old value: 30)
