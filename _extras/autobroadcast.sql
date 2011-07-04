--
-- Table `autobroadcast` required for autobroadcasting
--

DROP TABLE IF EXISTS `autobroadcast`;
CREATE TABLE `autobroadcast` (
  `id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `next` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Broadcast entries
--

INSERT INTO `autobroadcast`(`id`,`text`,`next`) VALUES
(0, 'last nextid', 1), -- DO NOT CHANGE THIS
(1,'Bitte beachtet die Regeln auf www.vanilla-wow.org',1);
--(2,'AutOBROADCAST - testovaci zprava 2, nasleduje 3.',3),
--(3,'AutOBROADCAST - testovaci zprava 3, nasleduje 4.',4),
--(4,'AutOBROADCAST - testovaci zprava 4, nasleduje 5.',5),
--(5,'AutOBROADCAST - testovaci zprava 5, nasleduje 1.',1);

DELETE FROM `mangos_string` WHERE entry = 1300;
INSERT INTO `mangos_string` VALUES
(1300,'|c0000ff00[Broadcast]:|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
