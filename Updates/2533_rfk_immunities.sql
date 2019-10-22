UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|(8) WHERE entry IN(4528,4526); -- nature
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16) WHERE entry IN(4422,4421); -- fear
