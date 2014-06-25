-- Fixed a few creatures immunities in Molten Core

SET @CHARM     := 1;
SET @FEAR      := 16;
SET @ROOT      := 60;
SET @SILENCE   := 256;
SET @SLEEP     := 512;
SET @SNARE     := 1024;
SET @STUN      := 2048;
SET @FREEZE    := 4096;
SET @POLYMORPH := 65536;
SET @BANISH    := 131072;

-- Added various crowd control immunities to Gehennas adds (Flamewaker)
-- This closes #481 Thanks Scotty0100 for reporting.
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask` | (@CHARM + @FEAR + @ROOT + @SILENCE + @POLYMORPH)
WHERE `Entry` =  11661; -- Flamewaker (Gehennas adds)

-- Added various crowd control immunities to Lucifron adds (Flamewaker Protector)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask` | (@CHARM + @FEAR + @ROOT + @SILENCE + @POLYMORPH)
WHERE `Entry` =  12119; -- Flamewaker Protector (Lucifron adds)

-- Added various crowd control immunities to Sulfuron adds (Flamewaker Priest)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask` | (@CHARM + @FEAR + @ROOT + @POLYMORPH)
WHERE `Entry` =  11662; -- Flamewaker Priest (Sulfuron adds)

-- Added various crowd control immunities to Majordomo Executus adds (Flamewaker Elite)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask` | (@CHARM + @FEAR + @ROOT + @SILENCE + @POLYMORPH)
WHERE `Entry` =  11664; -- Flamewaker Elite (Majorodmo adds)

-- Added various crowd control immunities to Majordomo Executus adds (Flamewaker Healer)
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask` | (@CHARM + @FEAR + @ROOT)
WHERE `Entry` =  11663; -- Flamewaker Healer (Majorodmo adds)

-- Added banish immunity to Firelords and their spawns
-- Thanks Scotty0100 for pointing and fixing. This closes #479 
-- Source: http://www.wowwiki.com/Firelord_%28mob%29
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask` | @BANISH
WHERE `Entry` IN (11668, 12265); -- Firelord and Lava Spawns

-- Added banish immunity to Firewalker and Flameguard
-- Source:  http://leftoversraiding.org/index.php/topic/725/1/molten-core-summary---pt.-1-%28intro-trash%29.html
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask` | @BANISH
WHERE `Entry` IN (11666, 11667); -- Firewalker and Flameguard

