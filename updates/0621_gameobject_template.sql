
SET @ID := 180691; -- Scarab Coffer
SET @FLAG := 2; -- locked chest

-- -------------------------

UPDATE `gameobject_template` SET `flags`=@FLAG WHERE `entry`=@ID;
