-- elementals
UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|(8) WHERE entry IN(4120,4499,4034); -- nature
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16384) WHERE entry IN(4120,3917,4499,4034,4038,4036,6047,12876,4978,10757,10756); -- bleed
-- BFD boss
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16 + 8192 + 536870912) WHERE entry IN(4832); -- fear / sap
