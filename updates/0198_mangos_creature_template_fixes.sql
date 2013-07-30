-- Fixed faction and scale for creature 16861 (Death Lord) which was erroneously set to Friendly instead of Scourge
UPDATE `creature_template` SET `scale` = 2, `Faction_A`= 21, `Faction_H` = 21 WHERE `entry`= 16861;
-- Fixed size for creature 16157 (Doom Touched Warrior)
UPDATE `creature_template` SET `scale` = 0 WHERE `entry`= 16157;
-- Fixed faction for creatures 16124 (Unrelenting Trainee), 16125 (Unrelenting Deathknight), 16126 (Unrelenting Rider)
-- 16150 (Spectral Rider) & 16148 (Spectral Deathknight) which was erroneously set to Friendly instead of Scourge
UPDATE `creature_template` SET `Faction_A`= 21, `Faction_H` = 21 WHERE `entry` IN (16124, 16125, 16126, 16150, 16148);
