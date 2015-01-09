
SET @PHALANX := '9502';

-- -----------------------

UPDATE `creature_template` SET `FactionAlliance`='35', `FactionHorde`='35', `MeleeBaseAttackTime`='2000', `MovementType`='0' WHERE `Entry`=@PHALANX;
