-- Theramore Combat Dummy 4952
-- Fix: DB-SCRIPTS: Process table `dbscripts_on_relay` id 14, command 26 source can not attack (Attacker: Creature (Entry: 4951 Counter: 30657) DBGuid: 30657, Target: Creature (Entry: 4952 Counter: 30455) DBGuid: 30455)
-- Fix: stucking on Players aggro
UPDATE creature_template SET StaticFlags1 = 34603278, StaticFlags2 = 1077936160, StaticFlags3 = 8421376 WHERE Entry IN (4952);
