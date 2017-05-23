
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `Entry`='15334';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `Entry`='15726';
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `Entry`='15589';

REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
('26404', '1', '15904', '0'),
('26404', '1', '15910', '0');
