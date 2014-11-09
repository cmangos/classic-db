-- Fixed stats of creature 4196 (Silithid Swarm). This NPCs is summoned by various
-- silithid NPCs and its stats change depending on how it is summoned
-- Sources:
-- http://www.wowhead.com/npc=5451#comments
-- http://www.wowhead.com/npc=5457#comments
-- http://www.wowhead.com/npc=3252#comments
-- Fixed stats of creature 7769 (Hazzali Parasite). This NPCs is summoned by various
-- silithid NPCs at death and previously had too much HP
-- Source: http://www.wowwiki.com/Hazzali_Parasite
UPDATE `creature_template` SET `MinLevel` = 1, `MaxLevel` = 1, `MinLevelHealth` = 1, `MaxLevelHealth` = 1, `MinLevelMana` = 0, `MaxLevelMana` = 0, `HealthMultiplier` = 0.02, `ArmorMultiplier` = 1, `Scale` = 0.2 WHERE `Entry` = 4196;
UPDATE `creature_template` SET `MinLevelHealth` = 2, `MaxLevelHealth` = 2, `HealthMultiplier` = 0.001, `ArmorMultiplier` = 1 WHERE `Entry` = 7769;
