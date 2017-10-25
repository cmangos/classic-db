-- Fixed speed of NPC 15009 (Voodoo Spirit) in Zul'Gurub
-- Thanks @Phatcat for pointing and @evil-at-wow for providing data. This closes #125
UPDATE creature_template SET SpeedWalk=(7.0 / 2.5), SpeedRun=(14.0 / 7.0) WHERE Entry=15009;
