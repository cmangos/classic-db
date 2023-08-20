-- s.7939 s.22766
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 215;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 579; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 684; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 768; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 938; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 947;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 1040; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 1713; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 2175;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 2242; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 2246; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 2586; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 2588; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 2731; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 2926; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 3279;
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 3457;
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 3634;
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 3655;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 3763; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 3765; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 3767; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 3770; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 3771; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 4126;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 4377; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 4411; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 4789; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 4798; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 4834;
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 5615;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 6035; -- seemingly not all have it always.
UPDATE `creature_template_addon` SET `auras` = '7939 22766 8601' WHERE `entry` = 7110;
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 7432;
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 8218;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 10318; -- seemingly stealth is strongly related to spawn. - only patrols that are rogues (points towards missing rogue patrols in the hallways or creature_spawn_entry
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 11723;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 11730;
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 15101;
UPDATE `creature_template_addon` SET `auras` = '7939 22766 3417' WHERE `entry` = 2522;
UPDATE `creature_template_addon` SET `auras` = '7939 22766 10022' WHERE `entry` = 4850;
/*
ServerToClient: SMSG_AURA_UPDATE (0x0496) Length: 23 ConnIdx: 0 Time: 02/13/2009 06:15:05.000 Number: 1885223
GUID: Full: 0xF130003ADB00048B Type: Creature Entry: 15067 Low: 1163
[0] Slot: 0
[0] Spell ID: 7939 (7939)
[0] Flags: 25 (EffectIndex0, NotCaster, Positive)
[0] Level: 61
[0] Charges: 0
[1] Slot: 1
[1] Spell ID: 22766 (22766)
[1] Flags: 27 (EffectIndex0, EffectIndex1, NotCaster, Positive)
[1] Level: 61
[1] Charges: 0
*/

-- tbc+
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 16928; -- Stonescythe Ambusher
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 18116; -- Daggerfen Assassin
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 20714; -- Ridgespine Stalker
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 20998; -- Ridgespine Horror
UPDATE `creature_template_addon` SET `auras` = '7939 22766' WHERE `entry` = 22206; -- Expedition Druid

