UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16384) WHERE entry IN(2761,2762,2760,575); -- bleed

UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|(8) WHERE entry IN(9377,11577,11576,4661,11578); -- nature
UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|(32) WHERE entry IN(6488); -- shadow 
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16384) WHERE entry IN(9377,11577,11576,4661,11578,2735,2776,2359); -- bleed

-- bloodmage thalnos - stun bleed
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16384 + 2048) WHERE entry IN(4543);
-- houndmaster loksey - fear blind
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16 + 2) WHERE entry IN(3974);
--  arcanist doan - fear stun
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16 + 2048) WHERE entry IN(6487);

