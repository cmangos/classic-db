-- Fix for Captain's Documents
-- https://www.wowhead.com/wotlk/item=5882/captains-documents
UPDATE `page_text` SET `text` = 'The Bleeding Sparrow: Manifest$B$B(20) barrels rum.  Destination: Theramore$B(50) sacks flour. Destination: Theramore$B(2) crates assorted gnome tools.  Destination: Ratchet$B(30) bolts cotton cloth.  Destination: Theramore$B(4) crates spices.  Destination: Theramore$B(3) passengers.  Destination: Theramore' WHERE `entry` = 527;
UPDATE `page_text` SET `text` = 'Captain,$B$BI wish you fortune in your journeys. Regrettably, fortune did not favor our first abduction attempt.$B$BWhen our team made contact with the target in the Stormwind/Ironforge tunnels, they found only a decoy.  It appears he showed more wisdom than we accredited him.$B$BBut our second plan is already in motion.  Defias agents are prepared to intercept the target as he approaches Theramore.  Soon Stormwind will feel our bite all too keenly..$B$B-M' WHERE `entry` = 547;
UPDATE `page_text` SET `next_page` = 547 WHERE `entry` = 527;

-- Fix for Wrynn's Decree
-- https://www.wowhead.com/wotlk/item=11368/wrynns-decree
UPDATE `page_text` SET `text` = 'Solomon,$B$BThe carrier of this decree has been granted official status as an acting deputy of Stormwind. You may use $g him:her; to find proof of the black dragonflight''s involvement with the Blackrock orcs. Should such proof be found, this deputy shall return said proof to me in Stormwind, at which time I shall release the order to dispense sufficient military force to aid Lakeshire.$B$BRegards,$B$B$B$BHighlord Bolvar Fordragon' WHERE `entry` = 1471;

-- Fix for Mariner's Log
-- https://www.wowhead.com/wotlk/item=34838/mariners-log
UPDATE `page_text` SET `text` = 'First Watch, Seven Bells$BCedric found in rum closet again.  Disciplined.', `next_page` = 3045 WHERE `entry` = 3044;

INSERT INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(3045, 'First Watch, Eight Bells$BWatches changed.  All is well.', 3046),
(3046, 'Middle Watch, One Bell$BCedric found attempting to break into Captain\'s wine cabinet.  Disciplined.', 3047),
(3047, 'Middle Watch, Two Bells$BCedric climbed rigging, became tangled and fell.  Attended by ship\'s surgeon.  Sent below to sober up.', 3049),
(3049, 'Middle Watch, Four Bells$BBottle of rum found in Cedric\'s pants.  Disciplined.', 3050),
(3050, 'Middle Watch, Five Bells$BCedric\'s clothes found.  Cedric found separately.  Cedric disciplined.', 3051),
(3051, 'Middle Watch, Six Bells$BCedric singing loudly.  Woke Captain.  Cedric disciplined by Captain.', 3052),
(3052, 'Middle Watch, Eight Bells$BWatches changed.  All quiet.  Two men sent to locate Cedric.$B', 3053),
(3053, 'Morning Watch, One Bell$BFire in Captain\'s quarters.  All hands roused.  Throwing powder overboard. ', 0);

-- Table `dbscripts_on_creature_movement` contain unused script, id 1006.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1011.
-- `guid` = 49223 AND `id` = 1837; has custom path in tbc using this.
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1006,1011); -- most rp is more complex than this, can be readded in the future if needed.

