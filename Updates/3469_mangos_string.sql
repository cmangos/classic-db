-- Add pool_template description to .gobject tar output
-- requires https://github.com/cmangos/mangos-tbc/commit/67b2dfa2658dbbfad206c1d50bdecfa8fa7e5b93
UPDATE mangos_string SET content_default='Part of pool %u (%s)' WHERE entry=1145; -- "Part of pool %u"
UPDATE mangos_string SET content_default='Part of pool %u (%s), top pool %u (%s)' WHERE entry=1146; -- "Part of pool %u, top pool %u"
