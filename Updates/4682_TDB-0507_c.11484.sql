-- Residual Monstrosity 11484
-- https://www.wowhead.com/classic/npc=11484/residual-monstrosity
-- https://www.youtube.com/live/9KWBGZQuxXU?si=LSuEF3wkUdx2nKKn&t=2423
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|(4096+1048576) WHERE `entry` = 11484;

