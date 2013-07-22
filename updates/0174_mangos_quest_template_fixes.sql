-- Fixed MinLevel for quest 590 (A Rogue's Deal) and removing wrong requirement about killing involved NPC
-- because this is handled by SD2 and not by DB
-- Source: http://www.wowwiki.com/Quest:A_Rogue%27s_Deal_(2)?oldid=532871
UPDATE `quest_template` SET `MinLevel` = 4, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 590;
