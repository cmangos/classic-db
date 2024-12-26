-- SPELL_SCHOOL_NORMAL = 0 Bit 1
-- SPELL_SCHOOL_HOLY   = 1 Bit 2
-- SPELL_SCHOOL_FIRE   = 2 Bit 4
-- SPELL_SCHOOL_NATURE = 3 Bit 8
-- SPELL_SCHOOL_FROST  = 4 Bit 16
-- SPELL_SCHOOL_SHADOW = 5 Bit 32
-- SPELL_SCHOOL_ARCANE = 6 Bit 64
-- NEW ccsdb
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 2776; -- Vengeful Surge
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 3417; -- Living Flame
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 3950; -- Minor Water Guardian
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 4978; -- Aku'mai Servant
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 6047; -- Aqua Guardian
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 8837; -- Muck Splash
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 9178; -- Burning Spirit
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 9453; -- Aquementas
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 9816; -- Pyroguard Emberseer
UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `entry` = 11284; -- Dark Shade (Scholomance Occultist 10472 when using s.17673)
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 10955; -- Summoned Water Elemental
UPDATE `creature_template` SET `DamageSchool` = 6 WHERE `entry` = 11480; -- Arcane Aberration
UPDATE `creature_template` SET `DamageSchool` = 6 WHERE `entry` = 11483; -- Mana Remnant
UPDATE `creature_template` SET `DamageSchool` = 6 WHERE `entry` = 11484; -- Residual Monstrosity
UPDATE `creature_template` SET `DamageSchool` = 3 WHERE `entry` = 11745; -- Cyclone Warrior
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 13280; -- Hydrospawn
UPDATE `creature_template` SET `DamageSchool` = 3 WHERE `entry` = 13282; -- Noxxion
UPDATE `creature_template` SET `DamageSchool` = 3 WHERE `entry` = 14435; -- Prince Thunderaan
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 15209; -- Crimson Templar
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 17167; -- Conjured Elemental
UPDATE `creature_template` SET `DamageSchool` = 6 WHERE `entry` = 17870; -- Angered Nether-wraith
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 18001; -- Guardian Water Elemental
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 18946; -- Infernal Siegebreaker
UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `entry` = 19527; -- Vacillating Voidcaller
UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `entry` = 19554; -- Dimensius the All-Devouring
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 19757; -- Infernal Soul
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 19759; -- Newly Crafted Infernal
UPDATE `creature_template` SET `DamageSchool` = 6 WHERE `entry` = 20456; -- Ethereum Researcher
UPDATE `creature_template` SET `DamageSchool` = 6 WHERE `entry` = 20501; -- Seeping Sludge
UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `entry` = 20554; -- Arconus the Insatiable
UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `entry` = 20805; -- Void Waste Globule
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 21216; -- Hydross the Unstable (Script, kw: 0 as default)
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 21932; -- Hydross the Unstable (Script)
UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `entry` = 21435; -- Shadow Horror
UPDATE `creature_template` SET `DamageSchool` = 6 WHERE `entry` = 22022; -- Arcane Burst
UPDATE `creature_template` SET `DamageSchool` = 6 WHERE `entry` = 22408; -- Furious Nether-wraith

