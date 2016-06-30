-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Giu 30, 2016 alle 16:03
-- Versione del server: 5.1.71-community-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_carminatibartoli`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Assistance_Service`
--

CREATE TABLE IF NOT EXISTS `Assistance_Service` (
  `Servizio` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Descrizione` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Servizio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `Assistance_Service`
--

INSERT INTO `Assistance_Service` (`Servizio`, `Descrizione`) VALUES
('Ricarica', 'RicaricaPiu ti permette ad ogni operazione di ricarica da 6E o da12E di avere oltre al traffico telefonico un bundle di MMS valido verso tutti da consumare entro i 30 giorni successivi alla ricarica.Dal 3 02 2014 la nuova offerta RicaricaPiu si arricchisce di nuovi tagli di Ricarica!La conferma dell avvenuta attivazione del bundle per Ricarica ti sara comunicata tramite SMSRicaricaPiu 17E RicaricaPiu 22E Per maggiori dettagli e'' informazioni'),
('LoSai', 'LoSai di TIM ti informa sulle chiamate ricevute mentre hai il telefonino spento non raggiungibile quando sei occupato in un altra conversazione e negli altri casi in cui non e stato possibile contattarti.'),
('ChiamaOra', 'ChiamaOra di TIM ti permette di sapere sempre quando e il momento giusto per richiamare chi stai cercando.<br>Quando la persona che stai chiamando al momento non puo rispondere perche ha il telefonino spento fuori copertura o e occupata in un altra conversazione il servizio ChiamaOra di TIM ti consente di ricevere un SMS di avviso oppure di prenotare la richiamata automatica non appena la persona cercata torna contattabile');

-- --------------------------------------------------------

--
-- Struttura della tabella `SL_Service`
--

CREATE TABLE IF NOT EXISTS `SL_Service` (
  `Servizio` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Costo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Immagine` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Descrizione` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Servizio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `SL_Service`
--

INSERT INTO `SL_Service` (`Servizio`, `Costo`, `Immagine`, `Descrizione`) VALUES
('Tim Music', '7,99', 'timmusic', 'Con l abbonamento TIMmusic ascolti in streaming illimitato  ad alta qualita e senza pubblicita a 7,99E al mese IVA inclusa.<br>Ed ora se sei un cliente ADSL e Fibra residenziale Flat TIM che aderisce all offerta per la prima volta puoi fruire del primo mese di abbonamento al prezzo scontato di 1,99E '),
('Tim Vision', '9,99', 'timvision', 'Con TIMvision trovi oltre 8000 titoli tra film, serie Tv, cartoni e molto altro, sempre on demand e senza interruzioni pubblicitarie.<br>Nella sezione Abbonamento una ricca offerta di film di vario genere, le stagioni complete delle migliori serie TV, cartoni e programmi per ragazzi documentari, reportage e concerti.<br>In TIMtoday accedi ad una ricca selezione di news.<br>In Videostore, noleggi per 48 ore o acquisti scegliendo tra tra le migliori novita cinematografiche, con comodo addebito in fattura della linea fissa TIM o con carta di credito.<br>Abbonati a TIMvision per goderti un grande spettacolo. Puoi vedere oltre 8.000 titoli tra cartoni, cinema, serie TV, documentari e gli ultimi 7 giorni di LA7 e LA7d. <br>Se ti abboni entro il 30 06 2016, il primo mese e gratis e poi 5E/mese.'),
('Tim Games', '2,99', 'timgames', 'Entra nel fantastico mondo dei giochi con TIMgames e scopri le ultime novita, i giochi preferiti dagli altri, i consigli della redazione, le promozioni e le offerte disponibili. Sparatutto, Sport estremi, i migliori Classici e molto altro ancora.');

-- --------------------------------------------------------

--
-- Struttura della tabella `SmartPhone`
--

CREATE TABLE IF NOT EXISTS `SmartPhone` (
  `Marca` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Modello` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Costo` decimal(6,2) NOT NULL,
  `Promozione` tinyint(1) NOT NULL,
  `Foto` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Descrizioni` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Caratteristiche` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Marca`,`Modello`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `SmartPhone`
--

INSERT INTO `SmartPhone` (`Marca`, `Modello`, `Costo`, `Promozione`, `Foto`, `Descrizioni`, `Caratteristiche`) VALUES
('LG', 'G5 16GB', '659.00', 0, 'LGG5', 'Il nuovo LG G5 e uno nuovo tipo di smartphone che supera tutti i limiti, con un design modulare completamete in metallo che rivoluziona i canoni di design. Espandi le funzioni, interagisci con gli innovativi LG Friends e prova un esperienza smartphone realmente innovativa. La rivoluzione di G5 continua con la doppia fotocamera grandangolare, che cattura piu di quanto i tuoi occhi riescano a vedere. ', '<b>Tecnologia</b>4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100<br><b>Connettivita</b> Wi-Fi - Bluetooth - Infrarosso - USB tipo - NFC<br><b>GPS</b>Integrato<br><b>Display</b>5.3pollici 16 Milioni colori Touch<br><b>Fotocamera</b>2 Fotocamere Posteriori da 16 Mpxl con flash e Fotocamera frontale 8 Mpx<br><b>Memoria Interna</b>16GB Slot Memory Card Micro SD fino a 2TB<br><b>Processore</b>Processore Snapdragon 820 QuadCore 2.15 GHz - 4G LTE<br><b>Formato SIM</b>Nano<br><b>Video</b>Video Recorder e Playback<br><b>Musica</b>MP3 Player<br><b>In dotazione </b>149,4x73,9x7,3 mm<br><b>Peso</b>159 gr.'),
('LG', 'G5 32GB', '699.00', 0, 'LGG5', 'Il nuovo LG G5 e uno nuovo tipo di smartphone che supera tutti i limiti, con un design modulare completamete in metallo che rivoluziona i canoni di design. Espandi le funzioni, interagisci con gli innovativi LG Friends e prova un esperienza smartphone realmente innovativa. La rivoluzione di G5 continua con la doppia fotocamera grandangolare, che cattura piu di quanto i tuoi occhi riescano a vedere. \r\n', '<b>Tecnologia</b>4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100<br><b>Connettivita</b> Wi-Fi - Bluetooth - Infrarosso - USB tipo - NFC<br><b>GPS</b>Integrato<br><b>Display</b>5.3pollici 16 Milioni colori Touch<br><b>Fotocamera</b>2 Fotocamere Posteriori da 16 Mpxl con flash e Fotocamera frontale 8 Mpx<br><b>Memoria Interna</b>16GB Slot Memory Card Micro SD fino a 2TB<br><b>Processore</b>Processore Snapdragon 820 QuadCore 2.15 GHz - 4G LTE<br><b>Formato SIM</b>Nano<br><b>Video</b>Video Recorder e Playback<br><b>Musica</b>MP3 Player<br><b>In dotazione </b>149,4x73,9x7,3 mm<br><b>Peso</b>159 gr.'),
('LG', 'G5 64GB', '759.00', 0, 'LGG5', 'Il nuovo LG G5 e uno nuovo tipo di smartphone che supera tutti i limiti, con un design modulare completamete in metallo che rivoluziona i canoni di design. Espandi le funzioni, interagisci con gli innovativi LG Friends e prova un esperienza smartphone realmente innovativa. La rivoluzione di G5 continua con la doppia fotocamera grandangolare, che cattura piu di quanto i tuoi occhi riescano a vedere. \r\n', '<b>Tecnologia</b>4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100<br><b>Connettivita</b> Wi-Fi - Bluetooth - Infrarosso - USB tipo - NFC<br><b>GPS</b>Integrato<br><b>Display</b>5.3pollici 16 Milioni colori Touch<br><b>Fotocamera</b>2 Fotocamere Posteriori da 16 Mpxl con flash e Fotocamera frontale 8 Mpx<br><b>Memoria Interna</b>16GB Slot Memory Card Micro SD fino a 2TB<br><b>Processore</b>Processore Snapdragon 820 QuadCore 2.15 GHz - 4G LTE<br><b>Formato SIM</b>Nano<br><b>Video</b>Video Recorder e Playback<br><b>Musica</b>MP3 Player<br><b>In dotazione </b>149,4x73,9x7,3 mm<br><b>Peso</b>159 gr.'),
('LG', 'G5 128GB', '769.00', 1, 'LGG5', 'Il nuovo LG G5 e uno nuovo tipo di smartphone che supera tutti i limiti, con un design modulare completamete in metallo che rivoluziona i canoni di design. Espandi le funzioni, interagisci con gli innovativi LG Friends e prova un esperienza smartphone realmente innovativa. La rivoluzione di G5 continua con la doppia fotocamera grandangolare, che cattura piu di quanto i tuoi occhi riescano a vedere. \r\n', '<b>Tecnologia</b>4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100<br><b>Connettivita</b> Wi-Fi - Bluetooth - Infrarosso - USB tipo - NFC<br><b>GPS</b>Integrato<br><b>Display</b>5.3pollici 16 Milioni colori Touch<br><b>Fotocamera</b>2 Fotocamere Posteriori da 16 Mpxl con flash e Fotocamera frontale 8 Mpx<br><b>Memoria Interna</b>16GB Slot Memory Card Micro SD fino a 2TB<br><b>Processore</b>Processore Snapdragon 820 QuadCore 2.15 GHz - 4G LTE<br><b>Formato SIM</b>Nano<br><b>Video</b>Video Recorder e Playback<br><b>Musica</b>MP3 Player<br><b>In dotazione </b>149,4x73,9x7,3 mm<br><b>Peso</b>159 gr.'),
('Huawei', 'P9 16GB', '559.00', 0, 'HuaweiP9', 'Huawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed e disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.', '<b>Tecnologia</b>Abilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz<br><b>Connettivita</b>4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type C, NFC<br><b>GPS</b>GPS Integrato<br><b>Display</b>Display IPS Full HD da 5.2<br><b>Fotocamera</b>Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual tone Frontale 8MP, f/2.4<br><b>Memoria Interna</b>16GB<br><b>Processore</b>Processore Kirin 955  Octa Core (4x2,5 GHz + 4x1,8 GHz)<br><b>In dotazione</b>'),
('Huawei', 'P9 32GB', '599.00', 0, 'HuaweiP9', 'Huawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed e disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.\r\n', '<b>Tecnologia</b>Abilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz<br><b>Connettivita</b>4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type C, NFC<br><b>GPS</b>GPS Integrato<br><b>Display</b>Display IPS Full HD da 5.2<br><b>Fotocamera</b>Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual tone Frontale 8MP, f/2.4<br><b>Memoria Interna</b>16GB<br><b>Processore</b>Processore Kirin 955  Octa Core (4x2,5 GHz + 4x1,8 GHz)<br><b>In dotazione</b>'),
('Huawei', 'P9 64GB', '609.00', 1, 'HuaweiP9', 'Huawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed e disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.\r\n', '<b>Tecnologia</b>Abilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz<br><b>Connettivita</b>4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type C, NFC<br><b>GPS</b>GPS Integrato<br><b>Display</b>Display IPS Full HD da 5.2<br><b>Fotocamera</b>Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual tone Frontale 8MP, f/2.4<br><b>Memoria Interna</b>16GB<br><b>Processore</b>Processore Kirin 955  Octa Core (4x2,5 GHz + 4x1,8 GHz)<br><b>In dotazione</b>'),
('Huawei', 'P9 128GB', '699.00', 0, 'HuaweiP9', 'Huawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed e disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.', '<b>Tecnologia</b>Abilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz<br><b>Connettivita</b>4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type C, NFC<br><b>GPS</b>GPS Integrato<br><b>Display</b>Display IPS Full HD da 5.2<br><b>Fotocamera</b>Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual tone Frontale 8MP, f/2.4<br><b>Memoria Interna</b>16GB<br><b>Processore</b>Processore Kirin 955  Octa Core (4x2,5 GHz + 4x1,8 GHz)<br><b>In dotazione</b>'),
('Apple', 'SE 16GB', '489.90', 1, 'iPhoneSE', 'Il telefono da 4 piu potente di sempre. iPhone SE riprende un design compatto di grande successo aggiungendovi due fotocamere evolute e una potenza di elaborazione incredibile.Disegnato per stare comodamente in mano e risultare piacevole al tatto, grazie alla finitura satinata del guscio in alluminio microsabbiato.', '<b>Display</b>Retina Multi-Touch widescreen retroilluminato LED da 4 (diagonale) 1136x640 pixel a 326 ppi<br><b>Processore</b>Chip A9 con architettura a 64 bit, Coprocessore di movimento M9 integrato<br><b>Fotocamera</b>Fotocamera iSight da 12 megapixel<br><b>Videocamera</b>FaceTime HD<br><b>Sensori</b>Sensore di impronte digitali Touch ID<br><b>Connettivita</b>4G LTE<br><b>Sistema Operativo</b>iOS 9 e iCloud<br><b>Colori</b>Disponibile in Space Grey, Silver, Gold e Rose Gold<br><b>Memoria Interna</b>16GB<br>'),
('Apple', 'SE 32GB', '559.90', 0, 'iPhoneSE', 'Il telefono da 4 piu potente di sempre. iPhone SE riprende un design compatto di grande successo aggiungendovi due fotocamere evolute e una potenza di elaborazione incredibile.Disegnato per stare comodamente in mano e risultare piacevole al tatto, grazie alla finitura satinata del guscio in alluminio microsabbiato.\r\n', '<b>Display</b>Retina Multi-Touch widescreen retroilluminato LED da 4 (diagonale) 1136x640 pixel a 326 ppi<br><b>Processore</b>Chip A9 con architettura a 64 bit, Coprocessore di movimento M9 integrato<br><b>Fotocamera</b>Fotocamera iSight da 12 megapixel<br><b>Videocamera</b>FaceTime HD<br><b>Sensori</b>Sensore di impronte digitali Touch ID<br><b>Connettivita</b>4G LTE<br><b>Sistema Operativo</b>iOS 9 e iCloud<br><b>Colori</b>Disponibile in Space Grey, Silver, Gold e Rose Gold<br><b>Memoria Interna</b>16GB<br>'),
('Apple', 'SE 64GB', '599.90', 0, 'iPhoneSE', 'Il telefono da 4 piu potente di sempre. iPhone SE riprende un design compatto di grande successo aggiungendovi due fotocamere evolute e una potenza di elaborazione incredibile.Disegnato per stare comodamente in mano e risultare piacevole al tatto, grazie alla finitura satinata del guscio in alluminio microsabbiato.\r\n', '<b>Display</b>Retina Multi-Touch widescreen retroilluminato LED da 4 (diagonale) 1136x640 pixel a 326 ppi<br><b>Processore</b>Chip A9 con architettura a 64 bit, Coprocessore di movimento M9 integrato<br><b>Fotocamera</b>Fotocamera iSight da 12 megapixel<br><b>Videocamera</b>FaceTime HD<br><b>Sensori</b>Sensore di impronte digitali Touch ID<br><b>Connettivita</b>4G LTE<br><b>Sistema Operativo</b>iOS 9 e iCloud<br><b>Colori</b>Disponibile in Space Grey, Silver, Gold e Rose Gold<br><b>Memoria Interna</b>16GB<br>'),
('Apple', 'SE 128GB', '659.90', 0, 'iPhoneSE', 'Il telefono da 4 piu potente di sempre. iPhone SE riprende un design compatto di grande successo aggiungendovi due fotocamere evolute e una potenza di elaborazione incredibile.Disegnato per stare comodamente in mano e risultare piacevole al tatto, grazie alla finitura satinata del guscio in alluminio microsabbiato.', '<b>Display</b>Retina Multi-Touch widescreen retroilluminato LED da 4 (diagonale) 1136x640 pixel a 326 ppi<br><b>Processore</b>Chip A9 con architettura a 64 bit, Coprocessore di movimento M9 integrato<br><b>Fotocamera</b>Fotocamera iSight da 12 megapixel<br><b>Videocamera</b>FaceTime HD<br><b>Sensori</b>Sensore di impronte digitali Touch ID<br><b>Connettivita</b>4G LTE<br><b>Sistema Operativo</b>iOS 9 e iCloud<br><b>Colori</b>Disponibile in Space Grey, Silver, Gold e Rose Gold<br><b>Memoria Interna</b>16GB<br>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
