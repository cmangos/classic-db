-- Updated hit points of creature 4949 (Thrall) as it was far to low (only 40 000 HP).
-- However, only source is not precise and can not be confirmed by another one
-- Source: http://www.wowwiki.com/Talk:Thrall#Thrall.27s_HP
UPDATE `creature_template` SET `minhealth` = 637000, `maxhealth` = 637000 WHERE `entry` = 4949;