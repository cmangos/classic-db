-- correct razorgore attack speed
UPDATE creature_template SET MeleeBaseAttackTime=2000 WHERE entry IN(12435);
-- remove levitate on spawn - this flag can only be dynamically removed from wotlk and breaks vanilla/tbc dragons
UPDATE creature_template SET InhabitType=3 WHERE entry IN(11583); -- done in core for animation reasons

