-- Remote-Controlled Golem 2520
-- immune to poinson, taunt
-- https://github.com/cmangos/issues/wiki/creature_immunities
REPLACE INTO `creature_immunities` (`entry`, `setid`, `type`, `value`) VALUES
(2520, 0, 0, 114), -- SPELL_EFFECT_ATTACK_ME
(2520, 0, 1, 11), -- SPELL_AURA_MOD_TAUNT
(2520, 0, 4, 4); -- DISPEL_POISON

