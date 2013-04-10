-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-nt-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema movieList
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ movieList;
USE movieList;

--
-- Table structure for table `movieList`.`actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE `actors` (
  `firstname` varchar(50) default NULL,
  `lastname` varchar(50) default NULL,
  `status` varchar(50) default NULL,
  `dob` datetime default NULL,
  `actor_id` int(10) NOT NULL auto_increment,
  PRIMARY KEY  (`actor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movieList`.`actors`
--

/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` (`firstname`,`lastname`,`status`,`dob`,`actor_id`) VALUES 
 ('Tim','Roth','active','1961-05-14 00:00:00',1),
 ('Jimmy','Stewart','active','1908-05-20 00:00:00',2),
 ('Natalie','Wood','active','1938-07-20 00:00:00',3),
 ('Cary','Grant','active','1904-01-18 00:00:00',4),
 ('Meryl','Streep','active','1949-06-22 00:00:00',5),
 ('Brad','Pitt','active','1963-12-16 00:00:00',6),
 ('Julie','Andrews','active','1935-10-01 00:00:00',7),
 ('Chevy','Chase','active','1943-10-08 00:00:00',8),
 ('Randy','Quaid','active','1950-10-01 00:00:00',9),
 ('Julie','Haggerty','active','1955-06-15 00:00:00',10),
 ('Bill','Murray','active','1950-09-21 00:00:00',11),
 ('Tom','Hanks','active','1956-07-09 00:00:00',12),
 ('Kevin','Costner','active','1955-01-18 00:00:00',13),
 ('Dustin','Hoffman','active','1937-08-08 00:00:00',14),
 ('Matt','Damon','active','1970-10-08 00:00:00',15),
 ('Mel','Brooks','active','1926-06-28 00:00:00',16),
 ('Barbara','Streisand','active','1942-04-24 00:00:00',17),
 ('Julia','Roberts','active','1967-10-28 00:00:00',18),
 ('Ben','Stiller','active','1965-11-30 00:00:00',19);
INSERT INTO `actors` (`firstname`,`lastname`,`status`,`dob`,`actor_id`) VALUES 
 ('Jason','Biggs','active','1978-05-12 00:00:00',20),
 ('Russell','Crowe','active','1964-04-07 00:00:00',21),
 ('Will','Smith','active','1968-09-25 00:00:00',22),
 ('Cuba','Gooding','active','1968-01-02 00:00:00',23),
 ('Nicholas','Cage','active','1964-01-07 00:00:00',24),
 ('John','Candy','active','1951-10-31 00:00:00',25);
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;


--
-- Table structure for table `movieList`.`movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `name` varchar(50) default NULL,
  `genre` varchar(50) default NULL,
  `actor_id` int(10) default NULL,
  `status` varchar(50) default NULL,
  `summary` longtext,
  `release_year` varchar(4) default NULL,
  `runtime` int(10) default NULL,
  `user_rating` int(10) default NULL,
  `gross` int(10) default NULL,
  `movie_id` int(10) NOT NULL auto_increment,
  PRIMARY KEY  (`movie_id`),
  KEY `actor_id` (`actor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movieList`.`movies`
--

/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` (`name`,`genre`,`actor_id`,`status`,`summary`,`release_year`,`runtime`,`user_rating`,`gross`,`movie_id`) VALUES 
 ('Snatch','comedy',6,'active','Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers, and supposedly Jewish jewelers fight to track down a priceless stolen diamond.','2000',104,7,2000000,30),
 ('Airplane!','comedy',10,'active','An airplane crew takes ill. Surely the only person capable of landing the plane is an ex-pilot afraid to fly. But don\'t call him Shirley.','1980',88,8,800000,1),
 ('All the Presidents Men','true story',14,'active','Reporters Woodward and Bernstein uncover the details of the Watergate scandal that leads to President Nixon\'s resignation.','1976',138,8,76890655,2),
 ('American Pie','comedy',20,'active','Four teenage boys enter a pact to lose their virginity by prom night.','1999',95,7,78467880,3),
 ('Beautiful Mind, A','drama',21,'active','After a brilliant but asocial mathematician accepts secret work in cryptography, his life takes a turn to the nightmarish.','2001',136,8,78986530,4),
 ('Dances With Wolves','drama',13,'active','Lt. John Dunbar, exiled to a remote western Civil War outpost, befriends wolves and Indians, making him an intolerable aberration in the military.','1990',183,8,40000000,5);
