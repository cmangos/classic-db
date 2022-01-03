-- Correct Skinning Loot for Saltwater Snapjaw 2505
-- https://classic.wowhead.com/npc=2505/saltwater-snapjaw#skinning
-- All skinning loots with additonal loot like i.8167 need to be checked
-- https://gitlab.com/lights-vengeance/issues/-/issues/468
UPDATE skinning_loot_template SET groupid=1 WHERE entry=2505;
UPDATE skinning_loot_template SET ChanceOrQuestChance=50, groupid=2 WHERE entry=2505 AND item=8167; -- Turtle Scale
UPDATE skinning_loot_template SET ChanceOrQuestChance=20 WHERE entry=2505 AND item=8170; -- Rugged Leather
UPDATE skinning_loot_template SET ChanceOrQuestChance=3 WHERE entry=2505 AND item=8169; -- Thick Hide
UPDATE skinning_loot_template SET ChanceOrQuestChance=77 WHERE entry=2505 AND item=4304; -- Thick Leather
