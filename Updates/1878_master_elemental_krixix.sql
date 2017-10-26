-- Fixed UnitFlags of NPC 14401 (Master Elemental Shaper Krixix) in BWL
-- He is not a trainer, at least not willingly
UPDATE creature_template SET UnitFlags=0 WHERE Entry=14401;
