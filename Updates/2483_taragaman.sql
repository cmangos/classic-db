-- Taragaman the Hungerer 11520 should be susceptible to mind control
-- https://www.wowhead.com/npc=11520/taragaman-the-hungerer#comments
-- https://wowwiki.fandom.com/wiki/Taragaman_the_Hungerer?oldid=1607490
UPDATE creature_template SET MechanicImmuneMask = MechanicImmuneMask&~1 WHERE entry = 11520;
