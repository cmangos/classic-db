-- Remove wrong faction from Officer's Door blocking entrance to pvp halls
-- faction maybe from befor you could enter
UPDATE `gameobject_template` SET `Faction` = 0 WHERE `entry` IN (176562,176576); -- 114

