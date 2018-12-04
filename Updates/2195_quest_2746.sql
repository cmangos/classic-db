-- Improve Quest: The Attack! 2746 - Resolves #74

/*
.go c id 7766
.quest add 2746
.quest complete 2746
-- Delay 24
ServerToClient: SMSG_MESSAGECHAT (0x0096) Length: 197 ConnectionIndex: 0 Time: 03/17/2009 01:09:33.000 Number: 98960
Type: MonsterSay (12)
Language: Common (7)
Sender GUID: Full: 0xF1300006DA113AD9 TypeMask: Object, Unit Entry: 1754 UInt64: 17379390991451110105
Constant time: 0
Name Length: 21
Name: Lord Gregor Lescovar
Receiver GUID: Full: 0xF1300006DB121298 TypeMask: Object, Unit Entry: 1755 UInt64: 17379390991467942552
Receiver Name Length: 24
Receiver Name: Marzon the Silent Blade
Chat Tag: 114 (114)
unk byte: 0
unk uint16: 0
Name: Hmm, it could be that meddler Shaw. I will see what I can discover. Be off with you. I'll contact you again soon.
unk byte: 0
-- Delay 28
ServerToClient: SMSG_UPDATE_OBJECT (0x00A9) Length: 38 ConnectionIndex: 0 Time: 03/17/2009 01:09:37.000 Number: 98984
Count: 1
[0] UpdateType: Values
[0] GUID: Full: 0xF1300006DA113AD9 TypeMask: Object, Unit Entry: 1754 UInt64: 17379390991451110105
[0] (54) UNIT_FIELD_FACTIONTEMPLATE: 34
Name: Very well. I will return then.
unk byte: 0
-- Delay 29
ServerToClient: SMSG_UPDATE_OBJECT (0x00A9) Length: 38 ConnectionIndex: 0 Time: 03/17/2009 01:09:38.000 Number: 98987
Count: 1
[0] UpdateType: Values
[0] GUID: Full: 0xF1300006DB121298 TypeMask: Object, Unit Entry: 1755 UInt64: 17379390991467942552
[0] (54) UNIT_FIELD_FACTIONTEMPLATE: 34
*/

-- Marzon the Silent Blade
UPDATE `creature_template` SET `FactionAlliance` = 12, `FactionHorde` = 12, `NpcFlags` = 0 WHERE `entry` = 1755;
UPDATE `dbscripts_on_creature_movement` SET `datalong` = 34, `delay` = 28, `comments` = 'Set Faction 34 for Entry 1754' WHERE `id` = 175402 AND `command` = 22 AND `buddy_entry` = 0;
UPDATE `dbscripts_on_creature_movement` SET `datalong` = 34, `delay` = 29, `comments` = 'Set Faction 34 for Entry 1755' WHERE `id` = 175402 AND `command` = 22 AND `buddy_entry` = 1755;
