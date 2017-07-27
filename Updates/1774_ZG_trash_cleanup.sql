-- Set for mobs with 100% certainty to have Thrash on spawn
-- (Son of Hakkar, Razzashi Adder, Razzashi Raptor, Atal'ai Mistress)
UPDATE creature_template_addon SET auras='8876' WHERE entry IN (11357, 11372, 14821, 14882);

UPDATE creature_template_addon SET auras='3391' WHERE entry=14882;
-- Set for Portal of Madness the aura Portal of Madness
-- Set for Zulian Prowler and Gahz'ranka the aura Thrash
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(15009,0,0,1,16,0,0,'24051'),
(15141,0,0,1,16,0,0,'24620'),
(15101,0,0,1,16,0,0,'8876'),
(15114,0,0,1,16,0,0,'8876');

-- Set UNIT_FLAG_NOT_SELECTABLE for Portal of Madness, Voodoo Spirit and Massive Geyser
-- They all have unit flag 0x8000 already, so let them keep that
UPDATE creature_template SET UnitFlags=33587200 WHERE Entry IN (15141, 15009, 14122);

-- Set correct model for Portal of Madness (queried from official server)
UPDATE creature_template SET ModelId1=9510 WHERE Entry=15141;