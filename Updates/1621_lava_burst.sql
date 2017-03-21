-- Fixed GO 178088 (Ragnaros) used in Ragnaros encounter
-- This trap GO needs a diameter of 70 to work and to send custom anim on use
UPDATE gameobject_template SET Extraflags=1, data2 = 70 WHERE entry=178088;