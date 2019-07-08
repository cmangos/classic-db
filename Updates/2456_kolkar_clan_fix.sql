-- TBC-1330 --  Gets rid of incorrect resistance on entire Kolkar Clan
UPDATE creature_template SET ResistanceFire = 0, ResistanceShadow = 0 WHERE Entry IN (12977,4636,3397,4637,3119,9524,3275,4634,3120,3274,4633,3273,9523,12976,4635,4632);


