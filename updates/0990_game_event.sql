-- Major revamp of Winterveil Holiday.
-- Also added Winterveil gifts under the tree.

SET @EVENT := 21;
SET @POOL := 1700;

-- Inserting missing winter hats into creature_loot_table
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (9237, 21524, 100, 0, 1, 1, 32);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (10997, 21524, 100, 0, 1, 1, 32);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (9019, 21524, 100, 0, 1, 1, 32);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (10899, 21525, 100, 0, 1, 1, 32);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (11486, 21525, 100, 0, 1, 1, 32);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE `entry`=1853 AND `item` = 21525;

-- Inserting model changes into christmas outfits
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (45840, 0, 15737, 0, 0, 0, 2);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (54433, 0, 15733, 0, 0, 0, 2);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (47613, 0, 15735, 0, 0, 0, 2);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (40458, 0, 15760, 0, 0, 0, 2);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (137881, 0, 15734, 0, 0, 0, 2);

-- Updating position of Goli Krumm
UPDATE `creature` SET `position_x`=-4882.709, `position_y`=952.68, `position_z`=501.464, `orientation`=3.17408 WHERE `guid`=86181;

-- Adding Fencing for Metzen in Searing Gorge
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151751, 180742, 0, -6606.33, -1860.82, 244.459, 6.27864, 0, 0, 0.00227228, -0.999997, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151752, 180742, 0, -6606.36, -1857.85, 244.382, 6.2433, 0, 0, 0.0199423, -0.999801, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151753, 180742, 0, -6609.29, -1854.76, 244.234, 1.58196, 0, 0, 0.711042, 0.703149, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151754, 180742, 0, -6606.33, -1854.91, 244.308, 1.55211, 0, 0, 0.700471, 0.713681, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151755, 180742, 0, -6612.22, -1854.84, 244.179, 3.15825, 0, 0, 0.999965, -0.00832624, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151756, 180742, 0, -6612.16, -1857.78, 244.212, 3.15432, 0, 0, 0.99998, -0.00636482, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`,`position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151757, 180742, 0, -6612.09, -1860.72, 244.247, 4.69763, 0, 0, 0.712307, -0.701868, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151758, 180742, 0, -6609.11, -1860.79, 244.347, 4.73297, 0, 0, 0.699791, -0.714347, 300, 0, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (151751, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (151752, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (151753, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (151754, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (151755, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (151756, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (151757, 2);
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (151758, 2);

-- Adding Metzen's stable in Tanaris
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151750, 180719, 1, -8089.22, -5275.14, 1.23688, 1.75167, 0, 0, 0.768079, 0.640355, 300, 0, 1);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (151750, 2);

-- Changing position of Holly Preserver in IF
UPDATE `gameobject` SET `position_x`=-4928.87, `position_y`=-990.331, `position_z`=501.448, `orientation`=2.51327 
WHERE `guid`=41673;

-- Correcting OfferRewardText in quests 7061 and 7063 (public though -> public thought)
UPDATE `quest_template` SET `OfferRewardText`='The legends and lore surrounding the Winter Veil are ones that have faded from the forefront of public thought over the years.  Yes, I know that the goblins are helping to revive the season for their own ends, the fact that our people reflect upon it at least in some form does good to keep such lore alive.$B$BYour desire to go beyond the material and learn about our past is an admirable trait, young $c.  I salute your wisdom.'
WHERE `entry`=7061;

UPDATE `quest_template` SET `OfferRewardText`='The legends and lore surrounding the Winter Veil are ones that have faded from the forefront of public thought over the years. While I recognize that the goblins are helping to revive the season for their own ends, the fact that the citizenry thinks about it at least in some form does good to keep such lore alive.$B$BYour desire to go beyond the material and learn about our past is an admirable trait, young $C. I salute your erudite nature.'
WHERE `entry`=7063;

-- Correcting Hero of the Day (alliance and horde)
UPDATE `quest_template` SET `RequiredRaces`= 77, `RequiredSkill`= 185, `RequiredSkillValue`= 300, `QuestFlags`= 0, `SpecialFlags`= 0, `PrevQuestId`= 8762, `OfferRewardText` = 'The machine lets off a little rumble and a small amount of steam as it starts working. It is not too long thereafter until it stops, heralded by another small jet of steam erupting from it. A door hatch opens, revealing a batch of preserved holly!', `RequestItemsText` = 'The "Holly Preserver" machine looks like some sort of still at first, but a careful examination of it reveals some goblin-esque changes to it. Still, your skill at cooking seems to allow you to understand how the machine works. $B$BThere is already fresh holly in the machine - you simply need to provide some deeprock salt and five gold coins to get the machine working.', `RewOrReqMoney` = -50000 WHERE `entry`= 8763;

UPDATE `quest_template` SET `RequiredRaces`= 178, `RequiredSkill`= 185, `RequiredSkillValue`= 300, `QuestFlags`= 0, `SpecialFlags`= 0, `PrevQuestId`= 8746, `OfferRewardText` = 'The machine lets off a little rumble and a small amount of steam as it starts working. It is not too long thereafter until it stops, heralded by another small jet of steam erupting from it. A door hatch opens, revealing a batch of preserved holly!', `RequestItemsText` = 'The "Holly Preserver" machine looks like some sort of still at first, but a careful examination of it reveals some goblin-esque changes to it. Still, your skill at cooking seems to allow you to understand how the machine works. $B$BThere is already fresh holly in the machine - you simply need to provide some deeprock salt and five gold coins to get the machine working.' WHERE `entry`= 8799;

UPDATE `quest_template` SET `RequiredRaces`= 77 WHERE `entry`= 8762;
UPDATE `quest_template` SET `RequiredRaces`= 178 WHERE `entry`= 8746;

-- Removing repeatability for quest 6962
UPDATE `quest_template` SET `SpecialFlags`= 0 WHERE `entry`= 6962;

-- Correcting typo (Greatfather ->Great-father)
UPDATE `npc_text` SET `text3_0`= 'Yeah, sure, go ahead and tell ol\' Great-father Winter what you\'d like for this Winter Veil.$B$BHo ho hurry up.' WHERE `ID`= 6250;

-- Adding thank you mail after Metzen quest completed
UPDATE `quest_template` SET `RewMailTemplateId`= 122, `RewMailDelaySecs`= 172800 WHERE `entry`= 8746;
UPDATE `quest_template` SET `RewMailTemplateId`= 161, `RewMailDelaySecs`= 172800 WHERE `entry`= 8762;

-- Adding thank you mail after Treats quest completed
UPDATE `quest_template` SET `RewMailTemplateId`= 118, `RewMailDelaySecs`= 86400 WHERE `entry`= 6962;
UPDATE `quest_template` SET `RewMailTemplateId`= 102, `RewMailDelaySecs`= 86400 WHERE `entry`= 7025;

-- Typo fix for quest 6962 (Greatfather ->Great-father)
UPDATE `quest_template` SET `Details`= 'Hey, can you do Great-father Winter a favor, um, little $g boy : girl;?$B$BNot to needlessly talk about myself in the third person, but Great-father Winter has been at this all day and he could use a treat himself.  Some gingerbread cookies and ice cold milk to wash them down with would really hit the spot.  Think you could be a friend to the Great-father and fetch some for me?', `Objectives`= 'Bring 5 Gingerbread Cookies and an Ice Cold Milk to Great-father Winter in Orgrimmar.', `OfferRewardText`= 'You\'re quite the helper to ol\' Great-father Winter there, $N.  Have a great Feast of Winter Veil.$B$BHere\'s a little something... you know, for the effort.' WHERE `entry`= 6962;

-- Fixing quest 6983 attributes to reflect 7043
UPDATE `quest_template` SET `QuestLevel`= 35, `RequiredRaces`= 178, `SpecialFlags`= 0 WHERE `entry`=6983;

-- Adding thank you mail after You're a Mean One quest completed
UPDATE `quest_template` SET `RewMailTemplateId`= 117, `RewMailDelaySecs`= 86400 WHERE `entry`= 6983;
UPDATE `quest_template` SET `RewMailTemplateId`= 108, `RewMailDelaySecs`= 86400 WHERE `entry`= 7043;

-- Adding Winter Gifts event
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES (@EVENT, '2006-12-25 16:00:00', '2020-12-31 16:00:00', 525600, 11700, 0, 'Winter Veil: Gifts');

-- Moving quests Winter Presents and New Year Celebrations to 
-- their respective holidays
UPDATE `game_event_quest` SET `event`= @EVENT WHERE `quest`= 8827;
UPDATE `game_event_quest` SET `event`= @EVENT WHERE `quest`= 8828;
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8860,6);
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES (8861,6);

-- Adding presents under tree in IF and Org
-- Gaily Wrapped Present
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151761, 180747, 0, - 4919.58, -980.674, 501.46, 2.15958, 0, 0, 0, 0, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151762, 180747, 1,  1626.71, -4414.16, 15.8292, 2.2784, 0, 0, 0, 0, 300, 0, 1);

-- Ticking Present
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151763, 180748, 1,  1625.77, -4413.86, 16.0883, 4.80049, 0, 0, 0, 0, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151764, 180748, 0, - 4921.04, -981.624, 501.464, 1.81635, 0, 0, 0, 0, 300, 0, 1);

-- Festive Gift
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151765, 180793, 0, - 4916.73, -982.109, 501.884, 1.72839, 0, 0, 0, 0, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151766, 180793, 1,  1625.46, -4415.83, 15.4469, 2.11818, 0, 0, 0, 0, 300, 0, 1);

-- Carefully Wrapped Present
INSERT INTO `gameobject` (`guid`, `id`, map, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151767, 180743, 0, - 4915.83, -981.304, 501.759, 1.99149, 0, 0, 0, 0, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151768, 180743, 1,  1623.6, -4415.36, 15.1169, 0.75159, 0, 0, 0, 0, 300, 0, 1);

-- Gently Shaken Gift
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151769, 180746, 0, -4915.18, -978.104, 501.451, 5.56505, 0, 0, 0, 0, 300, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (151770, 180746, 1, 1624.53, -4414.58, 15.9044, 1.30844, 0, 0, 0, 0, 300, 0, 1);


-- Adding to event @EVENT gameobjects
INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (151761,@EVENT);
INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (151762,@EVENT);
INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (151763,@EVENT);
INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (151764,@EVENT);
INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (151765,@EVENT);
INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (151766,@EVENT);
INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (151767,@EVENT);
INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (151768,@EVENT);
INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (151769,@EVENT);
INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES (151770,@EVENT);

-- Adding Completion text to present quests
UPDATE `quest_template` SET `OfferRewardText`= 'The tag on this present reads:$b$bTo $N,$b$bMay your feast of Great-Winter be merry and bright!' WHERE `entry`= 8744;
UPDATE `quest_template` SET `OfferRewardText`= 'Have a joyous Feast of Great-Winter from your friends at Smokeywood Pastures.' WHERE `entry`= 8769;
UPDATE `quest_template` SET `OfferRewardText`= 'This festively-wrapped present has your name on it.$b$bWait, did it just move?' WHERE `entry`= 8768;
UPDATE `quest_template` SET `MinLevel`= 1, `RequiredClasses`= 13, `OfferRewardText`= 'This present looks like it has been shaken a few times. The tag on it reads:$b$bTo a very special $r $c.' WHERE `entry`= 8767;

-- This quest should only be available to mana users
UPDATE `quest_template` SET `RequiredClasses`= 1490 WHERE `entry`= 8788;

-- Adding 5x Winter Veil Eggnog to Gently Shaken Gift (21271)
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (21271, 21241, 100, 0, 5, 5, 0);

UPDATE `quest_template` SET `OfferRewardText`= 'The note on this present reads:$b$bTo $n,$b$bIn hoping this will help you spread warm tidings and holiday cheer to all of Azeroth.$b$bFrom Greatfather Winter' WHERE `entry`= 8803;

-- Modifying 1 and adding 3 more spawn points for Abominable    -- Greench
UPDATE `creature` SET `position_x`= 171.682, `position_y`= -260.075, `position_z`= 150.132, `orientation`= 1.142, `spawntimesecs`= 600, `spawndist`= 40, `MovementType`= 1 WHERE `guid`= 89424;

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91750, 13602, 0, 13644, 0, 361.078, -54.289, 145.192, 2.182, 600, 40, 0, 3831, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91751, 13602, 0, 13644, 0, 313.328, -376.999, 169.598, 0.914, 600, 40, 0, 3831, 0, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (91752, 13602, 0, 13644, 0, 550.981, -101.974, 145.180, 2.755, 600, 40, 0, 3831, 0, 0, 1);

INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (91750,2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (91751,2);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (91752,2);

-- Adding pool entry to limit spawns to one at a time
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (13602, @POOL, 0, 'Abominable Greench \(13602\)');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (@POOL, 1, 'Abominable Greench \(13602\)');

-- Altering Mechanical Greench companaion scale
UPDATE `creature_template` SET `Scale`= 0 WHERE `entry`= 15721;
