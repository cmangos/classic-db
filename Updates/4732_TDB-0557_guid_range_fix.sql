-- note - this coincides with instance file for map 70 and 90 being changed to 900000 instead of 9000000 (extra zero removal) so that core has more dynguids available
UPDATE creature SET guid=(guid - 900000 + 720000)  WHERE guid BETWEEN 900000 AND 905000 AND map=1;
UPDATE gameobject SET guid=(guid - 900000 + 720000)  WHERE guid BETWEEN 900000 AND 905000 AND map=1;

