-- moam should not regen mana and mana fiends are immune to arcane
UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|64 WHERE entry IN(15527);
-- ayamiss correct spawn and aggro range
UPDATE creature SET position_x=-9719.611,position_y=1514.752,position_z=27.55229,orientation=0.7679449 WHERE id IN(15369);
UPDATE creature_template SET Detection=50 WHERE entry IN(15369);
