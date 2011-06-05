DROP TABLE IF EXISTS creature_linking_template;
CREATE TABLE creature_linking_template (
  entry INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'creature_template.entry of the slave mob that is linked',
  map MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'Id of map of the mobs',
  master_entry INT(10) UNSIGNED NOT NULL COMMENT 'master to trigger events',
  flag MEDIUMINT(8) UNSIGNED NOT NULL COMMENT 'flag - describing what should happen when',
  PRIMARY KEY (entry, map)
)
ENGINE = InnoDB;

/* Example behaviour, MOLTEN CORE
 *
 *  TEST WITHOUT SD2, as SD2 has parts of the same functionality already
 *
 * Currently implemented flags
 *   FLAG_AGGRO_ON_AGGRO            = 0x0001,    1
 *   FLAG_TO_AGGRO_ON_AGGRO         = 0x0002,    2
 *   FLAG_RESPAWN_ON_EVADE          = 0x0004,    4
 *   FLAG_TO_RESPAWN_ON_EVADE       = 0x0008,    8
 *   FLAG_DESPAWN_ON_DEATH          = 0x0010,   16
 *   FLAG_SELFKILL_ON_DEATH         = 0x0020,   32
 *   FLAG_RESPAWN_ON_DEATH          = 0x0040,   64
 *   FLAG_RESPAWN_ON_RESPAWN        = 0x0080,  128
 *   FLAG_DESPAWN_ON_RESPAWN        = 0x0100,  256
 *   FLAG_FOLLOW                    = 0x0200,  512
 *   FLAG_CANT_SPAWN_IF_BOSS_DEAD   = 0x0400, 1024
 *   FLAG_CANT_SPAWN_IF_BOSS_ALIVE  = 0x0800, 2048
 */

TRUNCATE creature_linking_template;
INSERT INTO creature_linking_template VALUES
(12119, 409, 12118, 521), -- Lucifron
(11661, 409, 12259, 7), -- Gehennas
(11673, 409, 11982, 1024), -- Magmadar, testing, prevent respawning of his dogs
(12099, 409, 12057, 2), -- Garr (testing)
(11672, 409, 11988, 39), -- Golemagg
(11666, 409, 12057, 7), -- Garr- testing, despawn other npcs in area
(11662, 409, 12098, 135), -- Sulfuron (test)
(11658, 409, 448, 256); -- testing..
