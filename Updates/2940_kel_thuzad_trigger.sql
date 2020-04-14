-- Fix faction of GO 181444 (Kel'Thuzad Trigger). Thanks @Tobschinski.
UPDATE gameobject_template SET flags=0, faction=114 WHERE entry=181444;
