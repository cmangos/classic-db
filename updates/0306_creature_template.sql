-- Changed faction of creature 4625 (Death's Head Ward Keeper) to 154 (Quillboar Death's Head) as
-- they should be hostile to players in Razorfen Kraul
-- Source: http://old.wowhead.com/npc=4625
UPDATE `creature_template` SET `faction_A` = 154, `faction_H` = 154 WHERE `entry` = 4625;
