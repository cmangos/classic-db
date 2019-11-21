-- pre wotlk changed wotlk sniff data
UPDATE creature_model_info SET gender=1,bounding_radius=1.8,combat_reach=23.4 WHERE modelid IN(8570);
UPDATE creature_template SET Faction=103,UnitFlags=64 WHERE entry IN(10184); -- pre wotlk changed onyxia
