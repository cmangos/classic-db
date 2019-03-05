-- Cap max count for item 13468 (Black Lotus): only one can be loot per GO (unlike other herbs that can drop up to 3)
UPDATE gameobject_loot_template SET maxcount=1 WHERE item=13468;
