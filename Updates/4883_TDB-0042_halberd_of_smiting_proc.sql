-- Halberd of Smiting (item 19874): the Decapitate passive aura (spell 25669)
-- was re-applied on every melee hit because spelltrigger_1 was set to
-- "chance on hit" (2). This caused the aura to stack without bound and
-- trigger multiple Decapitate procs per swing.
-- Change the spell trigger to "on equip" (1) so the passive aura is applied
-- once while the weapon is equipped and procs through its spell proc event.
-- ref https://github.com/cmangos/issues/issues/3891
UPDATE `item_template` SET `spelltrigger_1` = 1 WHERE `entry` = 19874;