INSERT INTO `movies` (`name`,`genre`,`actor_id`,`status`,`summary`,`release_year`,`runtime`,`user_rating`,`gross`,`movie_id`) VALUES 
 ('Erin Brokovich','true story',18,'active','An unemployed single mother becomes a legal assistant and almost single-handedly brings down a California power company accused of polluting a city\'s water supply.','2000',130,7,3000000,6),
 ('Forrest Gump','comedy',12,'active','Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny, eludes him.','1994',142,8,500000000,7),
 ('Funny Girl','musical',17,'active','The life of comedienne Fannie Brice, from her early days in the Jewish slums of the Lower East Side.','1968',151,7,10000000,8),
 ('Good Will Hunting','drama',15,'active','Will Hunting, a janitor at MIT, has a gift for mathematics which is discovered, and a psychologist tries to help him with his gift and the rest of his life.','1997',126,7,43000000,9),
 ('Groundhog Day','comedy',11,'active','A weather man is reluctantly sent to cover a story about a weather forecasting \"rat\" (as he calls it).','1993',101,7,5500000,10),
 ('History of the World: Part I','comedy',16,'active','From the dawn of man to the distant future, mankind\'s evolution (or lack thereof) is traced. Often ridiculous but never serious.','1981',92,6,30000000,11);
INSERT INTO `movies` (`name`,`genre`,`actor_id`,`status`,`summary`,`release_year`,`runtime`,`user_rating`,`gross`,`movie_id`) VALUES 
 ('It\'s a Wonderful Life','drama',2,'active','An angel helps a compassionate but despairingly frustrated businessman by showing what life would had been like if he never existed.','1946',130,9,44000000,12),
 ('Meet the Parents ','comedy',19,'active','Male nurse Greg Focker meets his girlfriend\'s parents before proposing, but her suspicious father is every date\'s worst nightmare.','2000',108,7,12900000,13),
 ('Men in Black ','comedy',22,'active','Two men who keep an eye on aliens in New York City must try to save the world after the aliens threaten to blow it up.','1997',98,7,90000000,14),
 ('Men in Black II','comedy',22,'active','Agent J (Will Smith) needs help so he is sent to find Agent K (Tommy Lee Jones) and restore his memory.','2000',88,6,40000000,15),
 ('Men of Honor','drama',23,'active','The story of Carl Brashear, the first African American, then also the first amputee, US Navy Diver and the man who trained him.','2000',129,7,1000000,16),
 ('Mystic Pizza','comedy',18,'active','Three teenage girls come of age while working at a pizza parlor in Mystic Connecticut.','1988',104,6,3000000,17);
INSERT INTO `movies` (`name`,`genre`,`actor_id`,`status`,`summary`,`release_year`,`runtime`,`user_rating`,`gross`,`movie_id`) VALUES 
 ('North By Northwest','drama',4,'active','An advertising executive is mistaken for a spy and is pursued across the country while he looks for a way to survive.','1959',136,9,3000000,18),
 ('Out of Africa ','drama',5,'active','In 20th century colonial Kenya, a Danish baroness/plantation owner has a passionate but ultimately doomed love affair with a free-sprited big-game hunter.','1985',150,7,2300000,19),
 ('Raising Arizona','comedy',24,'active','When a childless couple of an ex-con and an ex-cop decide to help themselves to one of another family\'s quintupelets, their lives get more complicated than they anticipated.','1987',94,8,5000000,20),
 ('Rear Window','mystery',2,'active','A wheelchair bound photographer spies on his neighbours from his apartment window and becomes convinced one of them has committed murder.','1954',112,9,4900000,21),
 ('Reservoir Dogs','comedy',1,'active','Five total strangers teamed up for the perfect crime. But something went wrong. Something got messed up. One of the men is the rat, an infiltrator working for the cops. But who?','1992',99,8,2300000,22),
 ('Sound of Music, The','musical',7,'active','A woman leaves an Austrian convent to become a governess to a Naval officer widower.','1965',174,8,4500000,23);
INSERT INTO `movies` (`name`,`genre`,`actor_id`,`status`,`summary`,`release_year`,`runtime`,`user_rating`,`gross`,`movie_id`) VALUES 
 ('Uncle Buck','comedy',25,'active','Bachelor and all round slob, Buck, babysits his brother\'s rebellious teenage daughter and her cute younger brother and sister.','1989',100,6,5000000,24),
 ('Vacation ','comedy',8,'active','The Griswold family\'s cross-country drive to the WallyWorld theme park proves to be much more arduous than they ever anticipated.','1983',98,7,2000000,25),
 ('Vertigo','mystery',2,'active','Complex story about a San Francisco detective and his psychological troubles with fear of heights and obsession over a woman.','1958',128,9,67000000,26),
 ('Wag the Dog','comedy',14,'active','Before elections, a spin-doctor and a Hollywood producer join efforts to \"fabricate\" a war in order to cover-up a presidential sex scandal.','1997',97,7,2300000,27),
 ('West Side Story ','musical',3,'active','Musical about two youngsters from rival NYC gangs who fall in love.','1961',151,8,100000000,28),
 ('Young Frankenstein','comedy',16,'active','Dr. Frankenstein\'s grandson, after years of living down the family reputation, inherits granddad\'s castle and repeats the experiments.','1974',108,8,25000,29);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;


--
-- Table structure for table `movieList`.`users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  PRIMARY KEY  (`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movieList`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_id`,`username`,`password`) VALUES 
 (1,'mickey','mouse2'),
 (2,'u','p2');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
