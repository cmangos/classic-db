-- Minor Manifestation of Earth 5891 - no explicit source but likely
UPDATE creature_template SET SchoolImmuneMask=8 WHERE entry=5891;
-- Minor Manifestation of Air 5902 - no explicit source but likely
UPDATE creature_template SET SchoolImmuneMask=64 WHERE entry=5902;
-- Arcane Aberration 11480 - http://www.wowhead.com/npc=11480/arcane-aberration#comments
UPDATE `creature_template` SET `SchoolImmuneMask` = 64 WHERE `entry` = 11480;
-- Mana Remnant 11483 - http://www.wowhead.com/npc=11483/mana-remnant#comments
UPDATE `creature_template` SET `SchoolImmuneMask` = 64 WHERE `entry` = 11483;
