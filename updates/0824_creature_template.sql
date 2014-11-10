-- Fixes the NPC flag of Guard Roberts(12423) so that he is not killed by wolves. This closes #575
UPDATE creature_template SET FactionAlliance = '12', FactionHorde = '12' WHERE entry = '12423';
