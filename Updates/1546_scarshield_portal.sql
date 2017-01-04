-- Made NPC 9707 (Scarshield Portal) unselectable, unattackable, unable to attack or move
UPDATE creature_template SET UnitFlags=4+512+262144+33554432 WHERE Entry=9707;
