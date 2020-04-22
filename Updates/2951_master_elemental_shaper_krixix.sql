-- Fix NPC 14401 (Master Elemental Shaper Krixix) in Blackwing Lair
-- This NPC was not a trainer and did not have gossip back in Classic days
-- The only way to learn 22967 (Smelt Elementium) was to have him mind-controlled by a priest
UPDATE creature_template SET NpcFlags=0, TrainerType=0, TrainerSpell=0 WHERE Entry=14401;
