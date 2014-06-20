-- Fixed faction for creatures 15316 (Qiraji Scorpion) and 15347 (Qiraji Scarab) in Temple of Ahn'Qiraj
-- This contributes to #168 
UPDATE `creature_template` SET `FactionAlliance` = 311, `FactionHorde` = 311 WHERE `Entry` IN (15316, 15317);
