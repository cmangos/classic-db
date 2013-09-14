-- Added stealth auras for creatures that were missing it. Creature AI scripts were checked to ensure they do not
-- have stealth applied by EventAI as applying the aura twice would cancel it.
-- Source: TBC-DB
UPDATE `creature_addon` SET `auras` = '6408' WHERE `guid` IN (
    SELECT `guid` FROM `creature` WHERE `id` IN (
    1713,  -- Elder Shadowmaw Panther
    2246,  -- Syndicate Assassin
    2926,  -- Silvermane Stalker
    3279,  -- Witchwing Ambusher
    3634,  -- Deviate Stalker
    3770,  -- Bleakheart Shadowstalker
    7110,  -- Jadefire Shadowstalker
    7432,  -- Frostsaber Stalker
    11723, -- Hive'Ashi Sandstalker
    11730  -- Hive'Regal Ambusher
    )
);

UPDATE `creature_addon` SET `auras` = TRIM(CONCAT(`creature_addon`.`auras`, ' 6408')) WHERE `guid` IN (
    SELECT `guid` FROM `creature` WHERE `id` IN (
    8538,  -- Unseen Servant
    8539   -- Eyeless Watcher
    )
);
