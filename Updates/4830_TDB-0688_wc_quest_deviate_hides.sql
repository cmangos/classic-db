-- Quest 'Deviate Hides'
-- https://www.wowhead.com/tbc/quest=1486/deviate-hides
-- should be available for both Factions, was Horde Only before
-- Before: RequiredRaces = 690 Horde Quest (Until Cata)
-- taken from vmangos RequiredRaces should be 255
UPDATE quest_template SET RequiredRaces = '255' WHERE entry = '1486';