-- Fix GameObject 176213 (Blood of Heroes) that could not be interacted with
UPDATE gameobject SET state=1, animprogress=100 WHERE id=176213;
