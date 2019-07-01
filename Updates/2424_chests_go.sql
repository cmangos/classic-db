-- Correct Stats for Large Solid Chest 153464 & Large Mithril Bound Chest 153469
UPDATE gameobject_template SET Faction=94, mingold=2100, maxgold=2300 WHERE entry IN (153464,153469);
-- also Add "Locked" Flag for "Bound", which require lockpicking skill
UPDATE `gameobject_template` SET `flags` =`flags`|2 WHERE `entry` IN (
75296, -- Large Iron Bound Chest		- lock 	24
75297, -- Large Iron Bound Chest		- 		60
153469, -- Large Mithril Bound Chest	- 		600
184932, -- Bound Fel Iron Chest			- 		1665
184938 -- Bound Adamantite Chest		- 		1666
);
