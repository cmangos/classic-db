-- Remove remaining cases where `creature`.`modelid` != 0
-- Obsolte column can be removed! (Implementing probability column seems questionable)
UPDATE `creature` SET `modelid` = 0 WHERE `guid` IN (
590017, -- 10000 (white ram)
590018, -- 10000 (white ram)
46384, -- 10045 (whisp, same as template)
590019, -- 5586 (brown cat)
590016, -- 12932 (forced female farmer) https://youtu.be/leXm6STvSKM?t=71 which was used to create this data so maybe other models there can also randomize!
590015, -- 12933 (forced female farmer)
190106, -- 15247 (forced male orcish frostwolf emissary)
190107 -- 15250 (forced male orcish frostwolf emissary)
);

