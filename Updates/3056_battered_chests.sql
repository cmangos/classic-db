-- Fix swapped values in gameobject_loot_template
UPDATE gameobject_loot_template SET ChanceOrQuestChance=70, groupid=0 WHERE entry=2277 AND item=60001;
UPDATE gameobject_loot_template SET groupid=0 WHERE entry=2277 AND item=50502;
