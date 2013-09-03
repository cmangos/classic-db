-- Fixed creature 2818 (Slagg) who was visible only to GM
UPDATE `creature_template` SET `npcflag` = 19 WHERE `entry` = 2818;
-- Fixed creature 6251 (Strahad Farsan) who was visible only to GM, thanks scotty0100 for pointing and fixing
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 6251;
