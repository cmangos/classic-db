-- Fixed flags of GO 176631 (Menethil's Gift): it shouldn't be targetable
-- This contributes to #196
UPDATE gameobject_template SET flags = 4 WHERE entry = 176631;
 