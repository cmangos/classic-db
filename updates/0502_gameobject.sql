-- Fixed rotation of doors and chests in Temple of Ahn'Qiraj
UPDATE `gameobject` SET `rotation2` = 0, `rotation3` = 0 WHERE `map`= 531;
