DELETE FROM spell_script_target WHERE entry IN(31315,28056);
INSERT INTO spell_script_target VALUES
(31315, 1, 16230, 0), -- Allow the Boss-Summon spell to hit the Cultist
(28056, 1, 16172, 0); -- Allow the death spell of shadow of doom to hit the necrotic shard
UPDATE creature_template SET faction=1630 WHERE entry=16143; -- Make Shadow of Doom evil
UPDATE creature_template SET UnitFlags=256 WHERE entry=16136; -- Make Necrotic Shard not attackable
UPDATE creature_template SET UnitFlags=33554432 WHERE entry IN (16356, 16346, 16336, 16306, 16338, 16421, 16386, 16398, 16401); -- Invisible Helper NPCs
UPDATE creature SET spawntimesecsmin=27000, spawntimesecsmax=27000 WHERE id=16398; -- Don't respawn or spawn Necropolis Proxies. They're spawned by the Necropolis when required
UPDATE gameobject_template SET Flags=4 WHERE entry IN (181172, 181223, 181215, 181374, 181373, 181154); -- Make Necropolis untargetable/unclickable
UPDATE gameobject SET spawntimesecsmin=-1, spawntimesecsmax=-1 WHERE id IN (181136); -- Summoning Circle
UPDATE gameobject SET spawntimesecsmin=-1, spawntimesecsmax=-1 WHERE id IN (181154, 181373, 181374, 181215, 181223); -- Necropoli
UPDATE gameobject SET spawntimesecsmin=-1, spawntimesecsmax=-1 WHERE id in (181142, 181173, 181174, 181191, 181192, 181193, 181194); -- Doodads
UPDATE creature_template SET ArmorMultiplier=55 WHERE entry=16421; -- Add armor to the necropolis health npc so that it survives several attacks
UPDATE creature_template SET MovementType=0 WHERE entry=16398; -- Do not let the proxies move
UPDATE creature_template SET MinLevel=60, MaxLevel=60 WHERE entry IN (16396, 16432); -- Adjust Level for Elite Guards to Level 60
UPDATE spell_template SET EffectImplicitTargetA1=1, AttributesServerside=4 WHERE Id IN(28313);
UPDATE gameobject_template SET size=1.5 WHERE entry=181373;
UPDATE gameobject_template SET size=2.0 WHERE entry=181374;
UPDATE gameobject_template SET size=2.5 WHERE entry IN(181172, 181215);
UPDATE gameobject_template SET size=3.5 WHERE entry=181223;
UPDATE creature_loot_template SET mincountOrRef=30, maxcount=30 WHERE entry IN (16143) AND item=22484;
UPDATE creature_template SET MaxLootGold=600 WHERE entry IN (16383, 16299, 16298, 16141);
UPDATE quest_template SET RequestItemsText="If you bring me thirty necrotic runes, I will give you your choice of hand protection in return. These should prove valuable in our fight against the undead Scourge.", OfferRewardText="You've done well, $N. Take your pick of hand protection in thanks for your efforts.", SpecialFlags=1, PrevQuestId=9153 WHERE entry IN(9094, 9333);
UPDATE quest_template SET RequestItemsText="If you bring me eight necrotic runes from the Scourge invaders, I can give you a consecrated sharpening stone. It should be of great help in your battle against the minions of the Lich King.", OfferRewardText="Thank you, $N. Here are your consecrated sharpening stones. Use them prudently.", SpecialFlags=1, PrevQuestId=9153 WHERE entry IN(9317, 9335);
UPDATE quest_template SET RequestItemsText="In exchange for the necrotic runes of the Scourge invaders, the Argent Dawn will give you one vial of blessed wizard oil.", OfferRewardText="I hope that you will find these items useful in future battles.", SpecialFlags=1, PrevQuestId=9153 WHERE entry IN(9318, 9334);
UPDATE quest_template SET RequestItemsText="In addition to our other supplies, we also have a number of major healing potions you may find useful. I will give you one in exchange for fifteen necrotic runes.", OfferRewardText="Here you are, $N. Be careful out there. Our numbers are not so large we can afford many battlefield casualties.", SpecialFlags=1, PrevQuestId=9153 WHERE entry IN(9321, 9336);
UPDATE quest_template SET RequestItemsText="In addition to our other supplies, we also have a number of major mana potions you may find useful. I will give you one in exchange for fifteen necrotic runes.", OfferRewardText="Here you are, $N. Be careful out there. Our numbers are not so large we can afford many battlefield casualties.", SpecialFlags=1, PrevQuestId=9153 WHERE entry IN(9320, 9337);
UPDATE quest_template SET RequestItemsText="You have aided our cause greatly, $N. If you wish, I can make available the tabard of the Argent Dawn. We are proud to have you among our allies.", OfferRewardText="Take this tabard and wear it proudly. Perhaps your deeds might inspire others to take up arms in support of our fight against the Scourge.", SpecialFlags=1, PrevQuestId=9153 WHERE entry IN(9343, 9341);
