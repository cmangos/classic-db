-- Correct Stats for Gurubashi (Jinxed Hoodoo Pile 180229 -> 180244 s.24184) - MCs Closest Player
-- https://tbc.wowhead.com/object=180228/jinxed-hoodoo-pile#comments:id=12082
-- https://tbc.wowhead.com/npc=15047/gurubashi
UPDATE creature_template SET Faction=28, UnitFlags=33555008, ExtraFlags=ExtraFlags|524288, SpeedWalk=(2.5 / 2.5), SpeedRun=(8 / 7), Detection=40, RangedBaseAttackTime=2000 WHERE entry=15047;

-- 20% bloodvine
-- https://tbc.wowhead.com/item=19726/bloodvine#gathered-from-object
UPDATE gameobject_loot_template SET ChanceOrQuestChance=20, MaxCount=1 WHERE entry IN (17200,17201,17202,17203,17204) AND item=19726; -- 15% 1-3 befor

-- Wildvine
DELETE FROM reference_loot_template WHERE entry=12009 AND item=8153; -- Wildvine only open world nodes of Purple Lotus, in addition to purple lotus
REPLACE INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, mincountOrRef, maxcount, condition_id, comments) VALUES
(6142, 8153, 10, 1, 1, 0, 'Wildvine'); -- 9.6% befor (Different % per Zone?)
REPLACE INTO reference_loot_template_names (entry, name) VALUES (12009, 'Purple Lotus');

DELETE FROM reference_loot_template WHERE entry=12010 AND item=11514; -- Fel Creep only in Felwood, in addition to Sungrass
REPLACE INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, mincountOrRef, maxcount, condition_id, comments) VALUES
(13965, 11514, 15, 1, 3, 987, 'Fel Creep'); -- 50% befor
REPLACE INTO reference_loot_template_names (entry, name) VALUES (12010, 'Sungrass');

DELETE FROM reference_loot_template WHERE entry=12012 AND item=11514; -- Fel Creep only in Felwood, in addition to Golden Sansam
REPLACE INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, mincountOrRef, maxcount, condition_id, comments) VALUES
(13967, 11514, 15, 1, 3, 987, 'Fel Creep'); -- 50% befor
REPLACE INTO reference_loot_template_names (entry, name) VALUES (12012, 'Golden Sansam');

DELETE FROM reference_loot_template WHERE entry=12013 AND item=11514; -- Fel Creep only in Felwood, in addition to Dreamfoil
REPLACE INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, mincountOrRef, maxcount, condition_id, comments) VALUES
(13968, 11514, 15, 1, 3, 987, 'Fel Creep'); -- 50% befor
REPLACE INTO reference_loot_template_names (entry, name) VALUES (12013, 'Dreamfoil');

DELETE FROM reference_loot_template WHERE entry=12014 AND item=11514; -- Fel Creep only in Felwood, in addition to Mountain Silversage
REPLACE INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, mincountOrRef, maxcount, condition_id, comments) VALUES
(13969, 11514, 15, 1, 3, 987, 'Fel Creep'); -- 50% befor
REPLACE INTO reference_loot_template_names (entry, name) VALUES (12014, 'Mountain Silversage');

-- https://web.archive.org/web/20080516022656/http://wow.allakhazam.com/db/object.html?wobject=457
-- https://tbc.wowhead.com/object=180228/jinxed-hoodoo-pile#contains
-- https://tbc.wowhead.com/object=180229/jinxed-hoodoo-pile#contains
-- https://youtu.be/VH3fQ7lH4IQ?t=290
UPDATE gameobject_loot_template SET ChanceOrQuestChance=22 WHERE entry=17259 AND item=19727; -- Blood Scythe (26.4)
DELETE FROM gameobject_loot_template WHERE entry=17259; -- Pristine Black Diamond (npcs, wrongly assigned for sure same as the darkmoon cards)
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(17259, 17259, 95, 1, -17259, 1, 0, 'Punctured Voodoo Doll (180228,180229)'); -- Chance for nothing (5%)
REPLACE INTO reference_loot_template_names (entry, name) VALUES (17259, 'Punctured Voodoo Doll (180228/180229)');
REPLACE INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(17259, 14047, 15, 1, 2, 5, 0, 'Runecloth'), -- 11 - 13.59 - 20
(17259, 19727, 20, 1, 1, 1, 0, 'Blood Scythe'), -- 15 - 22.47 - 26
(17259, 19813, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll'), -- warrior
(17259, 19814, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll'), -- rogue
(17259, 19815, 0, 1, 1, 1, 4, 'Punctured Voodoo Doll'), -- paladin (race condition in classic, shown by their drop%)
(17259, 19816, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll'), -- hunter
(17259, 19817, 0, 1, 1, 1, 3, 'Punctured Voodoo Doll'), -- shaman (race condition in classic, shown by their drop%)
(17259, 19818, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll'), -- mage
(17259, 19819, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll'), -- warlock
(17259, 19820, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll'), -- priest
(17259, 19821, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll'); -- druid

-- Gates of Zul'Gurub - Outside
UPDATE gameobject SET position_x=-11916.1953125, position_y=-1221.092041015625, position_z=92.25795745849609375, orientation=-1.57079577445983886, rotation2=-0.70710659027099609, rotation3=0.707106947898864746 WHERE map=0 AND id=180323;

-- Bloodseeker Bat
UPDATE creature_template SET SpeedWalk=(5 / 2.5), SpeedRun=(15 / 7) WHERE entry=11368;
-- Frenzied Bloodseeker Bat
UPDATE creature_template SET InhabitType=4, SpeedWalk=(5 / 2.5), SpeedRun=(15 / 7) WHERE entry=14965;

REPLACE INTO creature_template_addon VALUES
(15082, 0, 0, 1, 0, 0, 0, '25039'), -- Gri'lek
(15083, 0, 0, 1, 0, 0, 0, '25039'), -- Hazza'rah
(15084, 0, 0, 1, 0, 0, 0, '25039'), -- Renataki
(15085, 0, 0, 1, 0, 0, 0, '25039'); -- Wushoolay
