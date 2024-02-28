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

