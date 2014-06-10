-- Are there where female Servants of Azora (Elwynn Forest) in Classic?
-- Thanks Neotmiren for pointing and fixing. This closes #470 
UPDATE `creature` SET `modelid` = 0 WHERE `id` = 1949; -- allows randomly male or female Servant of Azora
