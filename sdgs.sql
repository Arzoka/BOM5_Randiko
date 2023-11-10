-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Oct 30, 2023 at 07:44 PM
-- Server version: 8.1.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MYSQL_DATABASE`
--

-- --------------------------------------------------------

--
-- Table structure for table `sdgs`
--

CREATE TABLE `sdgs` (
  `ID` int NOT NULL,
  `title` tinytext NOT NULL,
  `subtitle` tinytext NOT NULL,
  `description` text NOT NULL,
  `link` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `icon` text NOT NULL,
  `color` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sdgs`
--

INSERT INTO `sdgs` (`ID`, `title`, `subtitle`, `description`, `link`, `icon`, `color`) VALUES
(1, 'Geen armoede', 'Uitbannen van alle vormen van (extreme) armoede', 'Einde aan de armoede gaat over het verminderen van alle vormen van armoede. De SDG-agenda vraagt speciale aandacht voor sociale bescherming, gelijke economische rechten en weerbaarheid van arme en kwetsbare groepen. Omdat armoede in Nederland er anders uit ziet dan armoede in de armste landen van de wereld is dit voor Nederland aangepast. Nederland richt zich op het voorkomen en tegengaan van armoede en problematische schulden, met speciale aandacht voor kinderen die in armoede leven.', 'https://sdggame.nl/geenarmoede', 'https://sdggame.nl/images/sdg1.svg', '#EB3323'),
(2, 'Geen honger', 'Einde aan honger, zorgen voor voedselzekerheid en duurzame landbouw', 'Einde aan de honger gaat over het doel honger te beëindigen, voedselzekerheid te garanderen en betere voeding en duurzame landbouw te stimuleren. Omdat in Nederland ondervoeding en voedselonzekerheid niet vaak voorkomen, kijken we ook wel naar obesitas, overvoeding en hoe wij voedsel produceren: hoe duurzaam doen we dat? En welk impact heeft dat op de leefomgeving. Ook voedselverspilling tegengaan hoort hierbij.', 'https://sdggame.nl/geenhonger', 'https://sdggame.nl/images/sdg2.svg', '#E4AC3E'),
(3, 'Goede gezondheid en welzijn', 'Gezondheidszorg voor iedereen', 'Goede gezondheid en welzijn gaat over dat iedereen de kans heeft in zo goed mogelijke gezondheid te leven, door behandeling van ziektes en psychische problemen en voorkomen dat mensen te vroeg sterven. Dit doel gaat ook over het tegengaan van verslaving ( alcohol, drugs, roken) en ook over het voorkomen van verkeersdoden.', 'https://sdggame.nl/goedegezondheid', 'https://sdggame.nl/images/sdg3.svg', '#479d2c'),
(4, 'Kwaliteitsonderwijs', 'Inclusief, gelijkwaardig en kwalitatief onderwijs voor iedereen', 'Kwaliteitsonderwijs gaat over dat iedereen toegang heeft tot goed onderwijs. Passende en scholing is voor alle leeftijdsgroepen en in alle levensfasen van belang, van kleuter- en basisonderwijs tot beroeps- en hoger onderwijs, en daarna via ‘leven lang ontwikkelen’. Vaardigheden van leerlingen worden voor een groot deel bepaald door de kwaliteit van het aangeboden onderwijs. Bovendien zorgt onderwijs ervoor dat de bevolking nu en in de toekomst over de goede vaardigheden beschikt om te functioneren in een kennismaatschappij en goed kunnen meedraaien in de maatschappij.', 'https://sdggame.nl/kwaliteitsonderwijs', 'https://sdggame.nl/images/sdg4.svg', '#c82c2d'),
(5, 'Gendergelijkheid', 'Gelijke rechten voor mannen en vrouwen en empowerment van vrouwen en meisjes', 'Mannen en vrouwen moeten gelijk behandeld worden en een gelijkwaardige plek in de samenleving hebben. Hiervoor moet een eind komen aan achterstand van vooral vrouwen en meisjes op allerlei gebieden, waaronder dwang en geweld, werk en zorg, maar ook invloed in het openbare leven.', 'https://sdggame.nl/gendergelijkheid', 'https://sdggame.nl/images/sdg5.svg', '#EC5128'),
(6, 'Schoon water en sanitair', 'Schoon water en sanitaire voorzieningen voor iedereen', 'De toegang tot drinkwater en sanitair en duurzaam beheer van water vormen de kern van SDG 6. Vrijwel iedereen in Nederland heeft toegang tot schoon drinkwater en goed sanitair. Drinkwater moet betaalbaar blijven voor ons allemaal. De vraag naar drinkwater is tijdens de afgelopen droge en hete zomers gestegen. Ook de groeiende bevolking en de behoefte aan meer woningen, en daarmee meer aansluitingen, zorgen voor meer vraag. Omdat er weinig mogelijkheden zijn om meer water te winnen, concurreren drinkwaterbedrijven steeds vaker met de belangen van natuur, landbouw en klimaatactie. Als er vaker droge zomers vaker voorkomen, kan de leveringszekerheid van drinkwater op termijn onder druk komen.', 'https://sdggame.nl/schoonwater', 'https://sdggame.nl/images/sdg6.svg', '#65ABD1'),
(7, 'Betaalbare en duurzame energie', 'Toegang tot betaalbare en duurzame energie voor iedereen', 'Energiezekerheid, verduurzaming en energie-efficiëntie zijn erg belangrijk. Steeds minder mensen hebben de mogelijkheid om voldoende energie te gebruiken omdat het heel duur is geworden. In koude winters gebruiken veel mensen daarom extra dikke kleding en dekens om lekker warm te blijven en de kachel een beetje kouder te zetten.', 'https://sdggame.nl/energie', 'https://sdggame.nl/images/sdg7.svg', '#862A35'),
(8, 'Eerlijk werk en economische groei', 'Inclusieve, economische groei, werkgelegenheid en fatsoenlijk werk voor iedereen', 'Economische groei, met aandacht voor innovatie, ondernemerschap en milieu is erg belangrijk voor een duurzame wereld. Economische activiteiten kunnen op lange termijn schadelijk zijn voor de brede welvaart, de leefomgeving en het welbevinden van de mensen en dieren. Voor de productie van goederen en diensten is input nodig van kapitaal, arbeid en grondstoffen. Worden deze duurzaam en productief ingezet? En hoe worden de winsten en inkomens verdeeld worden over burgers en bedrijven?\r\n', 'https://sdggame.nl/eerlijkwerk', 'https://sdggame.nl/images/sdg8.svg', '#862A35'),
(9, 'Industrie, innovatie en infrastructuur', 'Infrastructuur voor duurzame industrialisatie', 'Infrastructuur en mobiliteit, industrie en duurzame bedrijvigheid, en kennis en innovatie zijn belangrijk in een duurzame wereld. Een toegankelijke infrastructuur en mobiliteit voor iedereen. Mobiliteit en infrastructuur helpen mensen om van plek a naar plek b te komen, bijvoorbeeld naar het werk, contacten te onderhouden en vrije tijd in te vullen met sport, muziek of theater. Als mensen lang in de file staan dan is dat nadelig voor het milieu en wanneer mensen te hard rijden dan gaat het niet goed met de verkeersveiligheid en het milieu.', 'https://sdggame.nl/industrie', 'https://sdggame.nl/images/sdg9.svg', '#DF7845'),
(10, 'Ongelijkheid verminderen', 'Meer sociale en economische gelijkheid versterkt de sociale situatie binnen een land, en verbetert daarmee de kansen voor en inclusie van iedereen.', 'Sociale samenhang is onmisbaar voor het goed functioneren van een samenleving. De sociale infrastructuur – familie, buren, vrienden, verenigingen en hulp en ondersteuning – vormt hiervan de basis. Mensen moeten mee kunnen doen, zodat ze zich deel van een groep kunnen voelen. Dat geld ook voor mensen uit andere landen die hier komen werken.', 'https://sdggame.nl/ongelijkheidverminderen', 'https://sdggame.nl/images/sdg10.svg', '#D84670'),
(11, 'Duurzame steden en gemeenschappen', 'Maak steden veilig, veerkrachtig en duurzaam', 'Er zijn weinig betaalbare woningen beschikbaar, hoe houden we de lokale leefomgeving veilig, betaalbaar, toegankelijk en duurzaam? Hoeveel ruimte is er per persoon beschikbaar en hoe gaat het met de afvalverwerking en overheidsuitgaven voor het milieu. Een schone en veilige leefomgeving in het dorp, de wijk of de stad is daarbij erg belangrijk.', 'https://sdggame.nl/duurzamesteden', 'https://sdggame.nl/images/sdg11.svg', '#E6B355'),
(12, 'Verantwoorde consumptie en productie', 'Hoe gaan we efficiënter gebruikmaken van grondstoffen, meer hergebruiken en afval verminderen?', 'Bedrijven, overheid en consumenten worden aangespoord om bewuste keuzes te maken om de druk op het milieu te verlagen en de minder afhankelijk te zijn van grondstoffen. Zo beperken we de negatieve gevolgen van ons consumptie voor volgende generaties.', 'https://sdggame.nl/verantwoordeconsumptie', 'https://sdggame.nl/images/sdg12.svg', '#D68E46'),
(13, 'Klimaatactie', 'Hoe gaan we klimaatverandering tegen?', 'Door doelen te stellen voor weerbaarheid en klimaatadaptatie, nationaal klimaatbeleid, en middelen om bewustwording en draagvlak te creëren voor de klimaatmaatregelen. Met het Deltaprogramma, dat Nederland moet beschermen tegen overstromingen en de gevolgen van extreem weer, kunnen we belangrijke stappen maken. Ook de vermindering van uitstoot van broeikasgassen, waarbij energiebesparing en hernieuwbare energie spelen een belangrijke rol.', 'https://sdggame.nl/klimaatactie', 'https://sdggame.nl/images/sdg13.svg', '#608D42'),
(14, 'Leven in het water', 'Beschermen en duurzaam gebruik van de oceanen en zeeën.', 'Zeewater bedekt ongeveer driekwart van de planeet en vormt het grootste ecosysteem ter wereld. De toenemende negatieve effecten van klimaatverandering, overbevissing en vervuiling vormen een bedreiging voor de waarde van het ecosysteem zelf en voor het gebruik dat ervan gemaakt wordt. Aandacht voor de waterkwaliteit en de duurzaamheid van de visserij in de Noordzee zijn voor ons erg belangrijk.', 'https://sdggame.nl/leveninhetwater', 'https://sdggame.nl/images/sdg14.svg', '#4981D2'),
(15, 'Leven op het land', 'Beschermen van ecosystemen, bossen en biodiversiteit', 'Bescherming en herstel van ecosystemen en biodiversiteit versterken de weerbaarheid tegen toenemende bevolkingsdruk, intensivering van landgebruik en klimaatverandering. Gezonde ecosystemen zijn erg belangrijk zoals de beschikbaarheid van schoon water en schone lucht, de aanwezigheid van insecten voor bestuiving en de mogelijkheden voor ontspanning, recreatie en educatie.', 'https://sdggame.nl/levenophetland', 'https://sdggame.nl/images/sdg15.svg', '#87C05F'),
(16, 'Vrede, justitie en sterke publieke diensten', 'Bevorderen van veiligheid, publieke diensten en recht voor iedereen', 'Voor veiligheid en vrede moeten alle vormen van geweld en de sterfte die daarvan het gevolg is verminderd worden. Speciale aandacht gaat uit naar geweld tegen kinderen en naar georganiseerde misdaad. In een veilige samenleving heeft iedereen toegang tot het rechtssysteem, en wordt corruptie tegengegaan. Het ervaren van onveiligheid, met gevoelens van kwetsbaarheid en onzekerheid kunnen een grote impact hebben op het persoonlijke leven.', 'https://sdggame.nl/vrede', 'https://sdggame.nl/images/sdg16.svg', '#305592'),
(17, 'Partnerschap om doelstelling te bereiken', 'Versterken van het mondiaal partnerschap om doelen te bereiken', 'Dit vraagt om samenhangend beleid, een meewerkende omgeving en de bereidheid tot aangaan van nieuwe partnerschappen. Met wie werk je samen en waarom? Het gaat er bij dit doel om welk effect ontwikkelingen in Nederland op andere landen hebben.', 'https://sdggame.nl/partnerschap', 'https://sdggame.nl/images/sdg17.svg', '#2F2C8B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sdgs`
--
ALTER TABLE `sdgs`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
