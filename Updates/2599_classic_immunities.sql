UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|(8) WHERE entry IN(2919); -- nature
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16384) WHERE entry IN(2919,11561); -- bleed
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16) WHERE entry IN(7396,7397); -- fear
