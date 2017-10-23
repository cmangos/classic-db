-- Allow Apple Bob to be opened like a chest.
-- Value is estimated as LockId was changed in TBC times with the rework of Hallow End event.
UPDATE gameobject_template SET data0=57 WHERE entry=180523;
