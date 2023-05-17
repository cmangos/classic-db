-- Add missing name for creature_spawn_data_template 9989
-- Based on https://github.com/cmangos/wotlk-db/commit/921fed38847283aa6fa74caa2657d5df636d293a#diff-45c17ac7e0c4904a54f1e4531852807297287b41d17e462b35df8dec1a3f6d0dR65
UPDATE creature_spawn_data_template SET Name = '- SPAWN FLAG RUN, Relayid 30510' WHERE Entry = 9989;

