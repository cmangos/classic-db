-- Remove non-instaciable maps wrongly added in https://github.com/cmangos/classic-db/commit/64994b04b20bc3b1757ae8b0568bcccc268879b5
DELETE FROM instance_template WHERE map IN (369, 449, 450);
