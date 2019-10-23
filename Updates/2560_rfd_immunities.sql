-- tuten'kash - fear
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16) WHERE entry IN(7355);
-- amnennar the coldbringer - immune to stun
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(2048) WHERE entry IN(7358);
