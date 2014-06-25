-- Fixed combat distance of many raid encounters. Tank were previously forced to tank those bosses by being "inside" them
-- Source: Trinity Core DB

UPDATE `creature_model_info` SET `bounding_radius` = 17, `combat_reach` = 18 WHERE `modelid` = 8570; -- onyxia
UPDATE `creature_model_info` SET `bounding_radius` = 16, `combat_reach` = 17 WHERE `modelid` = 11380; -- nefarian
UPDATE `creature_model_info` SET `bounding_radius` = 15, `combat_reach` = 17 WHERE `modelid` = 11460; -- azuregos
UPDATE `creature_model_info` SET `bounding_radius` = 12, `combat_reach` = 13 WHERE `modelid` = 13992; -- vaelastrasz
UPDATE `creature_model_info` SET `bounding_radius` = 0.63, `combat_reach` = 18 WHERE `modelid` = 15363; -- taerar
UPDATE `creature_model_info` SET `bounding_radius` = 0.63, `combat_reach` = 18 WHERE `modelid` = 15364; -- ysondre
UPDATE `creature_model_info` SET `bounding_radius` = 0.63, `combat_reach` = 18 WHERE `modelid` = 15365; -- lethon
UPDATE `creature_model_info` SET `bounding_radius` = 1.8, `combat_reach` = 18 WHERE `modelid` = 15366; -- emeriss
UPDATE `creature_model_info` SET `bounding_radius` = 0.0235, `combat_reach` = 14 WHERE `modelid` = 15556; -- eye of c'thun
UPDATE `creature_model_info` SET `bounding_radius` = 14, `combat_reach` = 25 WHERE `modelid` = 15786; -- c'thun
UPDATE `creature_model_info` SET `bounding_radius` = 0.77, `combat_reach` = 22 WHERE `modelid` = 16033; -- sapphiron
