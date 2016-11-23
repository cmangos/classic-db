-- Fixed return lines for GO 21004 (Monument to Grom Hellscream) in Ashenvale
-- Thanks @Phatcat for reporting
UPDATE `page_text` SET `text` = 'Here lies Grommash Hellscream, Chieftain of the Warsong Clan$B$BIn many ways, the curse of our people began and ended with Grom.$BHis name meant \'giants heart\' in our ancient tongue. He earned that \nname a hundred-fold as he stood alone before the demon Mannoroth$B- and won our freedom with his blood.$B$BLok\'Tar ogar, big brother. May the Warsong never fade.$B$B-Thrall, Warchief of the Horde' WHERE `entry` = 2211;
