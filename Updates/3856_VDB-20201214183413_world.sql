-- https://github.com/vmangos/core/commit/88955825fc42c857edaf124c526f77bb8bb751fe

-- Splintertree Raider does not regen health OOC.
UPDATE creature_template SET RegenerateStats=RegenerateStats&~2 WHERE entry=12859;

-- Torek does not regen health OOC.
UPDATE creature_template SET RegenerateStats=RegenerateStats&~2 WHERE entry=12858;

-- Drop chance of Logging Rope should be very low.
-- https://tbc.wowhead.com/item=16743/logging-rope#dropped-by
UPDATE creature_loot_template SET ChanceOrQuestChance=-10 WHERE item=16743;

-- Joseph Redpath should spawn on top of his grave and whisper player when looting Joseph Redpath's Monument.
-- https://youtu.be/Tcd1IFBFWgI?t=13
DELETE FROM dbscripts_on_go_template_use WHERE id=176145;
INSERT INTO dbscripts_on_go_template_use (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(176145, 5000, 0, 10, 10936, 12000, 0, 0, 0, 2, 0, 0, 0, 0, 1166.3517, -1720.1986, 62.901962, 0.226892799139022827, 0, 'Joseph Redpath\'s Monument - Summon Creature Joseph Redpath'),
(176145, 7000, 0, 36, 0, 0, 0, 10936, 10, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Joseph Redpath\'s Monument - Joseph Redpath - Face Player'),
(176145, 7000, 0, 0, 0, 0, 0, 10936, 10, 3, 6274, 0, 0, 0, 0, 0, 0, 0, 0, 'Joseph Redpath\'s Monument - Joseph Redpath - Whisper Player'),
(176145, 7000, 1, 28, 8, 0, 0, 10936, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Joseph Redpath\'s Monument - Joseph Redpath - Kneel');

UPDATE creature_template SET UnitFlags=33536 WHERE entry=10936;
REPLACE INTO creature_template_addon (entry, bytes1, auras) VALUES
(10936, 0, 17327);

UPDATE broadcast_text SET ChatTypeID=4 WHERE Id=6274;

-- Ironaya should be immune to bleed, not immune to stun.
-- https://youtu.be/OZO7dYtQcBk?t=71
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask | 16384, MechanicImmuneMask=MechanicImmuneMask &~ 2048 WHERE entry=7228;

-- Stone Steward should be immune to slow.
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask | 1024 WHERE entry=4860;

-- Lookout's Spyglass & Smithing Tuyere has a very low drop chance.
-- https://web.archive.org/web/20060514184656/http://wow.allakhazam.com/db/item.html?witem=18959
-- https://web.archive.org/web/20060514184707/http://wow.allakhazam.com/db/item.html?witem=18960
UPDATE creature_loot_template SET ChanceOrQuestChance=-10 WHERE item IN (18959,18960) AND entry IN (8566,5840); -- -100
