-- Add missing rotations to lots of sign gameobjects
-- This fixes signs floating in the air or pointing the wrong direction
-- Data from wotlk sniffs

-- Westfall
UPDATE gameobject SET rotation0=0.1006846 , rotation1=-0.02514362, rotation2=0.05229092, rotation3=0.9932251 WHERE id=80; -- Old Coast Road
UPDATE gameobject SET rotation0=-0.009524822, rotation1=-0.05605507, rotation2=-0.998373, rotation3=0.004291601 WHERE id=81; -- Sentinel Hill
UPDATE gameobject SET rotation0=0.08098269, rotation1=-0.02492523, rotation2=-0.6514511, rotation3=0.7539443 WHERE id=82; -- Elwynn Forest
UPDATE gameobject SET rotation0=0.2197061, rotation1=-0.6859207, rotation2=0.1600161, rotation3=0.6750088 WHERE id=83; -- Jangolode Mine
UPDATE gameobject SET rotation0=0.08714771, rotation1=0.001140594, rotation2=0.01303959, rotation3=0.9961094 WHERE id=16396; -- Moonbrook

UPDATE gameobject SET rotation0=-0.05685568, rotation1=0.0006389618, rotation2=-0.06554317, rotation3=0.9962285 WHERE id=84; -- Old Coast Road
UPDATE gameobject SET rotation0=-0.01899099, rotation1=0.09044456, rotation2=0.9936657, rotation3=0.06393455 WHERE id=85; -- Duskwood

UPDATE gameobject SET rotation0=0.03245687, rotation1=-0.007080078, rotation2=-0.8138981, rotation3=0.5800571 WHERE id=86; -- Elwynn Forest
UPDATE gameobject SET rotation0=-0.003460884, rotation1=0.004629135, rotation2=0.577754, rotation3=0.8161905 WHERE id=87; -- Moonbrook
UPDATE gameobject SET rotation0=0, rotation1=0, rotation2=0.5807028, rotation3=0.8141156 WHERE id=88; -- Duskwood

UPDATE gameobject SET rotation0=0.004355907, rotation1=0.05669117, rotation2=0.9983816, rotation3=0.001145121 WHERE id=121; -- Duskwood
UPDATE gameobject SET rotation0=0, rotation1=0, rotation2=-0.7071066, rotation3=0.7071069 WHERE id=122; -- Sentinel Hill
UPDATE gameobject SET rotation0=-0.09091187, rotation1=-0.01661682, rotation2=0.04028893, rotation3=0.9949049 WHERE id=124; -- Moonbrook
UPDATE gameobject SET rotation0=0.0351038, rotation1=-0.02625465, rotation2=-0.6750803, rotation3=0.7364408 WHERE id=123; -- Elwynn Forest

-- Stonetalon
UPDATE gameobject SET rotation0=-0.1395888, rotation1=-0.1157246, rotation2=-0.9825268, rotation3=0.04199928 WHERE id=19569; -- End of Venture Co. Lands
UPDATE gameobject SET rotation0=-0.1457486, rotation1=-0.06852245, rotation2=-0.9863071, rotation3=0.03549959 WHERE id=19570; -- DANGER!
UPDATE gameobject SET rotation0=-0.1429176, rotation1=-0.1371574, rotation2=-0.9791241, rotation3=0.04558963 WHERE id=19571; -- KEEP OUT!

UPDATE gameobject SET rotation0=0.09525299, rotation1=-0.04390335, rotation2=-0.3392754, rotation3=0.9348217 WHERE id=19560; -- Stonetalon Peak
UPDATE gameobject SET rotation0=0.07372761, rotation1=-0.02683449, rotation2=-0.3409653, rotation3=0.9367961 WHERE id=19559; -- Sun Rock Retreat
UPDATE gameobject SET rotation0=0.07372761, rotation1=-0.02683449, rotation2=-0.3409653, rotation3=0.9367961 WHERE id=19558; -- Windshear Crag
UPDATE gameobject SET rotation0=0.019279, rotation1=0.08157444, rotation2=0.9218721, rotation3=0.3783195 WHERE id=19561; -- Greatwood Vale
UPDATE gameobject SET rotation0=0.06340265, rotation1=0.1663179, rotation2=0.9104662, rotation3=0.3733226 WHERE id=19562; -- The Barrens

UPDATE gameobject SET rotation0=0.03469658, rotation1=0.0450449, rotation2=0.7417765, rotation3=0.6682326 WHERE id=19568; -- The Barrens
UPDATE gameobject SET rotation0=0.08186674, rotation1=0.08444691, rotation2=0.7383299, rotation3=0.6641051 WHERE id=19564; -- Greatwood Vale
UPDATE gameobject SET rotation0=0.005130768, rotation1=-0.07829094, rotation2=-0.9947824, rotation3=0.06520794 WHERE id=19563; -- Windshear Crag
UPDATE gameobject SET rotation0=0.1180158, rotation1=-0.007344246, rotation2=0.04917717, rotation3=0.9917661 WHERE id=19565; -- Sun Rock Retreat
UPDATE gameobject SET rotation0=0.08243084, rotation1=0.01520729, rotation2=0.02500057, rotation3=0.9961671 WHERE id=19566; -- Desolace
UPDATE gameobject SET rotation0=0.1777678, rotation1=0.00894928, rotation2=0.02498245, rotation3=0.9837146 WHERE id=19567; -- Stonetalon Peak

-- The Barrens
UPDATE gameobject SET rotation0=0.07795477, rotation1=-0.008881569, rotation2=-0.112854, rotation3=0.990509 WHERE id=19553; -- Greatwood Vale
UPDATE gameobject SET rotation0=0.07795477, rotation1=-0.008881569, rotation2=-0.112854, rotation3=0.990509 WHERE id=19555; -- Windshear Crag
UPDATE gameobject SET rotation0=0.1028695, rotation1=-0.02045441, rotation2=-0.1116714, rotation3=0.9881948 WHERE id=19556; -- The Charred Vale
UPDATE gameobject SET rotation0=0, rotation1=0, rotation2=-0.08715534, rotation3=0.9961947 WHERE id=19554; -- Stonetalon Peak
UPDATE gameobject SET rotation0=-0.143518, rotation1=-0.08476353, rotation2=-0.5742111, rotation3=0.8015606 WHERE id=19557; -- Welcome
UPDATE gameobject SET rotation0=-0.08796453, rotation1=-0.1030149, rotation2=-0.5697346, rotation3=0.8105879 WHERE id=19585; -- Venture Co. Stonetalon Mtns. Project
