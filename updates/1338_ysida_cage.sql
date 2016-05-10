-- Fixed rotation for GOs 181071 (Ysida's Cage) and 181082 (Ysida's Cagebase) in Stratholme
-- Source: UDB 
UPDATE gameobject SET rotation2=0.979924,rotation3=0.199371 WHERE id = 181071;
UPDATE gameobject SET rotation2=0.551937,rotation3=0.833886, animprogress=255 WHERE id = 181072;
