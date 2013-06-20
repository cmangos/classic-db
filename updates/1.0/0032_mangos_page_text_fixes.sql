-- ************************************************************
-- Sequel Pro SQL dump
-- Version 3408
--
-- http://www.sequelpro.com/
-- http://code.google.com/p/sequel-pro/
--
-- Host: 127.0.0.1 (MySQL 5.5.17)
-- Database: mangos
-- ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

/*!40000 ALTER TABLE `page_text` DISABLE KEYS */;
-- Fixes text for object 2223 (The Collector's Schedule)
-- Adds linebreaks to three rows in page_text.
UPDATE page_text SET text='Below is the process and schedule of Defias gold collection from the mines of Elwynn to our headquarters in Westfall.\n\nCollection Schedule:\n\nSunday: 12:30pm\nWednesday: 12:30pm\n\nBy each specified day, gold gained from the Elwynn mines will be gathered at the Brackwell pumpkin patch.  The agent in charge of these gatherings, \"The Collector,\" will be known by the engraved ring he possesses.  A ring I gave him. ' WHERE entry=79;
UPDATE page_text SET text='A party from Defias headquarters will contact the Collector, after which he will transfer the gathered gold.\n\nBe sure this process is performed without fail and with utmost discretion.  The Collector is responsible for the transfer of gold, but ultimately it is the responsibility of each member of the Defias Brotherhood to ensure that his role is acted out with attention and discipline. ' WHERE entry=250;
UPDATE page_text SET text='Remember, my brothers, we were once proud craftsmen.  We\'ll perform our current duties with the same precision we used in our past trade.\n\n-EVC ' WHERE entry=251;
-- Corrects the linebreaks in text of book item 15847 (Quel'Thalas Registry)
UPDATE page_text SET text='Entry Date: Unknown\n\nName: Nathanos Marris, Human Ranger Lord of Lordaeron.\n\nEntry:\n\nKael\'thas Sunstrider\'s dissention in regards to my decision to allow Nathanos Marris into the order is noted. It should also be noted that Nathanos - although a human - is one of the most gifted rangers I have ever had the pleasure of training.\n\n(continued)' WHERE entry=2431;
UPDATE page_text SET text='For millennia we have isolated ourselves from outsiders. I will be the first among us to admit that mistakes were made in the past. Humans should have never been exposed to magic. I will not deny this but I will not condemn us to this guarded existance for the blunders of our predecessors. There is much that a coexistance between the Quel\'dorei and other races of this world can bring. We must practice tolerance.\n\n(continued)' WHERE entry=2471;
UPDATE page_text SET text='It is with these words, then, that I deny Kael\'s request in regards to Nathanos Marris. He will prove to be an invaluable ally. Mark my words.\n\nSigned,\n\nSylvanas Windrunner\nRanger General of Silvermoon' WHERE entry=2472;
-- Corrects text of item 3252 (Deathstalker Report) by adding linebreaks.
UPDATE page_text SET text='Deathstalker Mission Report\r\n\r\nAgents: Rane Yorick, Quinn Yorick, Erland McKree\r\n\r\nPrimary mission: perform reconnaissance through northern silverpine, and determine threat levels of wildlife and Scourge. ' WHERE entry=380;
UPDATE page_text SET text='Agents commenced sweep, finding significant worg presence.  Recommend hunting squads dispatched to reduce this threat.\r\n\r\nUndead gnolls were found at the farm steading dubbed The Dead Field.  Their purpose at the farm is not known, though their movements and level of readiness suggest imminent military action.  In the time they were observed, no notable leaders were found among the gnolls.  It is assumed they await the arrival of leadership or reinforcements. ' WHERE entry=381;
UPDATE page_text SET text='Continuing the sweep, our agents were detained at Ivar\'s farm.  Ivar, most of his family and his workers had succumbed to the Scourge and become its minions.\r\n\r\nOur agents were attacked and although successful in defeating their ambushers, they sustained serious injuries, particularly agent Quinn. ' WHERE entry=382;
UPDATE page_text SET text='A defensive position was taken in Ivar\'s old house, and while Rane kept watch for future attacks, Erland continued the reconnaissance mission.\r\n\r\nErland was then pinned by Worgs in a northern orchard, only escaping with the aid of another Forsaken agent.  That agent is the bearer of this report. ' WHERE entry=383;
UPDATE page_text SET text='It should be noted here that this report bearer was instrumental in not only the success of our mission, but also in the defeat of Ivar the Foul, the rescue of Erland, and the deliverance of this report.\r\n\r\nWe extend our gratitude, and recommend that command acknowledges this individual with awards befitting such meritorious conduct as was displayed in the field.\r\n\r\n-Deathstalker Rane Yorick,\r\nMission Leader ' WHERE entry=386;
/*!40000 ALTER TABLE `page_text` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;