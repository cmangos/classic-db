-- Fixed Odo the Blindwatcher fight : it should not be immune to crowd control and is linked to the two nearby bats
DELETE FROM creature_linking WHERE master_guid=16257;
INSERT INTO creature_linking VALUES
(16259, 16257, 3),
(16258, 16257, 3);

UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask-(16+64+1024+2048+4096+8192+65536+8388608) WHERE Entry=4279;

-- Fixed faction and mechanic immunities of Wolf Master Nandos
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14, MechanicImmuneMask=MechanicImmuneMask-(16+64+1024+2048+4096+8192+65536+8388608)  WHERE Entry=3927;

-- Fixed mechanic immunities of Rethilgore and Razorclaw the Butcher
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask-(16+64+1024+2048+4096+8192+65536+8388608) WHERE Entry IN (3886, 3914);

-- Fixed mechanic immunities of Baron Silverlaine and Commander Springvale
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask-(64+1024+2048+4096+8192+8388608) WHERE Entry IN (3887, 4278);
