-- Fixed creature 16146 (Deathknight) in Naxxramas not wielding its shield
-- Source: http://www.youtube.com/watch?v=agWfYn0piY8
-- Thanks Metalica for pointing
UPDATE `creature_equip_template_raw` SET `equipslot1` = 781, `equipinfo1` = 33490690 WHERE `entry` = 142;
