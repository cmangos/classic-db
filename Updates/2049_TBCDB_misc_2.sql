-- Misc TBC-DB backports, corrected for some of them

-- Unpopped Darkmist Eye should have a near 100% drop rate
UPDATE creature_loot_template SET ChanceOrQuestChance=-80 WHERE item=5884;

-- Entropic Beast in Felwood should be immune to fire
UPDATE creature_template SET SchoolImmuneMask=4 WHERE entry=9878;

-- Deth'ryll Satyrs should be classified as Demons rather than Humanoid
UPDATE creature_template SET CreatureType=3 WHERE entry=2212;

-- Incorrect quest text at completion of Your Place in the World
UPDATE quest_template SET RequestItemsText='The carapace of a scorpid isn''t so thick that the strength of a determined $C will be deterred. Strike strongly and without doubt, and the scorpids should prove easy prey.' WHERE entry=4641;

-- Scorched Spider Fang should have a 100% drop rate for Fire Hardened Mail
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=6838;

-- Fetid Skull should have a 100% drop rate from Scourge Champions for Marauders of Darrowshire
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=13157;

-- Felmusk Shadowstalker drops Copper Ore/Rough stone at a high rate
UPDATE creature_loot_template SET ChanceOrQuestChance=2 WHERE entry=3763 AND item IN (2770,2835);

-- correct coeff for Seal of Command proc
UPDATE spell_bonus_data SET direct_bonus=0.29 WHERE entry IN(20424);

-- Mage Clearcasting
-- Add whole blast wave mask per wotlk, add ice lance
UPDATE spell_affect SET SpellFamilyMask=SpellFamilyMask|(0x0000000000020000|0x0000004000000000) WHERE entry IN(12536);
-- Druid Clearcasting
-- add thorns and swiftmend
UPDATE spell_affect SET SpellFamilyMask=SpellFamilyMask|(0x00000100|0x0000000200000000) WHERE entry IN(16870);

-- finest threads
UPDATE gameobject SET position_x=-8704.037,position_y=860.7137,position_z=100.7406,orientation=2.242746,rotation2=0.9006977,rotation3=0.4344464 WHERE guid IN(13390) AND id IN(2177);
-- pointers
UPDATE gameobject SET id=2179,position_x=-8704.93,position_y=865.7831,position_z=96.76332,orientation=-2.452184,rotation2=-0.9411755,rotation3=0.3379182 WHERE guid IN(4718) AND id IN(2110); -- Cathedral Square
UPDATE gameobject SET id=2191,position_x=-8706.763,position_y=865.9595,position_z=97.36337,orientation=2.260197,rotation2=0.9044542,rotation3=0.4265707 WHERE guid IN(5136) AND id IN(2111); -- Trade District
UPDATE gameobject SET id=24718,position_x=-8706.586,position_y=867.7924,position_z=96.76332,orientation=0.6894043,rotation2=0.3379164,rotation3=0.9411761 WHERE guid IN(42868) AND id IN(24715); -- the park
UPDATE gameobject SET id=28039,position_x=-8706.824,position_y=865.9103,position_z=96.16681,orientation=2.260197,rotation2=0.9044542,rotation3=0.4265707 WHERE guid IN(42879) AND id IN(28035); -- Stormwind Gate

-- Remove Weapon from Young Wendigo 1134
UPDATE creature_template SET EquipmentTemplateId=0 WHERE entry=1134;

-- Data for Spell Healing Done librams and idols which work through dummies
DELETE FROM spell_affect WHERE entry IN(34246,28851,28853,32403);
INSERT INTO spell_affect(entry, effectId, SpellFamilyMask) VALUES
(28851,0,0x0000000040000000), -- Flash of Light librams
(28853,0,0x0000000040000000),
(32403,0,0x0000000040000000),
(34246,0,0x0000001000000000); -- Lifebloom Idol
