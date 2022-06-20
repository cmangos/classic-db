-- Dont Remove Darkmoon Set Item on Quest Abort
UPDATE `quest_template` SET `SrcItemId` = 0, `SrcItemCount` = 0 WHERE `entry` IN (7907,7927,7928,7929); -- ReqItemId1, 1

UPDATE creature_template SET `CallForHelp` = 1 WHERE `entry` IN ( -- CREATURE_EXTRA_FLAG_NO_CALL_ASSIST prev used now doing it by setting callforhelp low
-- 230
8901 -- Anvilrage Reservist 8901
);

-- REMOVE CREATURE_EXTRA_FLAG_MMAP_FORCE_DISABLE
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`&~16384 WHERE `entry` IN (
14482, -- Xorothian Imp
14483  -- Dread Guard
);

-- CREATURE_EXTRA_FLAG_ACTIVE
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|4096 WHERE `entry` IN (
550, -- Defias Messenger (Path)
12352, -- Scarlet Trooper (Path)
12339  -- Demetria (Path)
);
