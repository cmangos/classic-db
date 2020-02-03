-- Creature (GUID: 1676) has spell 184 defined in auras field in creature_addon, but spell has cast time. Use it in AI instead.
-- Creature (GUID: 2069) has spell 184 defined in auras field in creature_addon, but spell has cast time. Use it in AI instead.
-- Venture Co. Geologist 1096 having static Fire Shield II Aura Passive (Handled by ACID)
-- DELETE FROM `creature_addon` WHERE `guid` = 1676;
-- DELETE FROM `creature_addon` WHERE `guid` = 2069;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 1096); -- Align all using creature_template_addon
