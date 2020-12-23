
DELETE FROM `creature` WHERE (`guid` IN ( '93795', '93797', '93796', '93794', '93787', '93789', '93788', '93786', '93803', '93805', '93804', '93802', '93771', '93779', '93811', '93773', '93772', '93781', '93813', '93780', '93812', '93770', '93778', '93810', '93763', '93765', '93764', '93762', '93819', '93821', '93820', '93818' ));

DELETE FROM `pool_creature` WHERE (`guid` IN ( '93795', '93797', '93796', '93794', '93787', '93789', '93788', '93786', '93803', '93805', '93804', '93802', '93771', '93779', '93811', '93773', '93772', '93781', '93813', '93780', '93812', '93770', '93778', '93810', '93763', '93765', '93764', '93762', '93819', '93821', '93820', '93818' ));
DELETE FROM `pool_creature` WHERE (`guid` IN ( '93766', '93767', '93768', '93769', '93774', '93775', '93776', '93777', '93782', '93783', '93784', '93785', '93790', '93791', '93792', '93793', '93798', '93799', '93800', '93801', '93806', '93807', '93808', '93809', '93814', '93815', '93816', '93817', '93822', '93823', '93824', '93825' ));

DELETE FROM `pool_template` WHERE (`entry` IN ( '25373', '25374', '25375', '25376', '25377', '25378', '25379', '25380', '25381', '25382', '25383', '25384', '25385', '25386', '25387', '25388', '25389', '25390', '25391', '25392', '25393', '25394', '25395', '25396', '25397', '25398', '25399', '25400', '25401', '25402', '25403', '25404', '25405', '25406' ));

UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93766');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93767');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93768');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93769');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93774');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93775');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93776');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93777');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93782');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93783');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93784');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93785');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93790');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93791');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93792');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93793');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93798');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93799');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93800');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93801');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93806');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93807');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93808');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93809');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93814');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93815');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93816');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93817');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93822');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93823');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93824');
UPDATE `creature` SET `id` = '0', `curhealth` = '1' WHERE (`guid` = '93825');

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
('93766', '15246'), ('93766', '15250'),
('93767', '15246'), ('93767', '15250'),
('93768', '15246'), ('93768', '15250'),
('93769', '15246'), ('93769', '15250'),
('93774', '15246'), ('93774', '15250'),
('93775', '15246'), ('93775', '15250'),
('93776', '15246'), ('93776', '15250'),
('93777', '15246'), ('93777', '15250'),
('93782', '15246'), ('93782', '15250'),
('93783', '15246'), ('93783', '15250'),
('93784', '15246'), ('93784', '15250'),
('93785', '15246'), ('93785', '15250'),
('93790', '15246'), ('93790', '15250'),
('93791', '15246'), ('93791', '15250'),
('93792', '15246'), ('93792', '15250'),
('93793', '15246'), ('93793', '15250'),
('93798', '15246'), ('93798', '15250'),
('93799', '15246'), ('93799', '15250'),
('93800', '15246'), ('93800', '15250'),
('93801', '15246'), ('93801', '15250'),
('93806', '15246'), ('93806', '15250'),
('93807', '15246'), ('93807', '15250'),
('93808', '15246'), ('93808', '15250'),
('93809', '15246'), ('93809', '15250'),
('93814', '15246'), ('93814', '15250'),
('93815', '15246'), ('93815', '15250'),
('93816', '15246'), ('93816', '15250'),
('93817', '15246'), ('93817', '15250'),
('93822', '15246'), ('93822', '15250'),
('93823', '15246'), ('93823', '15250'),
('93824', '15246'), ('93824', '15250'),
('93825', '15246'), ('93825', '15250');