-- unclear ones researched
UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `entry` = 703; -- Lieutenant Fangore
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 3736; -- Darkslayer Mordenthal
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 4468; -- Jade Sludge (Changed below for tbc+)
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 4785; -- Illusionary Nightmare
UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `entry` = 5676; -- Summoned Voidwalker
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 5852; -- Inferno Elemental
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 5893; -- Minor Manifestation of Fire
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 5894; -- Corrupt Minor Manifestation of Water (vmangos)
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 5895; -- Minor Manifestation of Water (vmangos)
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 5896; -- Fire Spirit
UPDATE `creature_template` SET `DamageSchool` = 3 WHERE `entry` = 5902; -- Minor Manifestation of Air (vmangos)
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 6520; -- Scorching Elemental
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 6521; -- Living Blaze
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 7266; -- Ember (confirmed with vmangos)
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 7738; -- Burning Servant (confirmed with vmangos)
UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `entry` = 8539; -- Eyeless Watcher
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 8908; -- Molten War Golem (Changed below for tbc+, maybe tbc too, else fire there as in wotlkmangos)
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 9026; -- Overmaster Pyron
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 9436; -- Spawn of Bael'Gar
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 10387; -- Vengeful Phantom
UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `entry` = 10436; -- Baroness Anastari
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 10642; -- https://www.wowhead.com/wotlk/npc=10642/eckalom#comments:id=179188
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 11256; -- Manifestation of Water
UPDATE `creature_template` SET `DamageSchool` = 3 WHERE `entry` = 11744; -- Dust Stormer
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 11862; -- Tsunaman (vmangos)
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 13278; -- Duke Hydraxis (vmangos)
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 13322; -- Hydraxian Honor Guard (vmangos)
UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `entry` = 14389; -- Netherwalker
UPDATE `creature_template` SET `DamageSchool` = 6 WHERE `entry` = 14399; -- Arcane Torrent
UPDATE `creature_template` SET `DamageSchool` = 6 WHERE `entry` = 14400; -- Arcane Feedback
UPDATE `creature_template` SET `DamageSchool` = 3 WHERE `entry` = 14454; -- The Windreaver
UPDATE `creature_template` SET `DamageSchool` = 3 WHERE `entry` = 14455; -- Whirling Invader
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 14457; -- Princess Tempestria
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 14458; -- Watery Invader
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 14461; -- Baron Charr
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 14467; -- Kroshius
UPDATE `creature_template` SET `DamageSchool` = 3 WHERE `entry` = 14478; -- Huricanian (vmangos)
UPDATE `creature_template` SET `DamageSchool` = 4 WHERE `entry` = 15211; -- Azure Templar (vmangos)
UPDATE `creature_template` SET `DamageSchool` = 3 WHERE `entry` = 15212; -- Hoary Templar
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 15438; -- Greater Fire Elemental (nonexistant in classic)
UPDATE `creature_template` SET `DamageSchool` = 6 WHERE `entry` = 18866; -- Mageslayer
UPDATE `creature_template` SET `DamageSchool` = 6 WHERE `entry` = 18867; -- Mana Seeker
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 21253; -- Tainted Water Elemental (strange)
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 21260; -- Purified Water Elemental (strange)
UPDATE `creature_template` SET `DamageSchool` = 6 WHERE `entry` = 21267; -- Mana Beast
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` IN (17356,20565); -- Creeping Ooze (SHH - maybe prenerf)
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` IN (17357,20566); -- Creeping Oozeling (SHH - maybe prenerf)
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 17454; -- Burning Abyssal (SHH - maybe prenerf)
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` IN (17917,20627); -- Coilfang Water Elemental (SV Boss - maybe prenerf)
-- Patch 2.1 - Tempest-Forge Peacekeepers now deal Physical melee damage instead of Arcane
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` IN (18405,21578); -- 6 prenerf - https://wowpedia.fandom.com/wiki/Patch_2.1.0
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` IN (18472,20690); -- Darkweaver Syth
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` IN (18701,20689); -- Dark Vortex (SH - maybe prenerf)
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` IN (18703,20700); -- Sethekk Spirit (SH - maybe prenerf)
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 18805; -- High Astromancer Solarian (22290 - Needs to be scripted)
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 18865; -- Warp Aberration
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 19480; -- Darkened Spirit (maybe changes DamageSchool on transform?)
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 20774; -- Farahlon Lasher
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 20779; -- Congealed Void Horror
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` IN (20908,21617); -- Akkiris Lightning-Waker (Arca - maybe prenerf)
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` IN (21101,21620); -- Unbound Void Zone
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` IN (21346,21612); -- Sightless Eye (Arca - maybe prenerf)
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` IN (21695,21917); -- Tidal Surger (SV - maybe prenerf)
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` IN (21696,21916); -- Steam Surger (SV - maybe prenerf)
UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 22875; -- Coilskar Sea-Caller
-- UPDATE `creature_template` SET `DamageSchool` = 0 WHERE `entry` = 25772; -- Void Sentinel - https://www.wowhead.com/tbc/npc=25772/void-sentinel#comments:id=249602 - when converted to physical? - adjust DamageMultiplier when changing!

-- UPDATE `creature_template` SET `DamageSchool` = 5 WHERE `entry` = 14986; -- Shade of Jin'do (unclear, but exists like this in all cmangos versions, but not vmangos)
-- unclear vmangos: 510 4 5897 4 5898 3 6748 4 13736 4

-- tbc+
-- UPDATE `creature_template` SET `DamageSchool` = 3 WHERE `entry` = 4468; -- Jade Sludge
-- UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 8908; -- Molten War Golem (2 taken from wotlkmangos)

-- wotlk
-- Living Inferno 40681,40682?
-- Living Ember 40683,40684?

