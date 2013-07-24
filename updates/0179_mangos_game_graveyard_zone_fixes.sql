-- Replace graveyard for Blackrock mountains and related zones with Throrium point
SET @FACTION_ANY                                = 0;
SET @ZONE_BLACKROCK_DEPTHS                      = 1584;
SET @ZONE_BLACKROCK_MOUNTAIN                    = 25;
SET @ZONE_BLACKROCK_SPIRE                       = 1583;
SET @ZONE_MOLTEN_CORE                           = 2717;
SET @ZONE_BLACKWING_LAIR                        = 2677;

-- Remove old graveyard links for Blackrock mountains and related zones
DELETE FROM `game_graveyard_zone`
WHERE `ghost_zone` IN (@ZONE_BLACKROCK_DEPTHS, @ZONE_BLACKROCK_MOUNTAIN, @ZONE_BLACKROCK_SPIRE, @ZONE_MOLTEN_CORE, @ZONE_BLACKWING_LAIR);

-- Add proper graveyards for Blackrock mountains and related zones
INSERT INTO `game_graveyard_zone` VALUES
    (636,   @ZONE_BLACKROCK_DEPTHS,             @FACTION_ANY),
    (636,   @ZONE_BLACKROCK_MOUNTAIN,           @FACTION_ANY),
    (636,   @ZONE_BLACKROCK_SPIRE,              @FACTION_ANY),
    (636,   @ZONE_MOLTEN_CORE,                  @FACTION_ANY),
    (636,   @ZONE_BLACKWING_LAIR,               @FACTION_ANY);
