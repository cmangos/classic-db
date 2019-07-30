-- Add missing Immunities for Twin Emperors in Temple of Ahn'Qiraj
-- Emperor Vek'nilash: magical immunities (but holy)
UPDATE creature_template SET SchoolImmuneMask=(4+8+16+32+64) WHERE Entry=15275;
-- Emperor Vek'lor: physical immunity
UPDATE creature_template SET SchoolImmuneMask=1 WHERE Entry=15276;
