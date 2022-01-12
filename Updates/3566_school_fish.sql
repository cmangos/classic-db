-- Correct Respawntimer for https://classic.wowhead.com/object=180184/school-of-fish
-- I have Fishing 150 and catch every time; it gives 14-25 Peacebloom before expiring, then respawns in 5-10 minutes.
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=600 WHERE id=180184;
