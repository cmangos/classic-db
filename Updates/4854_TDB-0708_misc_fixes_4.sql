-- Anvilrage Reservist 8901 should not yield exp
-- https://youtu.be/QoEwUz7Bdq8?si=kIj1bxR3OvSfqQpz&t=1890
-- https://github.com/cmangos/issues/wiki/CreatureStaticFlags
UPDATE `creature_template` SET `StaticFlags1` = `StaticFlags1`|2 WHERE `entry` = 8901;

