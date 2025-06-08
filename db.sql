-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema mechanic
--

CREATE DATABASE IF NOT EXISTS mechanic;
USE mechanic;

--
-- Definition of table `manageract`
--

DROP TABLE IF EXISTS `manageract`;
CREATE TABLE `manageract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `tlmail` varchar(45) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  `tkey` varchar(45) DEFAULT NULL,
  `sfemail` varchar(45) DEFAULT NULL,
  `mkey` varchar(45) NOT NULL,
  `phash` varchar(200) DEFAULT NULL,
  `ahash` varchar(200) DEFAULT NULL,
  `id_copy1` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manageract`
--

/*!40000 ALTER TABLE `manageract` DISABLE KEYS */;
/*!40000 ALTER TABLE `manageract` ENABLE KEYS */;


--
-- Definition of table `old`
--

DROP TABLE IF EXISTS `old`;
CREATE TABLE `old` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usermail` varchar(45) DEFAULT NULL,
  `drivermail` varchar(45) DEFAULT NULL,
  `dmobile` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `age` longtext,
  `address` varchar(45) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `old`
--

/*!40000 ALTER TABLE `old` DISABLE KEYS */;
INSERT INTO `old` (`id`,`usermail`,`drivermail`,`dmobile`,`location`,`age`,`address`,`team`) VALUES 
 (1,'venkat@gmail.com','venkat@gmail.com','8454656588','tambaram','24','chennai','ambulance'),
 (6,'venkat@gmail.com','thala@gmail.com','8454656588','tnagar','26','chennai',NULL),
 (7,'venkat@gmail.com','thala@gmail.com','8454656588','tnagar','26','chennai','mechanic'),
 (8,'anba@gmail.com','vinayagapharmacy@gmail.com','9600129159','Near Guindy railway station ','No: 60/5, Bharathi St, Near Railway Station, Race View Colony, Guindy, Chennai, Tamil Nadu 600032','','pharmacy'),
 (9,'anba@gmail.com','bharathpetyroleum@gmail.com','1800 22 4355','Near avadi market','439W VMF, NH 205, Bhaktavatsala Puram, Avadi, Tamil Nadu 600054','','petrol'),
 (10,'anba@gmail.com','karthickroshan9360@gmail.com','8190815256','near station','101/2,near post ofice, tambaram,chennai','','mechanic'),
 (11,'anba@gmail.com','karthickroshan9360@gmail.com','8190815256','near station','101/2,near post ofice, tambaram,chennai','','mechanic'),
 (12,'anba@gmail.com','rmpautos@gmail.com','91 450 4383109','near Arch','Dr Anandrao Nair Road Opp Reserve Bank Of India, Tambaram,600045,India','','mechanic');
/*!40000 ALTER TABLE `old` ENABLE KEYS */;


--
-- Definition of table `staffreg`
--

DROP TABLE IF EXISTS `staffreg`;
CREATE TABLE `staffreg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL DEFAULT '',
  `mobile` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `cpassword` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffreg`
--

/*!40000 ALTER TABLE `staffreg` DISABLE KEYS */;
INSERT INTO `staffreg` (`id`,`name`,`email`,`mobile`,`password`,`cpassword`,`image`,`team`) VALUES 
 (1,'venkat','venkat@gmail.com','8907890789','111','111','l3.png',NULL),
 (2,'anwar','anba@gmail.com','4545455454','1234','1234','Screenshot 2022-07-21 185516.png',NULL);
/*!40000 ALTER TABLE `staffreg` ENABLE KEYS */;


--
-- Definition of table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL DEFAULT '',
  `mobile` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `id_copy1` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;


--
-- Definition of table `tlfile`
--

DROP TABLE IF EXISTS `tlfile`;
CREATE TABLE `tlfile` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `mobile` text,
  `filename` text,
  `filetype` text,
  `filesize` text,
  `filecontent` text,
  `encrypt` text,
  `decrypt` text,
  `mail` text,
  `dob` text,
  `location` text,
  `aathor` text,
  `age` text,
  `address` text,
  `license` text,
  `status` text,
  `team` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tlfile`
--

/*!40000 ALTER TABLE `tlfile` DISABLE KEYS */;
INSERT INTO `tlfile` (`id`,`name`,`mobile`,`filename`,`filetype`,`filesize`,`filecontent`,`encrypt`,`decrypt`,`mail`,`dob`,`location`,`aathor`,`age`,`address`,`license`,`status`,`team`) VALUES 
 (1,'K.C.Municipality Hospital','7418316440','','','','','','','kchospital@gmail.com','Avadi','Near RCM School','Open 24 Hours','4th,street,138,kamaraj nagar 4th main rd,near RCM School,periyar nagar,avadi,tamilnadu 600071','','YES','APPROVED','Hospital'),
 (2,'SS Hyderabad Biriyani','044 4010 4010','','','','','','','sshyderabad@gamil.com','Avadi','Near Avadi Champ H,O','11am-11pm','No 19/A,HVF Tank Rd,Avadi,Tamilnadu 600054','','YES','APPROVED','Hotel'),
 (3,'Indian Oil','9687211555','','','','','','','indianoil@gamil.com','Avadi','Near Ponnu Super Bazar','5am-10pm','SH 55, Lock No 1076/121 Avadi Poonamallee High, Market, near Avadi, Tamil Nadu 600054','','YES','APPROVED','Petrol Bunk'),
 (4,'Go Mechanic-Avadi MCC','8398970970','','','','','','','gomechanic@gmail.com','Avadi','Near optima apartment','8am-8pm','Bharathi Nagar, Selva Nagar, Avadi, Tamil Nadu 600071','','YES','APPROVED','Mechanic'),
 (5,'MedPlus','040 6700 6700','','','','','','','medplus@gmail.com','Avadi','Near Gangai Amman Temple','11am-11pm','D No 265, 258/1A, 1st Main Rd, Nehru Colony, Kamaraj Nagar, Avadi, Tamil Nadu 600071','','YES','APPROVED','Pharmacy'),
 (6,'Fire Service','044 2655 5202','','','','','','','firestation@gmail.com','Avadi','Near ssi church','Open 24 Hours','4464+GHF, Vivekananda Nagar, TNHB Mig V Block, Avadi, Tamil Nadu 600071','','YES','APPROVED','Fire Station'),
 (7,'SS Pandian Hotel','8947849302','','','','','','','sspandianhotel@gmail.com','Avadi','Near avadi bus terminus','11am-11pm','3/9,SH 55,Jaya Nagar,porur,Chennai,Tamilnadu 600116','','YES','APPROVED','Hotel'),
 (8,'Sri Sudharshanam Hospital','044 2655 0355','','','','','','','srisudharshanamhospital@gmail.com','Avadi','Near ponnusamy hotel','Open 24 Hours','6/pc2-1,TNHB Rd,Avadi,Tamilnadu 600054','','YES','APPROVED','Hospital'),
 (9,'Apollo Pharmacy','044 7665 8996','','','','','','','apollopharmacy@gmail.com','Avadi','Near reliance trends','11am-11pm','Plot No, 64, Vanagaram-Ambattur Rd, Ayanambakkam, Ambattur Industrial Estate, Chennai, Tamil Nadu 600095','','YES','APPROVED','Pharmacy'),
 (10,'Bharath Petroleum','1800 22 4355','','','','','','','bharathpetyroleum@gmail.com','Avadi','Near avadi market','5am-10pm','439W+VMF, NH 205, Bhaktavatsala Puram, Avadi, Tamil Nadu 600054','','YES','APPROVED','Petrol Bunk'),
 (11,'Indian petroleum limited ','1800245656','','','','','','','Indianpetroleum@gmail.com','Avadi','Near avadi railway station ','24hours','34,thiru street, thandalam road, avadi, chennai 600054','','YES','APPROVED ','petrol Bunk '),
 (12,'Go Mechanic','8398970970','','','','','','','Gomechanic@gmail.com','Guindy','Near SIDCO industrial estate ','9am - 9 pm','E 10, 3rd Phase, Thiru Vi Ka Industrial Estate, SIDCO Industrial Estate, Guindy, Chennai, Tamil Nadu\n Metro, https://indiapl.com/tamil-nadu/gomechanic-817015','','YES','APPROVED','MECHANIC'),
 (13,'MyTVS Guindy','18002660301','','','','','','','Mytvs@gmail.com','Guindy','Near SIDCO industrial estate ','9am - 7 pm','B 5, Guindy Industrial Estate, SIDCO Industrial Estate, Guindy, Chennai, Tamil Nadu 600032','','YES','APPROVED','Mechanic '),
 (14,'Mahendra Automobiles\n\n','9444279888','','','','','','','Mahendra@gmail.com','Guindy','Near Anna University ','9 am - 9 pm','24, Old No. 34, Vandikaran St, Maduvinkarai, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Mechanic'),
 (15,'ITC Grand Chola\n\n','4422200000','','','','','','','reservations@itchotels.in','Guindy','Near ST Thomas mount','11am - 11 pm','63, Anna Salai, Little Mount, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','HOTEL'),
 (16,'Lemon Tree Hotel, Chennai\n\n','4444232323','','','','','','','Lemontree@gmail.com','Guindy','Near Tidel Park,Tata consultancy services','Open 24 hrs','72, Sardar Patel Rd, Venkta Puram, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','HOTEL'),
 (17,'Pine Tree Signature\n\n','4422201110','','','','','','','pinetreenhotels@gmail.com','Guindy','Near Anna University','Open 24 hrs','3, Sardar Patel Rd, Little Mount, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','HOTEL'),
 (18,'AYUSH Hospital\n\n','6384492720','','','','','','','ayushhospital@gmail.com','Guindy','Near Guindy National park','Open 24 hrs','82, Five Furlong Rd, Maduvinkarai, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Hospital'),
 (19,'Dr. A. Ramachandranâ€™s Diabetes Hospitals\n\n','4442162003','','','','','','','ramachandrandiab@gmail.com','Guindy','Near Guindy metro','Open 24 hrs','Anna Salai, 110, Mount Rd, Opposite ITC Grand Chola Hotel, Little Mount, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Hospital'),
 (20,'Apollo pharmacy\n\n','4423644757','','','','','','','appollomedicines@gmail.com','Guindy','Near Church','8:30 am - 11 pm','No.20, Vannier St, Guindy Industrial Estate, KK Nagar West, Nesapakkam, Chennai, Tamil Nadu 600078\n\n','','YES','APPROVED ','Pharmacy'),
 (21,'VINAYAGA PHARMACY\n\n','9600129159','','','','','','','vinayagapharmacy@gmail.com','Guindy','Near Guindy railway station ','9am - 11 pm','No: 60/5, Bharathi St, Near Railway Station, Race View Colony, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Pharmacy'),
 (22,'HP Petrol pump\n\n','9551648885','','','','','','','hppetrols@gmail.com','Guindy','Near flyover','open 24 hrs','Guindy Flyover, Race View Colony, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Petrol bunk'),
 (23,'Bharath Petroleum\n\n','1800224344','','','','','','','bharatpetroleum@gmail.com','Guindy','Near ST Thomas mount','Open 24 hrs','Sardar Patel Rd, Little Mount, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Petrol bunk '),
 (24,'David Ambulance Service & Eden Undertakers\n\n','9840031540','','','','','','','davidambulance@gmail.com','Guindy','Near railway Station ','Open 24 hrs','No 41, Sardar Patel Road, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Ambulance'),
 (25,'CSI hospital ','9693929286','','','','','','','CSihospital@gmail.com','Guindy','Near Guindy metro','24hours','27/80, pillayar nagar, Guindy, chennai, Tamilnadu 600032','','YES','APPROVED ','Hospital'),
 (26,'CSSI hotel','8989797969','','','','','','','CSSI hospital@gmail.com','Guindy','Near Guindy metro ','24hours',' Patel Rd,Mount, Guindy, Chennai, Tamil Nadu 600032','','YES','APPROVED','Hotel'),
 (27,'Peshawri','4422200000','','','','','','','peshwari@gmail.com','Guindy','Near Guindy bus stop','11:00AM - 9:00PM','ITC Grand Chola Hotel, Little Mount, Guindy, Chennai, Tamil Nadu 600032','','YES','APPROVED','Hotel'),
 (28,'Ottimo Cucina Italiana','4422200000','','','','','','','ottimacucina@gmail.com','Guindy','Near Annaisalai','11:00AM - 9:00PM','ITC Grand Chola, 63, Anna Salai, Guindy, Chennai, Tamil Nadu 600032','','YES','APPROVED','Hotel'),
 (29,'A3 Family Restaurant','9962288810','','','','','','','A3family@gmail.com','Guindy','Near Saravana stores','11:00AM - 9:00PM','Saravana Stores, No.25, 1st Street, opposite to Porur, Somasundaram Avenue, Sakthi Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Hotel'),
 (30,'Suresh Mechanic','99405 31619','','','','','','','suresh@gmail.com','porur','near by signal','10am-10pm','33/25, 9th Street, RE Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Mechanic'),
 (31,'Swastik Vel Bike Mechanic','9952399524','','','','','','','swastik@gmail.com','porur','near by MGR fly over','9am-10:30pm','3-4, Ganesh Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Mechanic'),
 (32,' Sri Ramachandra Hosptial','044 2476 8027','','','','','','','ramachandra@gmail.com','porur','near by Bypass','Opens 24hrs','No.1, Ramachandra Nagar, Sri Ramachandra Nagar, Chennai, Tamil Nadu 600116','','YES','APPROVED','Hospital'),
 (33,'St Joseph Hospital','044 2482 7580','','','','','','','joseph@gmail.com','porur','near by tower','Opens 24hrs','1,2,3,4,5,6, Mount Poonamallee Rd, Theru Veedhi Amman Koil Streets, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Hospital'),
 (34,'Apollo pharmacy','044 2482 6272','','','','','','','apollo@gmail.com','porur','near by highway ','8am-11pm','no 14 shop no, 1 & 2, Mount Poonamallee Rd, Bharathi Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Pharmacy'),
 (35,'Thulasi Medicals','044 2476 1899','','','','','','','thulasi@gmail.com','porur','near by govt hospital','8am-11pm','4/5, Mount Poonamallee Rd, Devi Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Pharmacy'),
 (36,'Grand Residence','044 2476 7611','','','','','','','grand@gmail.com','porur','near vadaplani road','Opens 24hrs','No.85, 86, Arcot Rd, Karambakkam, Rajeswari Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Hotel'),
 (37,'V7 Hotel','044 2476 4777','','','','','','','v7@gmail.com','porur','near murugan temple','Opens 24hrs','3, 191, Mount Poonamallee Rd, Venugopal Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Hotel'),
 (38,'Senthur ambulance service','098401 39943','','','','','','','senthur@gmail.com','porur','near bus stop','Opens 24hrs','3,Maduram Nagar,porur','','YES','APPROVED','Ambulance'),
 (39,'Bharat petrol bank','9882468987','','','','','','','bharat@gmail.com','porur','near kk bus stop','Opens 24hrs','SH 113, Ramanatheshwarar Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Petrol Bunk'),
 (40,'Sri Ramajeyam Two Weelar Works','095007 88920','','','','','','','ramajeyam@gmail.com','Kanchipuram','near bus stop','8am-9pm','NGO Nagar, Thaiyar Kullam, Kanchipuram, Tamil Nadu 631502','','YES','APPROVED','Mechanic'),
 (41,'TS Auto Mechanic Center','095009 81943','','','','','','','ts@gmail.com','Kanchipuram','near periya kovil','9am-10pm','Thamlath Street, Kanchipuram, Tamil Nadu 631502','','YES','APPROVED','Mechanic'),
 (42,'Hotel SSK Grand','081225 00500','','','','','','','ssk@gmail.com','Kanchipuram','near high school','Opens 24hrs','No 70, Annai Indira Gandhi Salai, Nellukara St, near Sri Chirtra Guptar Temple, Kanchipuram, Tamil Nadu 631502','','YES','APPROVED','Hotel'),
 (43,'RMK hotel','044 2722 5250','','','','','','','rmk@gmail.com','Kanchipuram','near dd road','Opens 24hrs','487, Gandhi Rd, Ennaikaran, Kanchipuram, Tamil Nadu 631502','','YES','APPROVED','Hotel'),
 (44,'C S I Hospital','988878909','','','','','','','csi@gmail.com','Kanchipuram','near bus stop','Opens 24hrs','RPM4+WVW, Hospital Road, Ennaikaran, Kanchipuram, Tamil Nadu 631501','','YES','APPROVED','Hospital'),
 (45,'K.H Hospital','044 2723 7373','','','','','','','kh@gmail.com','Kanchipuram','near avan junction','Opens 24hrs','3b, Sheikpet Nadu St, Ennaikaran, Kanchipuram, Tamil Nadu 631501','','YES','APPROVED','Hospital'),
 (46,'Dhana Pharmacy','044 2476 4777','','','','','','','dhana@gmail.com','Kanchipuram','near bus stop','8am to 9:30pm','RM9V+GG2, Vedachalam Nagar Extension, Gem Nagar, Kanchipuram, Tamil Nadu 631502','','YES','APPROVED','Pharmacy'),
 (47,'Apollo Pharmacy Kanchipuram Gandhi Road','044 2723 3435','','','','','','','apollo@gmail.com','Kanchipuram','near tambaram highway','8am to 10pm','No 277, Gandhi Rd, Ennaikaran, Kanchipuram, Tamil Nadu 631501','','YES','APPROVED','Pharmacy'),
 (48,'Joseph Ambulance Service Kanchipuram','095976 44726','','','','','','','Joseph@gmail.com','Kanchipuram','near kh hospital','Opens 24hrs','No: 11A, Railway Road, Opp to Head Post Office, Kanchipuram, Tamil Nadu 631501','','YES','APPROVED','Ambulance'),
 (49,'Indra Petrol & Disel Agency','9884209876','','','','','','','indra@gmail.com','Kanchipuram','near bus stop','Opens 24hrs','RM9V+23V, Vandavasi Rd, Vedachalam Nagar Extension, Gem Nagar, Kanchipuram, Tamil Nadu 631502','','YES','APPROVED','Petrol Bunk'),
 (50,'Holiday Inn Motels','044 6604 6604','','','','','','','holidyinntam@gmail.com','Tambaram','near Subway Restaurant','24 hrs Open','plot number 131,S 39/1,sivashanmugam pillai street, taluk, Tambaram, Chennai, Tamil Nadu 600045\n','','YES','APPROVED','Hotel'),
 (51,'Indian Oil Petrol Bunk\n','094441 16743','','','','','','','indoilpb@gmail.com','Tambaram','near Railway Station','24 hrs Open','Durai Sami, 10, Duraiswamy Reddy St, near Passport Office, Tambaram West, Tambaram, Chennai, Tamil Nadu 600045','','YES','APPROVED','Petrol Bunk'),
 (52,'KKM Hospital','0124 620 1165','','','','','','','kkmhospitalandclinic@gmail.com','Tambaram','next to Police Station','24','# 6/14, VVS Iyer St, Ganapathipuram, East Tambaram, Tambaram, Chennai, Tamil Nadu 600059','','YES','APPROVED','Hospital'),
 (53,'Topaz Hotels','2226230388','','','','','','','tpzhtl@gmail.com','Tambaram','near KFC','8am - 9pm','Plot No. 6, 1st Main Road, Grand Southern Trunk Rd, near SONY Showroom, Sanatorium, Jayanagar, Chennai, Tamil Nadu 600047','','YES','APPROVED','Hotel'),
 (54,'Mechanic Mani','0992 6023875','','','','','','','mani2893@gmail.com','Tambaram','opp to Aavin milk shop','24hrs','No. 123, PDA Tower, Mudichur Service Rd, near IOB Bank, near Railway Station, Tambaram, Chennai, Tamil Nadu 600045','','YES','APPROVED','Mechanic'),
 (55,'RMP Auto work shop','91 450 4383109','','','','','','','rmpautos@gmail.com','Tambaram','near Arch','11am - 11pm','Dr Anandrao Nair Road Opp Reserve Bank Of India, Tambaram,600045,India','','YES','APPROVED','Mechanic'),
 (56,'Fasthealth Ambulance Service',' 450 43831','','','','','','','fst653@gmail.com','Tambaram','next to Dells showroom','24hrs','Oriental House, J Tata Road Next To Samrat Hotel, Tambaram,Chennai,600045,India','','YES','APPROVED','Ambulance'),
 (57,'Medlifeline Hospitals','91 16 53996435','','','','','','','medlifeline@gmail.com','Tambaram','near  KTG School','24hrs','Grand Southern Trunk Rd, Tambaram East, Tambaram, Chennai, Tamil Nadu 600045','','YES','APPROVED','Pharmacy'),
 (58,'Urban Medicals','91 934 5965516','','','','','','','urbame@gmail.com','Tambaram','near public park','24hrs','Tambaram West, Irumbuliyur, Chennai, Tamil Nadu 600045','','YES','APPROVED','Pharmacy'),
 (59,'Presidency Towers Inn','0429 7352836','','','','','','','predtowersinn@gmail.com','Tambaram','near playground','9am to 9 pm','Kurinji Nagar, Tambaram West, Extension, Chennai, Tamil Nadu 600045','','YES','APPROVED','Hotel'),
 (60,'Billroth Hospital','91 29 52433097','','','','','','','aswani_ardianto16@gmail.co.id','OMR','nearby Government hospital','24hrs','2/304, Rajiv Gandhi Salai, Jothi Nagar, Thoraipakkam, Tamil Nadu 600097','','YES','APPROVED','Hospital'),
 (61,'SSS Hospital','004 92780810','','','','','','','ssshp@gmail.com','OMR','opp to Aavin milk shop','24hrs','2/176 balamurugan garden, Thoraipakkam, OMR, Customs Colony, Sakthi Nagar, Chennai, Tamil Nadu 600096','','YES','APPROVED','Hospital'),
 (62,'QuickFix Ambulance Services','2226790113','','','','','','','qckfix@gmail.com','OMR','near by Sathya stores','5am-12am','1/534, Pillaiyar Koil St, Ellaiamman Nagar, Thoraipakkam, Tamil Nadu 600097','','YES','APPROVED','Ambulance'),
 (63,'Bharat Petroleum','926023875','','','','','','','bhpt@yahoo.co.id','OMR','next to SLAM gym','5am - 11 pm','378, Rajiv Gandhi Salai, Seevaram, Thoraipakkam, Tamil Nadu 600097','','YES','APPROVED','Petrol Bunk'),
 (64,'Medplus ','9500871506','','','','','','','medplus.ind.@gmail.com','OMR','opp to Aavin milk shop','9am - 12 am','142, Rajiv Gandhi Salai, Old, 2nd St, Mettukuppam, Thoraipakkam, Tamil Nadu 60009','','YES','APPROVED','Pharmacy'),
 (65,'Muthu Pharmacy','242456007','','','','','','','muthupharmacyomr@gmail.com','OMR','opp to RJ Tea Stall','11am - 11pm','697, 3, Anand Nagar Main Rd, MCN Nagar, Okkiyam, Thoraipakkam, Tamil Nadu 600097','','YES','APPROVED','Pharmacy'),
 (66,'Arya Inns','44400987','','','','','','','aryainnomrs@gmail.com','OMR','nearby Megamart','8am - 11pm','19, Devaraj Avenue, 1st Cross St, Mettukuppam, Thoraipakkam, Tamil Nadu 600097','','YES\n\n\n','APPROVED','Hotel'),
 (67,'Max Motel','4449643244','','','','','','','maxmotel@gmail.com','OMR','nearby PKS Playground','24hrs','X63W+C79, 1st St, Manikkodi Srinivasan Nagar, Perungudi, Chennai, Tamil Nadu 600096','','YES','APPROVED','Hotel'),
 (68,'Ranjith Mechanic','9870050789','','','','','','','ranjiththala@gmail.com','OMR','next to GRT','7am - 9pm','2, Selvaganapathi Avenue, 17, Seevaram 2nd St, Thorapakkamm, Perungudi, Chennai, Tamil Nadu 600096','','YES','APPROVED','Mechanic'),
 (69,'Pradeep Mechanic','9634176809','','','','','','','pradeepak47@gmail.com','OMR','next to Bharat Petrol Bunk','24 hrs','46,Corporation Rd, Opp:S.M Towers, Thirumalai Nagar Annexe, Perungudi, Chennai, Tamil Nadu 600096','','YES\n','APPROVED','Mechanic'),
 (70,'BPCL Petrol Pump Sakthi Madhumalar Agencies','044 2752 9564','','','','','','','bpclbunk@gmail.com','Melmaruvathur','Near sothupakkam','Open 24 Hours','Thiruchi-Chennai Highway; Melmaruvathur; Tamil Nadu 603319','','YES','APPROVED','Petrol Bunk'),
 (71,'Melmaruvathur,ambulance','994668760','','','','','','','bangaru@gmail.com','Melmaruvathur','Lakshmi Bangaru Nagar,Melmaruvathur','Open 24 Hours','CRJC+68Q,M G Rd,Laksmi Bangaru Nagar,Melmaruvathur,Tamil Nadu 603319','','YES','APPROVED','Ambulance'),
 (72,'SMJ GRAND HOTEL','8015124518','','','','','','','grand@gmail.com','Melmaruvathur','Grand Southern Trunk Rd,Tamilnadu 603301','8am to 11pm','107,3B2,Grand Southern Trunk Rd,Melmaruvathur,603301','','YES','APPROVED','Hotel'),
 (73,'Dr.Rajendran\'s clinic','4476453995','','','','','','','rajendran@gmail.com','Melmaruvathur','Near Krishna Mill','7am to 10pm','Bazar streer,Melmaruvathur. Tamil Nadu 603319','','Yes','APPROVED','Hospital'),
 (74,'Adhiparasakthi Hospital & Reseach  Institute','4427528302','','','','','','','mapims.hr@gmail.com','Melmaruvathur','Near bus stop','Open 24 Hours','Adhiparasakthi Hospital & Research Institute Â· Melmaruvathur, Kancheepuram District Tamilnadu, India 603319','','YES','APPROVED','Hospital'),
 (75,'Apollo','4427529555','','','','','','','apollo@gmail.com','Melmaruvathur','Vandavasi road','7.30 am to 11pm','No 256,Ground Floor cheyur-Vandavasi Rd, Tamil Nadu 603319','','YES','APPROVED','Pharmacy'),
 (76,'Srinivasa Medicals','9894240097','','','','','','','srini@gmail.com','Melmaruvathur','Vandavasi Road,Near bus stop','Open 24 Hours','Vandavasi Road, Sothupakkam, Melmaruvathur,Tamil NAdu 603319','','YES','APPROVED','Pharmacy'),
 (77,'Aryas hotel','9967345208','','','','','','','aryas@gmail.com','Melmaruvathur','near GB school','6am to 11.30pm','Maruvathur bus stop, Melmaruvathur Tamil Nadu 603319','','YES','APPROVED','Hotel'),
 (78,'Mss motors auto electricals','994332167','','','','','','','mssmotors@gmail.com','Melmaruvathur','NH road ,Melmaruvathur','open 24 hours','Grand Southern Trunk Rd, Melmaruvathur, TamilNAdu 603319','','YES','APPROVED','Mechanic'),
 (79,'Sai Punchar shop','993467852','','','','','','','saipunchar@gmail.com','Melmaruvathur','Villupuram-Trichy-Kanyakumari Rd,Melmaruvathur','open 24 hours','Chennai-Villupuram-Trichy-Kanyakumari Rd, Melmaruvathur,TamilNadu 603319','','YES','APPROVED','mechanic'),
 (80,'Veerabathra Motors Service','9884325365','','','','','','','veera@gmail.com','Chengalpattu','near bus stop','9am to 10pm','97a, Grand Southern Trunk Rd, J C K Nagar, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Mechanic'),
 (81,'Ganesh Auto Works','099941 21979','','','','','','','ganesh@gmail.com','Chengalpattu','near periya kovil','8:30am to 9:30pm','Gundur, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Mechanic'),
 (82,'Ranga Hotel','080560 34999','','','','','','','ranga@gmail.com','Chengalpattu','near highway road','Opens 24hrs','No. 7, Alagesan Rd, Vedachalam Nagar, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Hotel'),
 (83,'Hotel Akshay Grand','063744 74727','','','','','','','akshay@gmail.com','Chengalpattu','near tirchy road','Opens 24hrs','115 A, Grand Southern Trunk Rd, Thimmarajakulam, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Hotel'),
 (84,'Shifa Medicals','044 2742 3800','','','','','','','shifa@gmail.com','Chengalpattu','near bus stop','8am to 10:30pm','No 73, Rajaji St, J C K Nagar, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Pharmacy'),
 (85,'MedPlus Chengalpet Rajaji Street','040 6700 6700','','','','','','','rajaji@gmail.com','Chengalpattu','near kh hospital','9am to 11pm','No 77, 74, Rajaji St, J C K Nagar, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Pharmacy'),
 (86,'JSP Hospital','073731 22766','','','','','','','jsp@gmail.com','Chengalpattu','near bus stop','Opens 24hrs','No 70, Kanchipuram High Rd, J C K Nagar, Chengalpattu, Tamil Nadu 603002','','YES','APPROVED','Hospital'),
 (87,'Sree Renga Hospital','044 2743 2240','','','','','','','renga@gmail.com','Chengalpattu','near periya kovil','Opens 24hrs','No .12 Varada Reddy Street, Vedachalam Nagar, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Hospital'),
 (88,'Indian Oil Petrol Bunk','094450 40539','','','','','','','indian@gmail.com','Chengalpattu','near bus stop','Opens 24hrs','M295+RQ4, Chengleput - tirupopur Rd, thir ukalikundram tkne Santhi Nagar, Nenmeli, Nmelikanchi, Chengalpattu, Tamil Nadu 603003','','YES','APPROVED','Petrol bunk'),
 (89,'Saleem&brothers Ambulance service','044 2742 3800','','','','','','','saleem@gmail.com','Chengalpattu','near debo office','Opens 24hrs','396 b, k k nagar, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Ambulance'),
 (90,'Om Motors','073731 22766','','','','','','','om@gmail.com','Thanjavur','near periya kovil','9am to 9pm','No.45, Pothupanithurai nagar, Pudukottai Main Rd, near Mahindra SRS Cars, Thanjavur, Tamil Nadu 613005','','YES','APPROVED','Mechanic'),
 (91,'kN S AUTO SERVICE','063744 74727','','','','','','','kns@gmail.com','Thanjavur','near kh street','8:30am to 9:30pm','N S C Bose Nagar, Arulananda Nagar West Extension, Thanjavur, Tamil Nadu 613007','','YES','APPROVED','Mechanic'),
 (92,'MVK Hospital','063744 74727','','','','','','','mvk@gmail.com','Thanjavur','near main street','Opens 24hrs','No 2772/1, Nanayakkara Chetty St, Rajakrisnapuram, Thanjavur, Tamil Nadu 613009','','YES','APPROVED','Hospital'),
 (93,'Meenakshi Hospital','073731 22766','','','','','','','meenakshi@gmail.com','Thanjavur','near main highway','Opens 24hrs','244/2, Trichy Main Road, Near New Bus Stand, Nilagiri, Therkku Thottam, Thanjavur, Tamil Nadu 613005','','YES','APPROVED','Hospital'),
 (94,'State Pharmacy','063744 74727','','','','','','','state@gmail.com','Thanjavur','near state hospital','8:30am to 9pm','No. 9, Yagappa Nagar, Pudukkottai, N Main St, Yagappa Nagar, Thanjavur, Tamil Nadu 613007','','YES','APPROVED','Pharmacy'),
 (95,'Singaram Medical Store','080560 34999','','','','','','','singaram@gmail.com','Thanjavur','near periya kovil','8:30am to 9:30pm','near sivagangai garden, Rajakrisnapuram, South Rampart, Thanjavur, Tamil Nadu 613001','','YES','APPROVED','Pharmacy'),
 (96,'Hotel Oriental Towers','04362 230 450','','','','','','','towers@gmail.com','Thanjavur','near kh hospital','Opens 24hrs','Railway Station, Hotel Oriental Towers, 2889, Srinivasam Pillai Rd, near Tanjore, Thanjavur, Tamil Nadu 613001','','YES','APPROVED','Hotel'),
 (97,'Hotel Gnanam','04362 278 501','','','','','','','gnanam@gmail.com','Thanjavur','near highway road','Opens 24hrs','Anna Salai Rd, Near Old Bus Stand, Attar Mohalla, Thanjavur, Tamil Nadu 613001','','YES','APPROVED','Hotel'),
 (98,'DLRV Agencies IOCL Petrol bunk','063744 74727','','','','','','','dlrv@gmail.com','Thanjavur','near service road','Opens 24hrs','14, Nanjikottai Rd, Parisutham Nagar, Thanjavur, Tamil Nadu 613006','','YES','APPROVED','Petrol bunk'),
 (99,'King Air and Train Ambulance Services','073731 22766','','','','','','','king@gmail.com','Thanjavur','near gh hospital','Opens 24hrs','Q4PQ+Q7X, Road Inside Old Bus Stand, Rajakrisnapuram, Thanjavur, Tamil Nadu 613001','','YES','APPROVED','Ambulance'),
 (100,'Nagalakshmi Ambulance Service','094445 53588','','','','','','','naga@gmail.com','Ambattur','near kh service','Opens 24hrs','12/24, Menambedu, Munuswamy, Koil St, Kallikuppam, Chennai, Tamil Nadu 600053','','YES','APPROVED','Ambulance'),
 (101,'Sree Sakthi Agencies Indian Oil Petrol Pump','073731 22766','','','','','','','sakthi@gmail.com','Ambattur','near split road','Opens 24hrs','4535+462, Chennai Tiruvallur High Rd, Shanthi Nagar, Sidco Industrial Estate, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Petrol bunk'),
 (102,'Ravi mechanic','080560 34999','','','','','','','ravi@gmail.com','Ambattur','near highway road','8:30am to 9pm','38, Hindustan Motor Nagar Rd, Sri Nagar, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Mechanic'),
 (103,'Bobby Auto Works','063744 74727','','','','','','','bobby@gmail.com','Ambattur','near split road','8am to 9:30pm','No. 33, Ambattur Red Hills Rd, Vinayagapuram, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Mechanic'),
 (104,'JP Hotel Chennai','044 4028 8000','','','','','','','jp@gmail.com','Ambattur','near gh road','Opens 24hrs','131, 100 Feet Rd, Jai Nagar, Koyambedu, Chennai, Tamil Nadu 600107','','YES','APPROVED','Hotel'),
 (105,'OYO 87088 VSV Guest House','073731 22766','','','','','','','oyo@gmail.com','Ambattur','near medical shop','Opens 24hrs','83, Ward 83, Zone, CMWSSB Division, 7, Ambattur, Mugambigai Nagar, Ambattur, Chennai, Tamil Nadu 600081','','YES','APPROVED','Hotel'),
 (106,'Karuppiah Pharmacy','073731 22766','','','','','','','karupp@gmail.com','Ambattur','near sk store','9am to 10:30pm','NO: 37 B, Madras Thiruvallur High Rd, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Pharmacy'),
 (107,'Dhana Pharmacy','073731 22766','','','','','','','dhana@gmail.com','Ambattur','near kh hospital','Opens 24hrs','4593+57R, Old MTH Rd, Secretariat Colony, Venkatapuram, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Pharmacy'),
 (108,'Teja Hospital','072990 08452','','','','','','','teja@gmail.com','Ambattur','near main road','Opens 24hrs','471, Madras Thiruvallur High Rd, Manthoppu Nagar, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Hospital'),
 (109,'Sir Ivan Stedeford Hospital','073731 22766','','','','','','','ivan@gmail.com','Ambattur','near bus stop','Opens 24hrs','7, Madras Thiruvallur High Rd, Shobha Nagar, OT, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Hospital'),
 (110,'BS Hospital Ooty','0423 244 3671','','','','','','','bs@gmail.com','Ooty','near bus stop','Opens 24hrs','9MWW+XQX, Dasaprakash Rd, Bishop Down, Fern Hill, Ooty, Tamil Nadu 643001','','YES','APPROVED','Hospital'),
 (111,'Sanhita Hospital','073731 22766','','','','','','','santia@gmail.com','Ooty','near gh road','Opens 24hrs','90, Ettines Rd, Race Course, Ooty, Tamil Nadu 643001','','YES','APPROVED','Hospital'),
 (112,'RP Car Auto Garage','073731 22766','','','','','','','rp@gmail.com','Ooty','near rp road','8:30am to 9 pm','CM7P+HRX, Kandal, Ooty, Tamil Nadu 643006','','YES','APPROVED','Mechanic'),
 (113,'Hotel Lakeview','0423 244 3904','','','','','','','lake@gmail.com','Ooty','near ot road','Opens 24hrs','West Lake Road, Ooty, Tamil Nadu 643004','','YES','APPROVED','Hotel'),
 (114,'goSTOPS OOTY','077608 87596','','','','','','','gostop@gmail.com','Ooty','near tn bypass','Opens 24hrs','264, Off, Gymkhana Gold Link Road, Fingerpost, Ooty, Tamil Nadu 643006','','YES','APPROVED','Hotel'),
 (115,'BS Pharmacy','097872 11000','','','','','','','bs@gmail.com','Ooty','near nelgiris','Opens 24hrs','190, Ettines Rd, Race Course, Ooty, Tamil Nadu 643001','','YES','APPROVED','Pharmacy'),
 (116,'Sanhita Pharmacy','0423 244 3671','','','','','','','sanhita@gmail.com','Ooty','near th road','Opens 24hrs','9MWW+XQX, Dasaprakash Rd, Bishop Down, Fern Hill, Ooty, Tamil Nadu 643001','','YES','APPROVED','Pharmacy'),
 (117,'Bharat Petroleum, Petrol Pump','0423 244 3904','','','','','','','bharat@gmail.com','Ooty','near kh road','Opens 24hrs','COONOOR RD, OOTY, THE NILGIRIS, Tamil Nadu 643001','','YES','APPROVED','Petrol bunk'),
 (118,'Coonoor Star ambulance','072990 08452','','','','','','','coonor@gmail.com','Ooty','near mountain road','opens 24hrs','643102, MDR 1073, Vannarpet, Coonoor, Tamil Nadu 643101','','YES','APPROVED','Ambulance'),
 (119,'The Vellore Kitchen','4162223330','','','','','','','vellorekitchen@gmail.com','Vellore','Near vellore fort','10:30AM - 10:30PM','New Bangalore Service Road, No: 1, Near Green Circle, NH 46 Service Rd, Vellore, Tamil Nadu 632004','','YES','APPROVED','Hotel'),
 (120,'Hot stone Kitchen','9962676676','','','','','','','hotstone@gmail.com','Vellore','Near RTO office','11:00AM - 11:00PM','28, Fatha Apartment, Vivekanandha Street All Mart Road, near VIT, Katpadi, Vellore, Tamil Nadu 632007','','YES','APPROVED','Hotel'),
 (121,'Apollo Pharmacy Katpadi Road','4162220038','','','','','','','appollooo@gmail.com','Vellore','Near deccan chronicle ','24hours','No: 54/12, Katpadi Rd, near CMC Outgate, Thottapalayam, Vellore, Tamil Nadu 632004','','YES','APPROVED','Pharmacy'),
 (122,'Sun Pharmacy','9789655894','','','','','','','sun234@gmail.com','Vellore','Near tcs company','24hours','W47G+328, govindharaj, Ramasamy Mudali St, Kaspa, Vellore, Tamil Nadu 632001','','YES','APPROVED','Pharmacy'),
 (123,'Vellore Government Hospital','9898787865','','','','','','','velloregh@gmail.com','Vellore','Near lm road','24hours','R4VP+QQP, Arani Road, Opposite Staff Quarters, Adukkamparai, Vellore, Tamil Nadu 632011','','YES','APPROVED','Hospital'),
 (124,'Vellore CMC Hospital','9023456789','','','','','','','cmc@gmail.com','Vellore','Near passport seva','24hours','SH 207, Sasthri Nagar, Krishna Nagar, Veerasamy Nagar, Vellore, Tamil Nadu 632001','','YES','APPROVED','Hospital'),
 (125,'Vellore Ambulance Service (Zion Ambulance)','9543343442','','','','','','','zion23@gmail.com','Vellore','Near pothys','24hours','Arcot Road Thottapalayam Near CMC Jubilee Gate, Vellore, Tamil Nadu 632004','','YES','APPROVED','Ambulance'),
 (126,'KGS Ambulance services','9842352390','','','','','','','kgsas@gmail.com','Vellore','Near vellore bus terminus','24hours','8, Voc Nagar Rd, near Nalam hospital, Phase 2, Sathuvachari, Vellore, Tamil Nadu 632012','','YES','APPROVED','Ambulance'),
 (127,'Indian Oil Petrol Pump','9876543219','','','','','','','indianopp@gmail.com','Vellore','Near leather company','24hours','X5V4+VMX, Pallikuppam, Tamil Nadu 632106','','YES','APPROVED','Petrol Bunk'),
 (128,'HP PetrolBunk','9087654321','','','','','','','hppetro@gmail.com','Vellore','Near vellore bus terminus','24hours','X4PV+6CV, RadhaKrishnan Nagar, Katpadi, Vellore, Andhra Pradesh 632007','','YES','APPROVED','Mechanic'),
 (129,'Jai Mechanic','9751232040','','','','','','','jaimechanic@gmail.com','Vellore','Near vellore railway station','9:00AM - 6:00PM','X42P+23G, West Main Road, West Main Road, Near Beauty Parlour, Katpadi, Vellore, Tamil Nadu 632006','','YES','APPROVED','Hotel'),
 (130,'Ambur Star Biriyani','9780654321','','','','','','','AmburStarBiriyani@gmail.com','Arcot','Near RTO office','12:00AM-2:00PM','SH 4, Arcot, Tamil Nadu 632503','','YES','APPROVED','Hotel'),
 (131,'Savoury Sea Shell Restaurant','9678054321','','','','','','','SavourySeaShell@gmail.com','Arcot','Near kamal stores','11:00AM-11:30PM','274, Arcot - Vellore Bye Pass, Road, Arcot, Tamil Nadu 632503','','YES','APPROVED','Pharmacy'),
 (132,'Shameem Pharmacy','8989767654','','','','','','','ShameemPhar@gmail.com','Arcot','Near shameela boutique','24 hours','405, Anna Salai Main Rd, Melvisharam, Tamil Nadu 632509','','YES','APPROVED','Pharmacy'),
 (133,'KH Pharmacy','8787989890','','','','','','','khpharma@gmail.com','Arcot','Near arcot police station','24 hours','AH45, Melvisharam, Tamil Nadu 632509','','YES','APPROVED','Hospital'),
 (134,'Arcot Government Hospital','9876543789','','','','','','','ArcotGH@gmail.com','Arcot','Near arcot police station','24hours','W83M+H9V, SH 5, Arcot, Tamil Nadu 632503','','YES','APPROVED','Hospital'),
 (135,'AC Multi Speciality Clinic','8976543210','','','','','','','ACMultiSpeciality@gmail.com','Arcot','Near arcot police station','24hours','Vellore, SH-129, Arcot Kannamangalam Road, Arcot, Arcot, 632503','','YES','APPROVED','Ambulance'),
 (136,'Kutty & Co Ambulance Service','7897897890','','','','','','','Kutty&CoAmbulanceService@gmail.com','Arcot','Near arcot bus terminus','24hours','No.1/30, Ramar Kovil St, G.H, Adukkamparai, Tamil Nadu 632011','','YES','APPROVED','Ambulance'),
 (137,'Falcon EmergencyAmbulance Services','9205909876','','','','','','','Falcon@gmail.com','Arcot','Near arcot new bus stop','24hours','H. No. B-125, Fort Round Road, Balaji Nagar, near Water Tank, Vellore, Tamil Nadu 632004','','YES','APPROVED','Ambulance'),
 (138,'Hindustan Petroleum','3666366689','','','','','','','HindustanPetr@gmail.com','Arcot','Near highschool ','24hours','Ranipet, Vellore, NH-4, Thiruvalam Ranipet Chennai Road, Arcot, Arcot, 632401','','YES','APPROVED','PetrolBunk'),
 (139,'Sri Lakshmi Auto Works','9003594747','','','','','','','SrIILakshmi@gmail.com','Arcot','Near gta theme park','10:00AM - 4:00PM','Vellore, SH-129, Arcot Kannamangalam Road, Arcot, Arcot, 632503','','YES','APPROVED','Mechanic'),
 (140,'GREEN VALLEY RESTAURANT','8989767654','','','','','','','greenvalley@gmail.com','Arakkonam','Near RTO office','11:00AM - 11PM','79, Tiruttani High Road, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Hotel'),
 (141,'PANAI MARAM RESTAURANT','9008070605','','','','','','','pannai@gmail.com','Arakkonam','Near arrakonam railway station','9:00AM - 9:30PM','Thiruthani Rd, Arakkonam, Tamil Nadu 631003','','YES','APPROVED','Hotel'),
 (142,'CURE PHARMACY','9344440006','','','','','','','cure@gmail.com','Arakkonam','Near arrakonam gas station','24hours','32/1, Murugappa Street, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Pharmacy'),
 (143,'MedPlus Arakonam Gandhi Road','4067006700','','','','','','','mediiepharma@gmail.com','Arakkonam','Near arrakonam bus terminus','24hours','No 95, Gandhi road, Arakkonam, Tamil Nadu 631003','','YES','APPROVED','Pharmacy'),
 (144,'CSI Hospital','8234567889','','','','','','','csihospi@gmail.com','Arakkonam','Near arrakonam railway station','24hours','16/29, Sarojini St, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Hospital'),
 (145,'Arakkonam Government General Hospital','4177232270','','','','','','','Arakgovern@gmail.com','Arakkonam','Near arrakonam police station','24hours','3MM7+XVQ, SH58, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Hospital'),
 (146,'Guna Ambulance','7676757578','','','','','','','guna@gmail.com','Arakkonam','Near winterpet company','24hours','3MG4+38W, Winterpet, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Ambulance'),
 (147,'Kvm Ambulance Advanced Life Support','987654098','','','','','','','kvm@gmail.com','Arakkonam','Near permunchi post office','24hours','185, Sholingur Rd, Near Old Bus Stand, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Ambulance'),
 (148,'HP PETROL PUMP - ADHOC','9090909897','','','','','','','hppetrole@gmail.com','Arakkonam','Near permunchi post office','24hours','Hpcl Retail Bunk Arakkonam-kancheepuram State Highway Perumuchi Post, Arakkonam, Chennai, Tamil Nadu 631002','','YES','APPROVED','Petrol Bunk'),
 (149,'RAJA CAR MECHANIC','7890654378','','','','','','','rajaaa@gmail.com','Arakkonam','Near jeyachandran textiles','9:00AM - 7:00PM','3MCF+G4G, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Mechanic'),
 (150,'Thoondil The Family Restaurant','7890654321','','','','','','','thoondil@gmail.com','Sholinghur','Near RTO office','12:30PM - 3:30PM','19A, East Coast Road Paniyur, J Nagar, Chennai, Tamil Nadu 600119','','YES','APPROVED','Hotel'),
 (151,'Habbat Global cuisine restaurant','8893192020','','','','','','','habbat@gmail.com','Sholinghur','Near ktk town','12:00PM-11:00PM','KTK Town, TNHB, Sholinganallur, Chennai, Tamil Nadu 600119','','YES','APPROVED','Hotel'),
 (152,'Swasti Pharmacy','8754543304','','','','','','','swasti@gmail.com','Sholinghur','Near Omr road','24hours','No. 70, Rajiv Gandhi Salai (OMR ROAD), Sholinganallur, Chennai, Tamil Nadu 600119','','YES','APPROVED','Pharmacy'),
 (153,'Apollo Pharmacy Sholinganallur','4424500005','','','','','','','applollo24@gmail.com','Sholinghur','Near  bus terminus','24hours','New No 13, Old No 8, MGR Rd, Sholinganallur, Tamil Nadu 600119','','YES','APPROVED','Pharmacy'),
 (154,'SRI SUGAM HOSPITAL','4448504246','','','','','','','srisugam@gmail.com','Sholinghur','Near railway Station','24hours','PIN 196, I T HIGHWAY, Sholinganallur, Chennai, Tamil Nadu 600119','','YES','APPROVED','Hospital'),
 (155,'Chettinad Hospital','4443402800','','','','','','','chettinadu@gmail.com','Sholinghur','Near aavin depot','24hours','Kelambakkam, Sholinganallur, Chennai, Tamil Nadu 600097','','YES','APPROVED','Hospital'),
 (156,'Flyinng Squad Ambulance Service','8428077777','','','','','','','flyingsquad@gmail.com','Sholinghur','Near hindhu newspaper','24hours','Panchayath Shopping Complex, Shop No. 15, opposite to Aavin Depot, Sholinganallur, Chennai, Tamil Nadu 600119','','YES','APPROVED','Ambulance'),
 (157,'JOSH Ambulance service','8979690905','','','','','','','josh@gmail.com','Sholinghur','Near medavakkam bus terminus','24hours','11, 159, Mambakkam - Medavakkam Main Rd, near Medson Diagnostics, Munusamy Nagar, Vimala Nagar, Medavakkam, Chennai, Tamil Nadu 600100','','YES','APPROVED','Ambulance'),
 (158,'Bharat Petroleum','1800224344','','','','','','','bharattt@gmail.com','Sholinghur','Near kalaignar post office','24hours','Laxmi Nagar Extension, Sholinganallur, Chennai, Tamil Nadu 600119','','YES','APPROVED','petrol Bunk'),
 (159,'Narpavi Mechanic','8220877843','','','','','','','narpavi@gmail.com','Sholinghur','Near laxmi stores','8:00AM - 5:00PM','No 384, Village High Road, Kalaignar Karunanidhi Salai, Ezhil Nagar, Sholinganallur, Chennai, Tamil Nadu 600119','','YES','APPROVED','Mechanic'),
 (160,'the graet empire hotel','044 6454 1235','','','','','','','bharat@gmail.com','chennai','Near parrys corner','10AM - 2PM','no 6,kaliamman kovil street,koyambedu,chenai,tamilnadu-600107','','YES','APPROVED','Hotel'),
 (162,'fabhotel k-square koyambedu','704242242','','','','','','','fabhotel@gmail.com','chennai','Near koyambedu market','12pm-11am','no 231,100 fet road,koyambedu,chennai,tamil nadu,600107','','YES','APPROVED','Hotel'),
 (163,'LS hospital ','8989765432','','','','','','','lshospi@gmail.com','chennai','Near chennai egmore','24 hours','azhagammal nagar,koyambedu,chennai,tamil nadu 600107','','YES','APPROVED','Hospital'),
 (164,'ABC health care ','098512 0664','','','','','','','abchealthcare@gmail.com','chennai','Near koyambedu market','9am - 10pm','358Q+3FV,koyambedu chennai,tamil nadu 600107','','YES','APPROVED','Hospital'),
 (165,'indian petrol bank ','099622 32229','','','','','','','indianpetro@gmail.com','chennai','Near moore market','24 hours','9,poonamalle,high rd,nerkundram,chennai,tamil nadu600107','','YES','APPROVED','PetrolBunk'),
 (166,'bharat petrol bank','1800 22 4344','','','','','','','bharatpetrol@gmail.com','chennai','Near Kassim Road','6am - 10:30 pm','koyambedu,chennai,tamil nadu 600107','','YES','APPROVED','PetrolBunk'),
 (167,'gomechanic-baskar auto works','098401 68845','','','','','','','gomechanicbhaskhar@gmail.com','chennai','Near saidapet','9am - 9pm ','18/2,kaliamman kovil st,virrugampakkam,koyambedu,chennai,tamil nadu 600107','','YES','APPROVED','Mechanic'),
 (168,'johns garage','099626 14133','','','','','','','johnsgarage@gmail.com','chennai','Near post office','9am - 8 pm','no50 suganthi avenue,1st main rd,nerkundram,chennai,tamil nadu 600107','','YES','APPROVED','Mechanic'),
 (169,'apollo pharmacy koyambedu','044 2479 5547','','','','','','','appoplooo@gmail.com','chennai','Near RTM road','7:30am - 11pm','chennai mofussil bus terminius,ground floor,koyambedu,chennai,tamil nadu 600107','','YES','APPROVED','Pharmacy'),
 (170,'medi hub pharmacy','099628 11989','','','','','','','medhub@gmail.com','chennai','Near sivan kovil','9:30am - 9:30pm','1,perumal koil st,koyambedu,chennai,tamil nadu 600107','','YES','APPROVED','Pharmacy'),
 (171,'The Chain Blaack Restaurant','7878787890','','','','','','','chainblack@gmail.com','Madurai','Near kk nagar','11:00AM - 4:00PM','391, Obula Shopping Complex Sarveshwarar, Kovil St, Anna Nagar, Sathamangalam, Tamil Nadu 625020','','YES','APPROVED','Hotel'),
 (172,'JALLIKATTU RESTAURANT','7550333330','','','','','','','jallikattu@gmail.com','Madurai','Near madurai athisayam theme park','9:00AM - 12:00PM','NO.7/1, Abdul Gafar Khan Rd, KABARKHAN COLONY, Chinna Chokikulam, Tamil Nadu 625002','','YES','APPROVED','Hotel'),
 (173,'Dhyanalinga Pharmacy','4522535121','','','','','','','dhyanalinga@gmail.com','Madurai','Near chokikulam','24hours','7-B, Opp. To Income Tax Office, V.P. Rathanasamy Nadar Road, Bi-Bi Kulam, Madurai, Tamil Nadu 625002','','YES','APPROVED','Pharmacy'),
 (174,'Thulasi Pharmacies India Pvt Ltd','9943979770','','','','','','','thulasi@gmail.com','Madurai','Near aavin depot','24hours','9/1, S Masi St, Periyar, Madurai Main, Madurai, Tamil Nadu 625001','','YES','APPROVED','Pharmacy'),
 (175,'Arun Hospital Madurai','4524545777','','','','','','','arunhospital@gmail.com','Madurai','Near railway Station','24hours','14a, Munichalai Rd, Nelpettai, Krishna Puram, Madurai, Tamil Nadu 625009','','YES','APPROVED','Hospital'),
 (176,'Vadamalayan Hospitals Pvt Ltd','4522545400','','','','','','','vadamalayan@gmail.com','Madurai','Near police station','24hours','Chockikulam, 15/1, Vallabh Bhai Rd, Madurai, Tamil Nadu 625002','','YES','APPROVED','Hospital'),
 (177,'VM Ambulance- 24 Hours Ambulance Service','9788868201','','','','','','','vmambulance@gmail.com','Madurai','Near madurai bus terminus','24hours','Old Dindigul Road Near Southern Railway Colony, Arasaradi, Madurai, Tamil Nadu 625016','','YES','APPROVED','Ambulance'),
 (178,'J P Ambulance & Trust','9442553390','','','','','','','jpambulance@gmail.com','Madurai','Near madurai bus terminus','24hours','opposite Bus Stop, Chokkalinga Nagar, Koodal Nagar, Madurai, Tamil Nadu 625018','','YES','APPROVED','Ambulance'),
 (179,'Bharat Petroleum, Petrol Pump -Lakshmi Agency','1800224344','','','','','','','bharathpetrol@gmail.com','Madurai','Near madurai bus terminus','24hours','VASANTHAM NAGAR,TPK RD,M, Madurai, Tamil Nadu 625003','','YES','APPROVED','PetrolBunk'),
 (180,'Humayun Auto Garage','4522326072','','','','','','','humayum@gmail.com','Madurai','Near madurai athisayam theme park','8:00AM - 6:00PM','215, North Masi Street, North Masi Street, Madurai Main Road, near ICICI Bank, Madurai, Tamil Nadu 625001','','YES','APPROVED','Mechanic'),
 (181,'Raam Restaurant','8667888502','','','','','','','@gmail.com','Tirchy','Near SRM college','11:00AM - 9:00PM','55/1 10th Cross, 80 Feet Rd, Thillai Nagar, Tiruchirappalli, Tamil Nadu 620018','','YES','APPROVED','Hotel'),
 (182,'The G.O.A.T Restaurant','8870189606','','','','','','','thegoat@gmail.com','Tirchy','Near NIT COLLEGE','3:00PM - 12:00AM','No 59A, Navaladian Arcade, 1st Floor, Bishop Rd, Nal Road, near Puthur, Junction, Tiruchirappalli, Tamil Nadu 620017','','YES','APPROVED','Hotel'),
 (183,'Royal Pharmacy','456456765','','','','','','','royal@gmail.com','Tirchy','Near uchipilayar kovil','24hours','39, Keela Chathiram Rd, Tennur, Tiruchirappalli, Tamil Nadu 620017','','YES','APPROVED','Pharmacy'),
 (184,'Apollo Pharmacy Periyasamy Tower','4312714474','','','','','','','appoloo24@gmail.com','Tirchy','Near periyasamy tower','24hours','No .31 Shop no: 15, Periyasamy Towers, SRC, College Rd, opposite ChattiramBus Stand, Tiruchirappalli, Tamil Nadu 620002','','YES','APPROVED','Pharmacy'),
 (185,'GVN Hospital (P) Ltd. - Multispecialty Hospital','4312700712','','','','','','','gvnhospi@gmail.com','Tirchy','Near uchipilayar kovil','24hours','No 46, near Super Bazaar, Singarathope, Tiruchirappalli, Tamil Nadu 620008','','YES','APPROVED','Hospital'),
 (186,'Maruti Hospital','4312240000','','','','','','','maruti@gmail.com','Tirchy','Near NIT COLLEGE','24hours','95, Pattabiraman Salai, Anna Nagar, Tennur, Tiruchirappalli, Tamil Nadu 620017','','YES','APPROVED','Hospital'),
 (187,'Annai Ambulance','9443161961','','','','','','','annaiambul@gmail.com','Tirchy','Near SRM college','24hours','83/1, Goods Shed Rd, Kilapudur, Tiruchirappalli, Tamil Nadu 620001','','YES','APPROVED','Ambulance'),
 (188,'SRI BALAJI AMBULANCE SERVICE','9205909876','','','','','','','sribaalaji@gmail.com','Tirchy','Near trichy railway station','24hours','1st Cross Rd, Thillai Nagar East, West Thillai Nagar, Tennur, Tiruchirappalli, Tamil Nadu 620018','','YES','APPROVED','Ambulance'),
 (189,'YESODHAI PETROL BUNK','9443704849','','','','','','','yesodhai@gmail.com','Tirchy','Near trichy bus terminus','24hours','1, Rockins Rd, near Central Bus Stand, Cantonment, Tiruchirappalli, Tamil Nadu 620001','','YES','APPROVED','Petrol Bunk'),
 (190,'Mari mechanic shop','8903526065','','','','','','','marimechanic@gmail.com','Tirchy','Near trichy railway station','9:00AM - 4:00PM','38, Krishnapuram Muslim St, Krishnapuram, Tharanallur, Tiruchirappalli, Tamil Nadu 620008','','YES','APPROVED','Mechanic'),
 (191,'On The Go','4224520117','','','','','','','onthego@gmail.com','Coimbatore','Near anna statue','8:00AM - 9:00PM','167, Race Course Rd, near RK Photo Center, Gopalapuram, Coimbatore, Tamil Nadu 641018','','YES','APPROVED','Hotel'),
 (192,'Anandhass restaurant','4222226555','','','','','','','annaiambul@gmail.com','Coimbatore','Near global school','7:00AM - 7:00PM ','1096, Cross Cut Rd, Near Signal, Signal, Gandhipuram, Tamil Nadu 641012','','YES','APPROVED','Hotel'),
 (193,'Bharathan pharmacy','4224348080','','','','','','','bhrathan@gmail.com','Coimbatore','Near railway station','24hours','108, Government Arts College Rd, Opposite Court, Gopalapuram, Coimbatore, Tamil Nadu 641018','','YES','APPROVED','Pharmacy'),
 (194,'St. Mary\'s Medicals','4222301165','','','','','','','stmarys@gmail.com','Coimbatore','Near coimbatore bus terminus','24hours','8/462, Trichy Rd, Opp. C.M.C Government Hospital, Opp. Government Hospital, Highways Colony, Gopalapuram, Coimbatore, Tamil Nadu 641018','','YES','APPROVED','Pharmacy'),
 (195,'Government Hospital, Coimbatore','4222392186','','','','','','','ghhospi@gmail.com','Coimbatore','Near RTO office','24hours','1561, Trichy Rd, Highways Colony, Gopalapuram, Coimbatore, Tamil Nadu 641018','','YES','APPROVED','Hospital'),
 (196,'KG Hospital','4224042121','','','','','','','kghospital@gmail.com','Coimbatore','Near post office','24hours','5, Government Arts College Rd, Opposite Court, Gopalapuram, Coimbatore, Tamil Nadu 641018','','YES','APPROVED','Hospital'),
 (197,'Kovai Speed Ambulance Service','9843753357','','','','','','','kovaispeed@gmail.com','Coimbatore','Near coimbatore railway station','24hours','No.15/A, Erananjam Arakattalai, Arokiya, Thirumalaisamy St, R.S. Puram, Coimbatore, Tamil Nadu 641002','','YES','APPROVED','Ambulance'),
 (198,'City Ambulance','9843812345','','','','','','','cityambulance@gmail.com','Coimbatore','Near coimbatore bus terminus','24hours','496-A, Cross Cut Rd, Near Ganga Hospital Corner, Ram Nagar, CBE, Ram Nagar, Gandhipuram, Tamil Nadu 641009','','YES','APPROVED','Ambulance'),
 (199,'HP PETROL PUMP - DEVI AND COMPANY','9443180933','','','','','','','hppetrol@gmail.com','Coimbatore','Near coimbatore railway station','24hours','HP Dealers, 49, Madurai Rd, Bharathiyar Salai, Sangillyandapuram,coimbatore','','YES','APPROVED','PetrolBunk'),
 (200,'Alagu Services','9443722351','','','','','','','sunrise@gmail.com','Coimbatore','Near Service lane','24hours','154, 152, Vivekananda St, Ram Nagar, Coimbatore, Tamil Nadu 641009','','YES','APPROVED','Mechanic'),
 (201,'Sunrise Hotel','9800534203','','','','','','','drjhp@gmail.com','Redhills','Nearby Modern Temple School','11:00AM-11:00PM','#490-A,, GNT Road (Near Service Lane), Redhills, Chennai, Tamil Nadu 600066','','YES','APPROVED','Hotel'),
 (202,'DRJ Hospital','750089706`','','','','','','','vasanhsopital@gmail.com','Redhills','Next to Salem RR Biriyani','11:00AM-11:00PM','55WM+GQF, Red Hills, Padianallur, Tamil Nadu 600052','','YES','APPROVED','Hospital'),
 (203,'Vasan Hospital','9790894322','','','','','','','wsambulance@gmail.com','Redhills','Nearby R1 Aquarium','11:00AM-11:00PM','GNT Rd, Red Hills, Chennai, Tamil Nadu 600052','','YES','APPROVED','Hospital'),
 (204,'Westside Ambulance','9800789022','','','','','','','hppb@gmail.com','Redhills','Opp to Juicebox','11:00AM-11:00PM','55VG+WCM, Redhills - Thiruvallur High Rd, M.A.Nagar, Red Hills, Padianallur, Tamil Nadu 600052','','YES','APPROVED','Ambulance'),
 (205,'HP Petrol Bunk','4449630098','','','','','','','muthupharmacyredhills@gmail.com','Redhills','Opp to Singapore Shopping','11:00AM-11:00PM','56J5+J4X, Madavaram Red Hills Rd, Grant Lyon, Red Hills, Chennai, Tamil Nadu 600052','','YES','APPROVED','Petrol Bunk'),
 (206,'Muthu Pharmacy','4477223093','','','','','','','ramehs382@gmail.com','Redhills','Opp to JP Military Hotel','11:00AM-11:00PM','servey no 57/1 200 feet inner ring road, manjambakkam, Chennai, Tamil Nadu 600060','','YES','APPROVED','Pharmacy'),
 (207,'Ramesh Medicals','9898006712','','','','','','','fippinn@gmail.com','Redhills','Nearby DRJ Hospital','11:00AM-11:00PM','1/25, Perumal koil street, Mallima Nagar Area, Dhargaas, Chennai, Tamil Nadu 600052','','YES','APPROVED','Pharmacy'),
 (208,'Fippola Inn','9600971685','','','','','','','kinn@gmail.com','Redhills','Nearby Surya Marriage Hall','11:00AM-11:00PM','Gnt road, thandalkazhani, kavangarai Puzhal, chennai No. 90, Chennai, Tamil Nadu 600110','','YES','APPROVED','Hotel'),
 (209,'Klausser Inns','9003957193','','','','','','','prakshrowdy@gmail.com','Redhills','Next to Prasad Lab Studio','11:00AM-11:00PM','No.2/37, Chamundi Complex, GNT Road, Redhills, Chennai, Tamil Nadu 600052','','YES','APPROVED','Hotel'),
 (210,'Mechanic Prakash','8900672004','','','','','','','mechanicprakash@gmail.com','Redhills','Opp to CSI Church','11:00AM-11:00PM','10,11,12 vishnu Nagar,Annex Grand Layon Village, Vadaperumbakkam, Chennai, Tamil Nadu 600060','','YES','APPROVED','Mechanic'),
 (211,'Aasifa Biriyani','8939641641','','','','','','','aasifabiriyani@gmail.com','Redhills','Nearby Axis Bank','11:00AM-11:00PM','254,GNT Road,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Hotel'),
 (212,'Trident\'s food factory','9952022519','','','','','','','corp@tridentindia.com','Redhills',' Near lion clubs','12pm-22.30pm','No 2/253,lions club of madras thiruvallur High Road,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Hotel'),
 (213,'Karuna Filling Station','044 2632 2656','','','','','','','karuna@gmail.com','Redhills','Near madhavaram','open 24 hours','Plot No 127,Madhavaram Redhills Road,Kasthuri Bai Colony,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Petrol Bunk'),
 (214,'Indian oil petrol pump(kathive enterprises','1800 22 4344','','','','','','','indianoil@gmail.com','Redhills','Near gnt road','open 24 hours','55RP+CG6,GNT Road,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Petrol Bunk'),
 (215,'Quality Medicals','9841378003','','','','','','','qualitymedi@gmail.com','Redhills','Near sothupakkam','9am-22pm','No 20/2,Sotthupakkam Road,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Medicals'),
 (216,'Pushpa Medical','9840630029','','','','','','','pushpa@gmail.com','Redhills','Near redhills bus terminus','open 24 hours','586,GNT Road,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Medicals'),
 (217,'Adhavan Coach Chennai','9080767675','','','','','','','adhavan@gmail.com','Redhills','Near redhills bus terminus','open 24 hours','No 123,1F2,MGR Street,Ambedkar Nagar,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Ambulance'),
 (218,'Java Ambulance Services','9090878765','','','','','','','java@gmail.com','Redhills','Near redhills bus terminus','open 24 hours','GNT Road,Kannappasamy Nagar,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Ambulance'),
 (219,'RTG Hospital','8927575823','','','','','','','rtg@gmail.com','Redhills','Near redhills bus terminus','8am-23pm','514,GNT Road,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Hospital'),
 (220,'GMC Trush Hospital','9825757823','','','','','','','gmctrush@gmail.com','Redhills','Near redhills bus terminus','open 24 hours','55QQ+4F8,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Hospital'),
 (221,'Aashram Petrol Pump','945628716','','','','','','','aashram@gmail.com','Pondicheery','Kassim Road,Pondicherry','11:00AM - 4:00PM','french colony Pondicherry 605001','','YES','APPROVED','Petrol Bunk'),
 (222,'Royal Ambulance','675432780','','','','','','','royal@gmail.com','Pondicheery','Bhathar sahib street,Pondicherry','11:00AM - 4:00PM','Bhathar street, pondicherry 605001','','YES','APPROVED','Ambulance'),
 (223,'Villa Krish','443567982','','','','','','','Krish@gmail.com','Pondicheery','White town,Pondicherry','11:00AM - 4:00PM','2,surcouf street,White street,Pondicherry-605001','','YES','APPROVED','Hotel'),
 (224,'The Base Inn','729654389','','','','','','','base@gmail.com','Pondicheery','near Kottakuppam,Pondicherry','11:00AM - 4:00PM','305 Mahatma GAndhi Road Kottakuppam,Pondicherry','','YES','APPROVED','Hotel'),
 (225,'Mirai Garage','6789543210','','','','','','','garage@gmail.com','Pondicheery','Aroville Link Road,Pondicherry','11:00AM - 4:00PM','No.5,Aroville Link Road,Pondicherry 605001','','YES','APPROVED','Mechanic'),
 (226,'Chennai cars','9875432690','','','','','','','chennaicars@gmail.com','Pondicheery','near Mahavishnu nagar,Pondicherry','11:00AM - 4:00PM','No3/280,Mahavishnu Nagar,Thindivanam Road, Pondicherry. 605101','','YES','APPROVED','Mechanic'),
 (227,'Sri Annai Medicals','8976543209','','','','','','','anni@gmail.com','Pondicheery','near Veerampattinam Road, Pondicheery','24hours','No 127, Veerampattinam Road, Ariyankuppam,Pondicherry-605007','','YES','APPROVED','Pharmacy'),
 (228,'Best Medicals','1245678908','','','','','','','bestmedicals@gmail.com','Pondicheery','before Ariyankuppam bus stop , Pondicherry','24hours','Kamaraj salai, thattanchavadi,Pondicheery.','','YES','APPROVED','Pharmacy'),
 (229,'Be Well Hospitals Puducherry','9807654239','','','','','','','well@gmail.com','Pondicheery','Near East Coast Road, Pondicherry','24hours','15,EAst Coast RD, Kottupalayam','','YES','APPROVED','Hospital'),
 (230,'Rani Hospital','965428076','','','','','','','rani@gmail.com','Pondicheery','Near Vazhundhavur Street,Pondicheery','24hours','No27, Vazhudhavur Road, NEAr Rajiv Gandhi Statue ,Pondicherry 605101','','YES','APPROVED','Hospital'),
 (231,'Neomed Hospital - Pondicherry','4132200031','','','','','','','neomed2gmail.com','Pondicheery','Near pondicheery bus stop','24hours','Door No.3(New) plot no.78 Second street, Sithananda Nagar, Puducherry, 605005','','YES','APPROVED','Hospital'),
 (232,'CERT India Hospital','9234251154','','','','','','','cert@gmail.com','Pondicheery',' Near puducheerry coollege','24hours','WRCJ+X92, Vambakeerapalayam, Puducherry, 605004','','YES','APPROVED','Hospital'),
 (233,'PIMS Hospital City Centre','9283241774','','','','','','','pimas@gmail.com','Pondicheery','Near post office','24hours','WRW6+HGH, Annamalai Nagar, Puducherry, 605013','','YES','APPROVED','Hospital'),
 (234,'Rajiv Gandhi maternity and child government hospital','8925775823','','','','','','','rajiivgandhi@gmail.com','Pondicheery','Near east cost road','24hours','Bus Stop, Rajiv Gandhi Hospital, 100 Feet Rd, Ellaipillaichavady, Aruthra Nagar, Puducherry, 605009','','YES','APPROVED','Hospital'),
 (235,'GoMechanic Luxe-Xpress Motors','8398970970','','','','','','','gomechanic@gmail.com','Chennai','Thiruvallur High Road ,Ambathur','8am-11pm','268, Ambathur Industrial Estate ,Chennai-600058','','YES','APPROVED','Mechanic'),
 (236,'Sri venkateshwara Car Care','9176117189','','','','','','','sricar@gmail.com','Chennai','Murugan Mbedu ,Ambathur','8am-11pm','kallikuppam ,Ambathur,Chennai-600053','','YES','APPROVED','Mechanic'),
 (237,'Hotel Karthick','9789913559','','','','','','','karthick@gmail.com','Chennai','Near Madanaguppam Road','8am-11pm','no9,Muthamizh Nagar,Kallikuppam,Ambattur ,Chennai-600053','','YES','APPROVED','Hotel'),
 (238,'Nest Kitchen','7305082565','','','','','','','nestkitchen@gmail.com','Chennai','Near Puzhal Service Road','8am-11pm','115/1A,Ambal Nagar ,Kathirvedu Village Surapet,Ambathur,Chennai-600066','','YES','APPROVED','Hotel'),
 (239,'Rliance Petroleum','9790820516','','','','','','','reliance@gmail.com','Chennai','Near Ambathur Redhils Road','8am-11pm','2C,Survey No 746/2A,2B,9,Ambattur,Chennai-600053','','YES','APPROVED','Petrol Bunk'),
 (240,'Indian Oil','9444121345','','','','','','','indianoil@gmail.com','Chennai','Near Vivekananda Nagar Main Rd','8am-11pm','46F2+FM2,Mohamed Husain Nagar,Lakshmipuram,Chennai-600099','','YES','APPROVED','Petrol Bunk'),
 (242,'Swathi Women Medical Center','9841648755','','','','','','','drswathi@gmail.com','Chennai','Near East Balaji,Nagar','8am-11pm','plot No.8,Kallikuppam,Chennai-600053','','YES','APPROVED','Hospital'),
 (243,'Lake View Hospital','044 2565 9911','','','','','','','lakeviewhoapital@gmail.com','Chennai','Near Akbar Nagar ,Kolathur','8am-11pm','Flat No.100A,Perembur Redhils High Road ,kolathur,Chennai-600099','','YES','APPROVED','Hospital'),
 (243,'Medplus ','040 6700 6700','','','','','','','medplus@gmail.com','Chennai','Near Ramdass Nagar,Kolathur','8am-11pm','no.17,Shop No 2,Ambattur Redhills Road ,Kolathur,Chennai-600099','','YES','APPROVED','Pharamacy'),
 (244,'Apollo Pharmacy ','044 2554 4243','','','','','','','apollo@gmail.com','Chennai','Near Meenambai Salai Viviekananda Nagar','8am-11pm','no.68/54,Erukkancheri,Chennai-600118','','YES','APPROVED','Pharamacy');
/*!40000 ALTER TABLE `tlfile` ENABLE KEYS */;


--
-- Definition of table `tlfileadd`
--

DROP TABLE IF EXISTS `tlfileadd`;
CREATE TABLE `tlfileadd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `mobile` longtext,
  `filename` longtext,
  `filetype` longtext,
  `filesize` longtext,
  `filecontent` longtext,
  `encrypt` longtext,
  `decrypt` longtext,
  `mail` longtext,
  `dob` longtext,
  `location` longtext,
  `aathor` longtext,
  `age` longtext,
  `address` longtext,
  `license` longtext,
  `status` longtext,
  `team` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tlfileadd`
--

/*!40000 ALTER TABLE `tlfileadd` DISABLE KEYS */;
INSERT INTO `tlfileadd` (`id`,`name`,`mobile`,`filename`,`filetype`,`filesize`,`filecontent`,`encrypt`,`decrypt`,`mail`,`dob`,`location`,`aathor`,`age`,`address`,`license`,`status`,`team`) VALUES 
 (1,'K.C.Municipality Hospital','7418316440','','','','','','','kchospital@gmail.com','Avadi','Near RCM School','Open 24 Hours','4th,street,138,kamaraj nagar 4th main rd,near RCM School,periyar nagar,avadi,tamilnadu 600071','','YES','APPROVED','Hospital'),
 (2,'SS Hyderabad Biriyani','044 4010 4010','','','','','','','sshyderabad@gamil.com','Avadi','Near Avadi Champ H,O','11am-11pm','No 19/A,HVF Tank Rd,Avadi,Tamilnadu 600054','','YES','APPROVED','Hotel'),
 (3,'Indian Oil','9687211555','','','','','','','indianoil@gamil.com','Avadi','Near Ponnu Super Bazar','5am-10pm','SH 55, Lock No 1076/121 Avadi Poonamallee High, Market, near Avadi, Tamil Nadu 600054','','YES','APPROVED','Petrol Bunk'),
 (4,'Go Mechanic-Avadi MCC','8398970970','','','','','','','gomechanic@gmail.com','Avadi','Near optima apartment','8am-8pm','Bharathi Nagar, Selva Nagar, Avadi, Tamil Nadu 600071','','YES','APPROVED','Mechanic'),
 (5,'MedPlus','040 6700 6700','','','','','','','medplus@gmail.com','Avadi','Near Gangai Amman Temple','11am-11pm','D No 265, 258/1A, 1st Main Rd, Nehru Colony, Kamaraj Nagar, Avadi, Tamil Nadu 600071','','YES','APPROVED','Pharmacy'),
 (6,'Fire Service','044 2655 5202','','','','','','','firestation@gmail.com','Avadi','Near ssi church','Open 24 Hours','4464+GHF, Vivekananda Nagar, TNHB Mig V Block, Avadi, Tamil Nadu 600071','','YES','APPROVED','Fire Station'),
 (7,'SS Pandian Hotel','8947849302','','','','','','','sspandianhotel@gmail.com','Avadi','Near avadi bus terminus','11am-11pm','3/9,SH 55,Jaya Nagar,porur,Chennai,Tamilnadu 600116','','YES','APPROVED','Hotel'),
 (8,'Sri Sudharshanam Hospital','044 2655 0355','','','','','','','srisudharshanamhospital@gmail.com','Avadi','Near ponnusamy hotel','Open 24 Hours','6/pc2-1,TNHB Rd,Avadi,Tamilnadu 600054','','YES','APPROVED','Hospital'),
 (9,'Apollo Pharmacy','044 7665 8996','','','','','','','apollopharmacy@gmail.com','Avadi','Near reliance trends','11am-11pm','Plot No, 64, Vanagaram-Ambattur Rd, Ayanambakkam, Ambattur Industrial Estate, Chennai, Tamil Nadu 600095','','YES','APPROVED','Pharmacy'),
 (10,'Bharath Petroleum','1800 22 4355','','','','','','','bharathpetyroleum@gmail.com','Avadi','Near avadi market','5am-10pm','439W+VMF, NH 205, Bhaktavatsala Puram, Avadi, Tamil Nadu 600054','','YES','APPROVED','Petrol Bunk'),
 (11,'Indian petroleum limited ','1800245656','','','','','','','Indianpetroleum@gmail.com','Avadi','Near avadi railway station ','24hours','34,thiru street, thandalam road, avadi, chennai 600054','','YES','APPROVED ','petrol Bunk '),
 (12,'Go Mechanic','8398970970','','','','','','','Gomechanic@gmail.com','Guindy','Near SIDCO industrial estate ','9am - 9 pm','E 10, 3rd Phase, Thiru Vi Ka Industrial Estate, SIDCO Industrial Estate, Guindy, Chennai, Tamil Nadu\n Metro, https://indiapl.com/tamil-nadu/gomechanic-817015','','YES','APPROVED','MECHANIC'),
 (13,'MyTVS Guindy','18002660301','','','','','','','Mytvs@gmail.com','Guindy','Near SIDCO industrial estate ','9am - 7 pm','B 5, Guindy Industrial Estate, SIDCO Industrial Estate, Guindy, Chennai, Tamil Nadu 600032','','YES','APPROVED','Mechanic '),
 (14,'Mahendra Automobiles\n\n','9444279888','','','','','','','Mahendra@gmail.com','Guindy','Near Anna University ','9 am - 9 pm','24, Old No. 34, Vandikaran St, Maduvinkarai, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Mechanic'),
 (15,'ITC Grand Chola\n\n','4422200000','','','','','','','reservations@itchotels.in','Guindy','Near ST Thomas mount','11am - 11 pm','63, Anna Salai, Little Mount, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','HOTEL'),
 (16,'Lemon Tree Hotel, Chennai\n\n','4444232323','','','','','','','Lemontree@gmail.com','Guindy','Near Tidel Park,Tata consultancy services','Open 24 hrs','72, Sardar Patel Rd, Venkta Puram, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','HOTEL'),
 (17,'Pine Tree Signature\n\n','4422201110','','','','','','','pinetreenhotels@gmail.com','Guindy','Near Anna University','Open 24 hrs','3, Sardar Patel Rd, Little Mount, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','HOTEL'),
 (18,'AYUSH Hospital\n\n','6384492720','','','','','','','ayushhospital@gmail.com','Guindy','Near Guindy National park','Open 24 hrs','82, Five Furlong Rd, Maduvinkarai, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Hospital'),
 (19,'Dr. A. Ramachandranâ€™s Diabetes Hospitals\n\n','4442162003','','','','','','','ramachandrandiab@gmail.com','Guindy','Near Guindy metro','Open 24 hrs','Anna Salai, 110, Mount Rd, Opposite ITC Grand Chola Hotel, Little Mount, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Hospital'),
 (20,'Apollo pharmacy\n\n','4423644757','','','','','','','appollomedicines@gmail.com','Guindy','Near Church','8:30 am - 11 pm','No.20, Vannier St, Guindy Industrial Estate, KK Nagar West, Nesapakkam, Chennai, Tamil Nadu 600078\n\n','','YES','APPROVED ','Pharmacy'),
 (21,'VINAYAGA PHARMACY\n\n','9600129159','','','','','','','vinayagapharmacy@gmail.com','Guindy','Near Guindy railway station ','9am - 11 pm','No: 60/5, Bharathi St, Near Railway Station, Race View Colony, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Pharmacy'),
 (22,'HP Petrol pump\n\n','9551648885','','','','','','','hppetrols@gmail.com','Guindy','Near flyover','open 24 hrs','Guindy Flyover, Race View Colony, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Petrol bunk'),
 (23,'Bharath Petroleum\n\n','1800224344','','','','','','','bharatpetroleum@gmail.com','Guindy','Near ST Thomas mount','Open 24 hrs','Sardar Patel Rd, Little Mount, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Petrol bunk '),
 (24,'David Ambulance Service & Eden Undertakers\n\n','9840031540','','','','','','','davidambulance@gmail.com','Guindy','Near railway Station ','Open 24 hrs','No 41, Sardar Patel Road, Guindy, Chennai, Tamil Nadu 600032\n\n','','YES','APPROVED ','Ambulance'),
 (25,'CSI hospital ','9693929286','','','','','','','CSihospital@gmail.com','Guindy','Near Guindy metro','24hours','27/80, pillayar nagar, Guindy, chennai, Tamilnadu 600032','','YES','APPROVED ','Hospital'),
 (26,'CSSI hotel','8989797969','','','','','','','CSSI hospital@gmail.com','Guindy','Near Guindy metro ','24hours',' Patel Rd,Mount, Guindy, Chennai, Tamil Nadu 600032','','YES','APPROVED','Hotel'),
 (27,'Peshawri','4422200000','','','','','','','peshwari@gmail.com','Guindy','Near Guindy bus stop','11:00AM - 9:00PM','ITC Grand Chola Hotel, Little Mount, Guindy, Chennai, Tamil Nadu 600032','','YES','APPROVED','Hotel'),
 (28,'Ottimo Cucina Italiana','4422200000','','','','','','','ottimacucina@gmail.com','Guindy','Near Annaisalai','11:00AM - 9:00PM','ITC Grand Chola, 63, Anna Salai, Guindy, Chennai, Tamil Nadu 600032','','YES','APPROVED','Hotel'),
 (29,'A3 Family Restaurant','9962288810','','','','','','','A3family@gmail.com','Guindy','Near Saravana stores','11:00AM - 9:00PM','Saravana Stores, No.25, 1st Street, opposite to Porur, Somasundaram Avenue, Sakthi Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Hotel'),
 (30,'Suresh Mechanic','99405 31619','','','','','','','suresh@gmail.com','porur','near by signal','10am-10pm','33/25, 9th Street, RE Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Mechanic'),
 (31,'Swastik Vel Bike Mechanic','9952399524','','','','','','','swastik@gmail.com','porur','near by MGR fly over','9am-10:30pm','3-4, Ganesh Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Mechanic'),
 (32,' Sri Ramachandra Hosptial','044 2476 8027','','','','','','','ramachandra@gmail.com','porur','near by Bypass','Opens 24hrs','No.1, Ramachandra Nagar, Sri Ramachandra Nagar, Chennai, Tamil Nadu 600116','','YES','APPROVED','Hospital'),
 (33,'St Joseph Hospital','044 2482 7580','','','','','','','joseph@gmail.com','porur','near by tower','Opens 24hrs','1,2,3,4,5,6, Mount Poonamallee Rd, Theru Veedhi Amman Koil Streets, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Hospital'),
 (34,'Apollo pharmacy','044 2482 6272','','','','','','','apollo@gmail.com','porur','near by highway ','8am-11pm','no 14 shop no, 1 & 2, Mount Poonamallee Rd, Bharathi Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Pharmacy'),
 (35,'Thulasi Medicals','044 2476 1899','','','','','','','thulasi@gmail.com','porur','near by govt hospital','8am-11pm','4/5, Mount Poonamallee Rd, Devi Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Pharmacy'),
 (36,'Grand Residence','044 2476 7611','','','','','','','grand@gmail.com','porur','near vadaplani road','Opens 24hrs','No.85, 86, Arcot Rd, Karambakkam, Rajeswari Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Hotel'),
 (37,'V7 Hotel','044 2476 4777','','','','','','','v7@gmail.com','porur','near murugan temple','Opens 24hrs','3, 191, Mount Poonamallee Rd, Venugopal Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Hotel'),
 (38,'Senthur ambulance service','098401 39943','','','','','','','senthur@gmail.com','porur','near bus stop','Opens 24hrs','3,Maduram Nagar,porur','','YES','APPROVED','Ambulance'),
 (39,'Bharat petrol bank','9882468987','','','','','','','bharat@gmail.com','porur','near kk bus stop','Opens 24hrs','SH 113, Ramanatheshwarar Nagar, Porur, Chennai, Tamil Nadu 600116','','YES','APPROVED','Petrol Bunk'),
 (40,'Sri Ramajeyam Two Weelar Works','095007 88920','','','','','','','ramajeyam@gmail.com','Kanchipuram','near bus stop','8am-9pm','NGO Nagar, Thaiyar Kullam, Kanchipuram, Tamil Nadu 631502','','YES','APPROVED','Mechanic'),
 (41,'TS Auto Mechanic Center','095009 81943','','','','','','','ts@gmail.com','Kanchipuram','near periya kovil','9am-10pm','Thamlath Street, Kanchipuram, Tamil Nadu 631502','','YES','APPROVED','Mechanic'),
 (42,'Hotel SSK Grand','081225 00500','','','','','','','ssk@gmail.com','Kanchipuram','near high school','Opens 24hrs','No 70, Annai Indira Gandhi Salai, Nellukara St, near Sri Chirtra Guptar Temple, Kanchipuram, Tamil Nadu 631502','','YES','APPROVED','Hotel'),
 (43,'RMK hotel','044 2722 5250','','','','','','','rmk@gmail.com','Kanchipuram','near dd road','Opens 24hrs','487, Gandhi Rd, Ennaikaran, Kanchipuram, Tamil Nadu 631502','','YES','APPROVED','Hotel'),
 (44,'C S I Hospital','988878909','','','','','','','csi@gmail.com','Kanchipuram','near bus stop','Opens 24hrs','RPM4+WVW, Hospital Road, Ennaikaran, Kanchipuram, Tamil Nadu 631501','','YES','APPROVED','Hospital'),
 (45,'K.H Hospital','044 2723 7373','','','','','','','kh@gmail.com','Kanchipuram','near avan junction','Opens 24hrs','3b, Sheikpet Nadu St, Ennaikaran, Kanchipuram, Tamil Nadu 631501','','YES','APPROVED','Hospital'),
 (46,'Dhana Pharmacy','044 2476 4777','','','','','','','dhana@gmail.com','Kanchipuram','near bus stop','8am to 9:30pm','RM9V+GG2, Vedachalam Nagar Extension, Gem Nagar, Kanchipuram, Tamil Nadu 631502','','YES','APPROVED','Pharmacy'),
 (47,'Apollo Pharmacy Kanchipuram Gandhi Road','044 2723 3435','','','','','','','apollo@gmail.com','Kanchipuram','near tambaram highway','8am to 10pm','No 277, Gandhi Rd, Ennaikaran, Kanchipuram, Tamil Nadu 631501','','YES','APPROVED','Pharmacy'),
 (48,'Joseph Ambulance Service Kanchipuram','095976 44726','','','','','','','Joseph@gmail.com','Kanchipuram','near kh hospital','Opens 24hrs','No: 11A, Railway Road, Opp to Head Post Office, Kanchipuram, Tamil Nadu 631501','','YES','APPROVED','Ambulance'),
 (49,'Indra Petrol & Disel Agency','9884209876','','','','','','','indra@gmail.com','Kanchipuram','near bus stop','Opens 24hrs','RM9V+23V, Vandavasi Rd, Vedachalam Nagar Extension, Gem Nagar, Kanchipuram, Tamil Nadu 631502','','YES','APPROVED','Petrol Bunk'),
 (50,'Holiday Inn Motels','044 6604 6604','','','','','','','holidyinntam@gmail.com','Tambaram','near Subway Restaurant','24 hrs Open','plot number 131,S 39/1,sivashanmugam pillai street, taluk, Tambaram, Chennai, Tamil Nadu 600045\n','','YES','APPROVED','Hotel'),
 (51,'Indian Oil Petrol Bunk\n','094441 16743','','','','','','','indoilpb@gmail.com','Tambaram','near Railway Station','24 hrs Open','Durai Sami, 10, Duraiswamy Reddy St, near Passport Office, Tambaram West, Tambaram, Chennai, Tamil Nadu 600045','','YES','APPROVED','Petrol Bunk'),
 (52,'KKM Hospital','0124 620 1165','','','','','','','kkmhospitalandclinic@gmail.com','Tambaram','next to Police Station','24','# 6/14, VVS Iyer St, Ganapathipuram, East Tambaram, Tambaram, Chennai, Tamil Nadu 600059','','YES','APPROVED','Hospital'),
 (53,'Topaz Hotels','2226230388','','','','','','','tpzhtl@gmail.com','Tambaram','near KFC','8am - 9pm','Plot No. 6, 1st Main Road, Grand Southern Trunk Rd, near SONY Showroom, Sanatorium, Jayanagar, Chennai, Tamil Nadu 600047','','YES','APPROVED','Hotel'),
 (54,'Mechanic Mani','0992 6023875','','','','','','','mani2893@gmail.com','Tambaram','opp to Aavin milk shop','24hrs','No. 123, PDA Tower, Mudichur Service Rd, near IOB Bank, near Railway Station, Tambaram, Chennai, Tamil Nadu 600045','','YES','APPROVED','Mechanic'),
 (55,'RMP Auto work shop','91 450 4383109','','','','','','','rmpautos@gmail.com','Tambaram','near Arch','11am - 11pm','Dr Anandrao Nair Road Opp Reserve Bank Of India, Tambaram,600045,India','','YES','APPROVED','Mechanic'),
 (56,'Fasthealth Ambulance Service',' 450 43831','','','','','','','fst653@gmail.com','Tambaram','next to Dells showroom','24hrs','Oriental House, J Tata Road Next To Samrat Hotel, Tambaram,Chennai,600045,India','','YES','APPROVED','Ambulance'),
 (57,'Medlifeline Hospitals','91 16 53996435','','','','','','','medlifeline@gmail.com','Tambaram','near  KTG School','24hrs','Grand Southern Trunk Rd, Tambaram East, Tambaram, Chennai, Tamil Nadu 600045','','YES','APPROVED','Pharmacy'),
 (58,'Urban Medicals','91 934 5965516','','','','','','','urbame@gmail.com','Tambaram','near public park','24hrs','Tambaram West, Irumbuliyur, Chennai, Tamil Nadu 600045','','YES','APPROVED','Pharmacy'),
 (59,'Presidency Towers Inn','0429 7352836','','','','','','','predtowersinn@gmail.com','Tambaram','near playground','9am to 9 pm','Kurinji Nagar, Tambaram West, Extension, Chennai, Tamil Nadu 600045','','YES','APPROVED','Hotel'),
 (60,'Billroth Hospital','91 29 52433097','','','','','','','aswani_ardianto16@gmail.co.id','OMR','nearby Government hospital','24hrs','2/304, Rajiv Gandhi Salai, Jothi Nagar, Thoraipakkam, Tamil Nadu 600097','','YES','APPROVED','Hospital'),
 (61,'SSS Hospital','004 92780810','','','','','','','ssshp@gmail.com','OMR','opp to Aavin milk shop','24hrs','2/176 balamurugan garden, Thoraipakkam, OMR, Customs Colony, Sakthi Nagar, Chennai, Tamil Nadu 600096','','YES','APPROVED','Hospital'),
 (62,'QuickFix Ambulance Services','2226790113','','','','','','','qckfix@gmail.com','OMR','near by Sathya stores','5am-12am','1/534, Pillaiyar Koil St, Ellaiamman Nagar, Thoraipakkam, Tamil Nadu 600097','','YES','APPROVED','Ambulance'),
 (63,'Bharat Petroleum','926023875','','','','','','','bhpt@yahoo.co.id','OMR','next to SLAM gym','5am - 11 pm','378, Rajiv Gandhi Salai, Seevaram, Thoraipakkam, Tamil Nadu 600097','','YES','APPROVED','Petrol Bunk'),
 (64,'Medplus ','9500871506','','','','','','','medplus.ind.@gmail.com','OMR','opp to Aavin milk shop','9am - 12 am','142, Rajiv Gandhi Salai, Old, 2nd St, Mettukuppam, Thoraipakkam, Tamil Nadu 60009','','YES','APPROVED','Pharmacy'),
 (65,'Muthu Pharmacy','242456007','','','','','','','muthupharmacyomr@gmail.com','OMR','opp to RJ Tea Stall','11am - 11pm','697, 3, Anand Nagar Main Rd, MCN Nagar, Okkiyam, Thoraipakkam, Tamil Nadu 600097','','YES','APPROVED','Pharmacy'),
 (66,'Arya Inns','44400987','','','','','','','aryainnomrs@gmail.com','OMR','nearby Megamart','8am - 11pm','19, Devaraj Avenue, 1st Cross St, Mettukuppam, Thoraipakkam, Tamil Nadu 600097','','YES\n\n\n','APPROVED','Hotel'),
 (67,'Max Motel','4449643244','','','','','','','maxmotel@gmail.com','OMR','nearby PKS Playground','24hrs','X63W+C79, 1st St, Manikkodi Srinivasan Nagar, Perungudi, Chennai, Tamil Nadu 600096','','YES','APPROVED','Hotel'),
 (68,'Ranjith Mechanic','9870050789','','','','','','','ranjiththala@gmail.com','OMR','next to GRT','7am - 9pm','2, Selvaganapathi Avenue, 17, Seevaram 2nd St, Thorapakkamm, Perungudi, Chennai, Tamil Nadu 600096','','YES','APPROVED','Mechanic'),
 (69,'Pradeep Mechanic','9634176809','','','','','','','pradeepak47@gmail.com','OMR','next to Bharat Petrol Bunk','24 hrs','46,Corporation Rd, Opp:S.M Towers, Thirumalai Nagar Annexe, Perungudi, Chennai, Tamil Nadu 600096','','YES\n','APPROVED','Mechanic'),
 (70,'BPCL Petrol Pump Sakthi Madhumalar Agencies','044 2752 9564','','','','','','','bpclbunk@gmail.com','Melmaruvathur','Near sothupakkam','Open 24 Hours','Thiruchi-Chennai Highway; Melmaruvathur; Tamil Nadu 603319','','YES','APPROVED','Petrol Bunk'),
 (71,'Melmaruvathur,ambulance','994668760','','','','','','','bangaru@gmail.com','Melmaruvathur','Lakshmi Bangaru Nagar,Melmaruvathur','Open 24 Hours','CRJC+68Q,M G Rd,Laksmi Bangaru Nagar,Melmaruvathur,Tamil Nadu 603319','','YES','APPROVED','Ambulance'),
 (72,'SMJ GRAND HOTEL','8015124518','','','','','','','grand@gmail.com','Melmaruvathur','Grand Southern Trunk Rd,Tamilnadu 603301','8am to 11pm','107,3B2,Grand Southern Trunk Rd,Melmaruvathur,603301','','YES','APPROVED','Hotel'),
 (73,'Dr.Rajendran\'s clinic','4476453995','','','','','','','rajendran@gmail.com','Melmaruvathur','Near Krishna Mill','7am to 10pm','Bazar streer,Melmaruvathur. Tamil Nadu 603319','','Yes','APPROVED','Hospital'),
 (74,'Adhiparasakthi Hospital & Reseach  Institute','4427528302','','','','','','','mapims.hr@gmail.com','Melmaruvathur','Near bus stop','Open 24 Hours','Adhiparasakthi Hospital & Research Institute Â· Melmaruvathur, Kancheepuram District Tamilnadu, India 603319','','YES','APPROVED','Hospital'),
 (75,'Apollo','4427529555','','','','','','','apollo@gmail.com','Melmaruvathur','Vandavasi road','7.30 am to 11pm','No 256,Ground Floor cheyur-Vandavasi Rd, Tamil Nadu 603319','','YES','APPROVED','Pharmacy'),
 (76,'Srinivasa Medicals','9894240097','','','','','','','srini@gmail.com','Melmaruvathur','Vandavasi Road,Near bus stop','Open 24 Hours','Vandavasi Road, Sothupakkam, Melmaruvathur,Tamil NAdu 603319','','YES','APPROVED','Pharmacy'),
 (77,'Aryas hotel','9967345208','','','','','','','aryas@gmail.com','Melmaruvathur','near GB school','6am to 11.30pm','Maruvathur bus stop, Melmaruvathur Tamil Nadu 603319','','YES','APPROVED','Hotel'),
 (78,'Mss motors auto electricals','994332167','','','','','','','mssmotors@gmail.com','Melmaruvathur','NH road ,Melmaruvathur','open 24 hours','Grand Southern Trunk Rd, Melmaruvathur, TamilNAdu 603319','','YES','APPROVED','Mechanic'),
 (79,'Sai Punchar shop','993467852','','','','','','','saipunchar@gmail.com','Melmaruvathur','Villupuram-Trichy-Kanyakumari Rd,Melmaruvathur','open 24 hours','Chennai-Villupuram-Trichy-Kanyakumari Rd, Melmaruvathur,TamilNadu 603319','','YES','APPROVED','mechanic'),
 (80,'Veerabathra Motors Service','9884325365','','','','','','','veera@gmail.com','Chengalpattu','near bus stop','9am to 10pm','97a, Grand Southern Trunk Rd, J C K Nagar, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Mechanic'),
 (81,'Ganesh Auto Works','099941 21979','','','','','','','ganesh@gmail.com','Chengalpattu','near periya kovil','8:30am to 9:30pm','Gundur, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Mechanic'),
 (82,'Ranga Hotel','080560 34999','','','','','','','ranga@gmail.com','Chengalpattu','near highway road','Opens 24hrs','No. 7, Alagesan Rd, Vedachalam Nagar, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Hotel'),
 (83,'Hotel Akshay Grand','063744 74727','','','','','','','akshay@gmail.com','Chengalpattu','near tirchy road','Opens 24hrs','115 A, Grand Southern Trunk Rd, Thimmarajakulam, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Hotel'),
 (84,'Shifa Medicals','044 2742 3800','','','','','','','shifa@gmail.com','Chengalpattu','near bus stop','8am to 10:30pm','No 73, Rajaji St, J C K Nagar, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Pharmacy'),
 (85,'MedPlus Chengalpet Rajaji Street','040 6700 6700','','','','','','','rajaji@gmail.com','Chengalpattu','near kh hospital','9am to 11pm','No 77, 74, Rajaji St, J C K Nagar, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Pharmacy'),
 (86,'JSP Hospital','073731 22766','','','','','','','jsp@gmail.com','Chengalpattu','near bus stop','Opens 24hrs','No 70, Kanchipuram High Rd, J C K Nagar, Chengalpattu, Tamil Nadu 603002','','YES','APPROVED','Hospital'),
 (87,'Sree Renga Hospital','044 2743 2240','','','','','','','renga@gmail.com','Chengalpattu','near periya kovil','Opens 24hrs','No .12 Varada Reddy Street, Vedachalam Nagar, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Hospital'),
 (88,'Indian Oil Petrol Bunk','094450 40539','','','','','','','indian@gmail.com','Chengalpattu','near bus stop','Opens 24hrs','M295+RQ4, Chengleput - tirupopur Rd, thir ukalikundram tkne Santhi Nagar, Nenmeli, Nmelikanchi, Chengalpattu, Tamil Nadu 603003','','YES','APPROVED','Petrol bunk'),
 (89,'Saleem&brothers Ambulance service','044 2742 3800','','','','','','','saleem@gmail.com','Chengalpattu','near debo office','Opens 24hrs','396 b, k k nagar, Chengalpattu, Tamil Nadu 603001','','YES','APPROVED','Ambulance'),
 (90,'Om Motors','073731 22766','','','','','','','om@gmail.com','Thanjavur','near periya kovil','9am to 9pm','No.45, Pothupanithurai nagar, Pudukottai Main Rd, near Mahindra SRS Cars, Thanjavur, Tamil Nadu 613005','','YES','APPROVED','Mechanic'),
 (91,'kN S AUTO SERVICE','063744 74727','','','','','','','kns@gmail.com','Thanjavur','near kh street','8:30am to 9:30pm','N S C Bose Nagar, Arulananda Nagar West Extension, Thanjavur, Tamil Nadu 613007','','YES','APPROVED','Mechanic'),
 (92,'MVK Hospital','063744 74727','','','','','','','mvk@gmail.com','Thanjavur','near main street','Opens 24hrs','No 2772/1, Nanayakkara Chetty St, Rajakrisnapuram, Thanjavur, Tamil Nadu 613009','','YES','APPROVED','Hospital'),
 (93,'Meenakshi Hospital','073731 22766','','','','','','','meenakshi@gmail.com','Thanjavur','near main highway','Opens 24hrs','244/2, Trichy Main Road, Near New Bus Stand, Nilagiri, Therkku Thottam, Thanjavur, Tamil Nadu 613005','','YES','APPROVED','Hospital'),
 (94,'State Pharmacy','063744 74727','','','','','','','state@gmail.com','Thanjavur','near state hospital','8:30am to 9pm','No. 9, Yagappa Nagar, Pudukkottai, N Main St, Yagappa Nagar, Thanjavur, Tamil Nadu 613007','','YES','APPROVED','Pharmacy'),
 (95,'Singaram Medical Store','080560 34999','','','','','','','singaram@gmail.com','Thanjavur','near periya kovil','8:30am to 9:30pm','near sivagangai garden, Rajakrisnapuram, South Rampart, Thanjavur, Tamil Nadu 613001','','YES','APPROVED','Pharmacy'),
 (96,'Hotel Oriental Towers','04362 230 450','','','','','','','towers@gmail.com','Thanjavur','near kh hospital','Opens 24hrs','Railway Station, Hotel Oriental Towers, 2889, Srinivasam Pillai Rd, near Tanjore, Thanjavur, Tamil Nadu 613001','','YES','APPROVED','Hotel'),
 (97,'Hotel Gnanam','04362 278 501','','','','','','','gnanam@gmail.com','Thanjavur','near highway road','Opens 24hrs','Anna Salai Rd, Near Old Bus Stand, Attar Mohalla, Thanjavur, Tamil Nadu 613001','','YES','APPROVED','Hotel'),
 (98,'DLRV Agencies IOCL Petrol bunk','063744 74727','','','','','','','dlrv@gmail.com','Thanjavur','near service road','Opens 24hrs','14, Nanjikottai Rd, Parisutham Nagar, Thanjavur, Tamil Nadu 613006','','YES','APPROVED','Petrol bunk'),
 (99,'King Air and Train Ambulance Services','073731 22766','','','','','','','king@gmail.com','Thanjavur','near gh hospital','Opens 24hrs','Q4PQ+Q7X, Road Inside Old Bus Stand, Rajakrisnapuram, Thanjavur, Tamil Nadu 613001','','YES','APPROVED','Ambulance'),
 (100,'Nagalakshmi Ambulance Service','094445 53588','','','','','','','naga@gmail.com','Ambattur','near kh service','Opens 24hrs','12/24, Menambedu, Munuswamy, Koil St, Kallikuppam, Chennai, Tamil Nadu 600053','','YES','APPROVED','Ambulance'),
 (101,'Sree Sakthi Agencies Indian Oil Petrol Pump','073731 22766','','','','','','','sakthi@gmail.com','Ambattur','near split road','Opens 24hrs','4535+462, Chennai Tiruvallur High Rd, Shanthi Nagar, Sidco Industrial Estate, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Petrol bunk'),
 (102,'Ravi mechanic','080560 34999','','','','','','','ravi@gmail.com','Ambattur','near highway road','8:30am to 9pm','38, Hindustan Motor Nagar Rd, Sri Nagar, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Mechanic'),
 (103,'Bobby Auto Works','063744 74727','','','','','','','bobby@gmail.com','Ambattur','near split road','8am to 9:30pm','No. 33, Ambattur Red Hills Rd, Vinayagapuram, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Mechanic'),
 (104,'JP Hotel Chennai','044 4028 8000','','','','','','','jp@gmail.com','Ambattur','near gh road','Opens 24hrs','131, 100 Feet Rd, Jai Nagar, Koyambedu, Chennai, Tamil Nadu 600107','','YES','APPROVED','Hotel'),
 (105,'OYO 87088 VSV Guest House','073731 22766','','','','','','','oyo@gmail.com','Ambattur','near medical shop','Opens 24hrs','83, Ward 83, Zone, CMWSSB Division, 7, Ambattur, Mugambigai Nagar, Ambattur, Chennai, Tamil Nadu 600081','','YES','APPROVED','Hotel'),
 (106,'Karuppiah Pharmacy','073731 22766','','','','','','','karupp@gmail.com','Ambattur','near sk store','9am to 10:30pm','NO: 37 B, Madras Thiruvallur High Rd, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Pharmacy'),
 (107,'Dhana Pharmacy','073731 22766','','','','','','','dhana@gmail.com','Ambattur','near kh hospital','Opens 24hrs','4593+57R, Old MTH Rd, Secretariat Colony, Venkatapuram, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Pharmacy'),
 (108,'Teja Hospital','072990 08452','','','','','','','teja@gmail.com','Ambattur','near main road','Opens 24hrs','471, Madras Thiruvallur High Rd, Manthoppu Nagar, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Hospital'),
 (109,'Sir Ivan Stedeford Hospital','073731 22766','','','','','','','ivan@gmail.com','Ambattur','near bus stop','Opens 24hrs','7, Madras Thiruvallur High Rd, Shobha Nagar, OT, Ambattur, Chennai, Tamil Nadu 600053','','YES','APPROVED','Hospital'),
 (110,'BS Hospital Ooty','0423 244 3671','','','','','','','bs@gmail.com','Ooty','near bus stop','Opens 24hrs','9MWW+XQX, Dasaprakash Rd, Bishop Down, Fern Hill, Ooty, Tamil Nadu 643001','','YES','APPROVED','Hospital'),
 (111,'Sanhita Hospital','073731 22766','','','','','','','santia@gmail.com','Ooty','near gh road','Opens 24hrs','90, Ettines Rd, Race Course, Ooty, Tamil Nadu 643001','','YES','APPROVED','Hospital'),
 (112,'RP Car Auto Garage','073731 22766','','','','','','','rp@gmail.com','Ooty','near rp road','8:30am to 9 pm','CM7P+HRX, Kandal, Ooty, Tamil Nadu 643006','','YES','APPROVED','Mechanic'),
 (113,'Hotel Lakeview','0423 244 3904','','','','','','','lake@gmail.com','Ooty','near ot road','Opens 24hrs','West Lake Road, Ooty, Tamil Nadu 643004','','YES','APPROVED','Hotel'),
 (114,'goSTOPS OOTY','077608 87596','','','','','','','gostop@gmail.com','Ooty','near tn bypass','Opens 24hrs','264, Off, Gymkhana Gold Link Road, Fingerpost, Ooty, Tamil Nadu 643006','','YES','APPROVED','Hotel'),
 (115,'BS Pharmacy','097872 11000','','','','','','','bs@gmail.com','Ooty','near nelgiris','Opens 24hrs','190, Ettines Rd, Race Course, Ooty, Tamil Nadu 643001','','YES','APPROVED','Pharmacy'),
 (116,'Sanhita Pharmacy','0423 244 3671','','','','','','','sanhita@gmail.com','Ooty','near th road','Opens 24hrs','9MWW+XQX, Dasaprakash Rd, Bishop Down, Fern Hill, Ooty, Tamil Nadu 643001','','YES','APPROVED','Pharmacy'),
 (117,'Bharat Petroleum, Petrol Pump','0423 244 3904','','','','','','','bharat@gmail.com','Ooty','near kh road','Opens 24hrs','COONOOR RD, OOTY, THE NILGIRIS, Tamil Nadu 643001','','YES','APPROVED','Petrol bunk'),
 (118,'Coonoor Star ambulance','072990 08452','','','','','','','coonor@gmail.com','Ooty','near mountain road','opens 24hrs','643102, MDR 1073, Vannarpet, Coonoor, Tamil Nadu 643101','','YES','APPROVED','Ambulance'),
 (119,'The Vellore Kitchen','4162223330','','','','','','','vellorekitchen@gmail.com','Vellore','Near vellore fort','10:30AM - 10:30PM','New Bangalore Service Road, No: 1, Near Green Circle, NH 46 Service Rd, Vellore, Tamil Nadu 632004','','YES','APPROVED','Hotel'),
 (120,'Hot stone Kitchen','9962676676','','','','','','','hotstone@gmail.com','Vellore','Near RTO office','11:00AM - 11:00PM','28, Fatha Apartment, Vivekanandha Street All Mart Road, near VIT, Katpadi, Vellore, Tamil Nadu 632007','','YES','APPROVED','Hotel'),
 (121,'Apollo Pharmacy Katpadi Road','4162220038','','','','','','','appollooo@gmail.com','Vellore','Near deccan chronicle ','24hours','No: 54/12, Katpadi Rd, near CMC Outgate, Thottapalayam, Vellore, Tamil Nadu 632004','','YES','APPROVED','Pharmacy'),
 (122,'Sun Pharmacy','9789655894','','','','','','','sun234@gmail.com','Vellore','Near tcs company','24hours','W47G+328, govindharaj, Ramasamy Mudali St, Kaspa, Vellore, Tamil Nadu 632001','','YES','APPROVED','Pharmacy'),
 (123,'Vellore Government Hospital','9898787865','','','','','','','velloregh@gmail.com','Vellore','Near lm road','24hours','R4VP+QQP, Arani Road, Opposite Staff Quarters, Adukkamparai, Vellore, Tamil Nadu 632011','','YES','APPROVED','Hospital'),
 (124,'Vellore CMC Hospital','9023456789','','','','','','','cmc@gmail.com','Vellore','Near passport seva','24hours','SH 207, Sasthri Nagar, Krishna Nagar, Veerasamy Nagar, Vellore, Tamil Nadu 632001','','YES','APPROVED','Hospital'),
 (125,'Vellore Ambulance Service (Zion Ambulance)','9543343442','','','','','','','zion23@gmail.com','Vellore','Near pothys','24hours','Arcot Road Thottapalayam Near CMC Jubilee Gate, Vellore, Tamil Nadu 632004','','YES','APPROVED','Ambulance'),
 (126,'KGS Ambulance services','9842352390','','','','','','','kgsas@gmail.com','Vellore','Near vellore bus terminus','24hours','8, Voc Nagar Rd, near Nalam hospital, Phase 2, Sathuvachari, Vellore, Tamil Nadu 632012','','YES','APPROVED','Ambulance'),
 (127,'Indian Oil Petrol Pump','9876543219','','','','','','','indianopp@gmail.com','Vellore','Near leather company','24hours','X5V4+VMX, Pallikuppam, Tamil Nadu 632106','','YES','APPROVED','Petrol Bunk'),
 (128,'HP PetrolBunk','9087654321','','','','','','','hppetro@gmail.com','Vellore','Near vellore bus terminus','24hours','X4PV+6CV, RadhaKrishnan Nagar, Katpadi, Vellore, Andhra Pradesh 632007','','YES','APPROVED','Mechanic'),
 (129,'Jai Mechanic','9751232040','','','','','','','jaimechanic@gmail.com','Vellore','Near vellore railway station','9:00AM - 6:00PM','X42P+23G, West Main Road, West Main Road, Near Beauty Parlour, Katpadi, Vellore, Tamil Nadu 632006','','YES','APPROVED','Hotel'),
 (130,'Ambur Star Biriyani','9780654321','','','','','','','AmburStarBiriyani@gmail.com','Arcot','Near RTO office','12:00AM-2:00PM','SH 4, Arcot, Tamil Nadu 632503','','YES','APPROVED','Hotel'),
 (131,'Savoury Sea Shell Restaurant','9678054321','','','','','','','SavourySeaShell@gmail.com','Arcot','Near kamal stores','11:00AM-11:30PM','274, Arcot - Vellore Bye Pass, Road, Arcot, Tamil Nadu 632503','','YES','APPROVED','Pharmacy'),
 (132,'Shameem Pharmacy','8989767654','','','','','','','ShameemPhar@gmail.com','Arcot','Near shameela boutique','24 hours','405, Anna Salai Main Rd, Melvisharam, Tamil Nadu 632509','','YES','APPROVED','Pharmacy'),
 (133,'KH Pharmacy','8787989890','','','','','','','khpharma@gmail.com','Arcot','Near arcot police station','24 hours','AH45, Melvisharam, Tamil Nadu 632509','','YES','APPROVED','Hospital'),
 (134,'Arcot Government Hospital','9876543789','','','','','','','ArcotGH@gmail.com','Arcot','Near arcot police station','24hours','W83M+H9V, SH 5, Arcot, Tamil Nadu 632503','','YES','APPROVED','Hospital'),
 (135,'AC Multi Speciality Clinic','8976543210','','','','','','','ACMultiSpeciality@gmail.com','Arcot','Near arcot police station','24hours','Vellore, SH-129, Arcot Kannamangalam Road, Arcot, Arcot, 632503','','YES','APPROVED','Ambulance'),
 (136,'Kutty & Co Ambulance Service','7897897890','','','','','','','Kutty&CoAmbulanceService@gmail.com','Arcot','Near arcot bus terminus','24hours','No.1/30, Ramar Kovil St, G.H, Adukkamparai, Tamil Nadu 632011','','YES','APPROVED','Ambulance'),
 (137,'Falcon EmergencyAmbulance Services','9205909876','','','','','','','Falcon@gmail.com','Arcot','Near arcot new bus stop','24hours','H. No. B-125, Fort Round Road, Balaji Nagar, near Water Tank, Vellore, Tamil Nadu 632004','','YES','APPROVED','Ambulance'),
 (138,'Hindustan Petroleum','3666366689','','','','','','','HindustanPetr@gmail.com','Arcot','Near highschool ','24hours','Ranipet, Vellore, NH-4, Thiruvalam Ranipet Chennai Road, Arcot, Arcot, 632401','','YES','APPROVED','PetrolBunk'),
 (139,'Sri Lakshmi Auto Works','9003594747','','','','','','','SrIILakshmi@gmail.com','Arcot','Near gta theme park','10:00AM - 4:00PM','Vellore, SH-129, Arcot Kannamangalam Road, Arcot, Arcot, 632503','','YES','APPROVED','Mechanic'),
 (140,'GREEN VALLEY RESTAURANT','8989767654','','','','','','','greenvalley@gmail.com','Arakkonam','Near RTO office','11:00AM - 11PM','79, Tiruttani High Road, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Hotel'),
 (141,'PANAI MARAM RESTAURANT','9008070605','','','','','','','pannai@gmail.com','Arakkonam','Near arrakonam railway station','9:00AM - 9:30PM','Thiruthani Rd, Arakkonam, Tamil Nadu 631003','','YES','APPROVED','Hotel'),
 (142,'CURE PHARMACY','9344440006','','','','','','','cure@gmail.com','Arakkonam','Near arrakonam gas station','24hours','32/1, Murugappa Street, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Pharmacy'),
 (143,'MedPlus Arakonam Gandhi Road','4067006700','','','','','','','mediiepharma@gmail.com','Arakkonam','Near arrakonam bus terminus','24hours','No 95, Gandhi road, Arakkonam, Tamil Nadu 631003','','YES','APPROVED','Pharmacy'),
 (144,'CSI Hospital','8234567889','','','','','','','csihospi@gmail.com','Arakkonam','Near arrakonam railway station','24hours','16/29, Sarojini St, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Hospital'),
 (145,'Arakkonam Government General Hospital','4177232270','','','','','','','Arakgovern@gmail.com','Arakkonam','Near arrakonam police station','24hours','3MM7+XVQ, SH58, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Hospital'),
 (146,'Guna Ambulance','7676757578','','','','','','','guna@gmail.com','Arakkonam','Near winterpet company','24hours','3MG4+38W, Winterpet, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Ambulance'),
 (147,'Kvm Ambulance Advanced Life Support','987654098','','','','','','','kvm@gmail.com','Arakkonam','Near permunchi post office','24hours','185, Sholingur Rd, Near Old Bus Stand, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Ambulance'),
 (148,'HP PETROL PUMP - ADHOC','9090909897','','','','','','','hppetrole@gmail.com','Arakkonam','Near permunchi post office','24hours','Hpcl Retail Bunk Arakkonam-kancheepuram State Highway Perumuchi Post, Arakkonam, Chennai, Tamil Nadu 631002','','YES','APPROVED','Petrol Bunk'),
 (149,'RAJA CAR MECHANIC','7890654378','','','','','','','rajaaa@gmail.com','Arakkonam','Near jeyachandran textiles','9:00AM - 7:00PM','3MCF+G4G, Arakkonam, Tamil Nadu 631001','','YES','APPROVED','Mechanic'),
 (150,'Thoondil The Family Restaurant','7890654321','','','','','','','thoondil@gmail.com','Sholinghur','Near RTO office','12:30PM - 3:30PM','19A, East Coast Road Paniyur, J Nagar, Chennai, Tamil Nadu 600119','','YES','APPROVED','Hotel'),
 (151,'Habbat Global cuisine restaurant','8893192020','','','','','','','habbat@gmail.com','Sholinghur','Near ktk town','12:00PM-11:00PM','KTK Town, TNHB, Sholinganallur, Chennai, Tamil Nadu 600119','','YES','APPROVED','Hotel'),
 (152,'Swasti Pharmacy','8754543304','','','','','','','swasti@gmail.com','Sholinghur','Near Omr road','24hours','No. 70, Rajiv Gandhi Salai (OMR ROAD), Sholinganallur, Chennai, Tamil Nadu 600119','','YES','APPROVED','Pharmacy'),
 (153,'Apollo Pharmacy Sholinganallur','4424500005','','','','','','','applollo24@gmail.com','Sholinghur','Near  bus terminus','24hours','New No 13, Old No 8, MGR Rd, Sholinganallur, Tamil Nadu 600119','','YES','APPROVED','Pharmacy'),
 (154,'SRI SUGAM HOSPITAL','4448504246','','','','','','','srisugam@gmail.com','Sholinghur','Near railway Station','24hours','PIN 196, I T HIGHWAY, Sholinganallur, Chennai, Tamil Nadu 600119','','YES','APPROVED','Hospital'),
 (155,'Chettinad Hospital','4443402800','','','','','','','chettinadu@gmail.com','Sholinghur','Near aavin depot','24hours','Kelambakkam, Sholinganallur, Chennai, Tamil Nadu 600097','','YES','APPROVED','Hospital'),
 (156,'Flyinng Squad Ambulance Service','8428077777','','','','','','','flyingsquad@gmail.com','Sholinghur','Near hindhu newspaper','24hours','Panchayath Shopping Complex, Shop No. 15, opposite to Aavin Depot, Sholinganallur, Chennai, Tamil Nadu 600119','','YES','APPROVED','Ambulance'),
 (157,'JOSH Ambulance service','8979690905','','','','','','','josh@gmail.com','Sholinghur','Near medavakkam bus terminus','24hours','11, 159, Mambakkam - Medavakkam Main Rd, near Medson Diagnostics, Munusamy Nagar, Vimala Nagar, Medavakkam, Chennai, Tamil Nadu 600100','','YES','APPROVED','Ambulance'),
 (158,'Bharat Petroleum','1800224344','','','','','','','bharattt@gmail.com','Sholinghur','Near kalaignar post office','24hours','Laxmi Nagar Extension, Sholinganallur, Chennai, Tamil Nadu 600119','','YES','APPROVED','petrol Bunk'),
 (159,'Narpavi Mechanic','8220877843','','','','','','','narpavi@gmail.com','Sholinghur','Near laxmi stores','8:00AM - 5:00PM','No 384, Village High Road, Kalaignar Karunanidhi Salai, Ezhil Nagar, Sholinganallur, Chennai, Tamil Nadu 600119','','YES','APPROVED','Mechanic'),
 (160,'the graet empire hotel','044 6454 1235','','','','','','','bharat@gmail.com','chennai','Near parrys corner','10AM - 2PM','no 6,kaliamman kovil street,koyambedu,chenai,tamilnadu-600107','','YES','APPROVED','Hotel'),
 (162,'fabhotel k-square koyambedu','704242242','','','','','','','fabhotel@gmail.com','chennai','Near koyambedu market','12pm-11am','no 231,100 fet road,koyambedu,chennai,tamil nadu,600107','','YES','APPROVED','Hotel'),
 (163,'LS hospital ','8989765432','','','','','','','lshospi@gmail.com','chennai','Near chennai egmore','24 hours','azhagammal nagar,koyambedu,chennai,tamil nadu 600107','','YES','APPROVED','Hospital'),
 (164,'ABC health care ','098512 0664','','','','','','','abchealthcare@gmail.com','chennai','Near koyambedu market','9am - 10pm','358Q+3FV,koyambedu chennai,tamil nadu 600107','','YES','APPROVED','Hospital'),
 (165,'indian petrol bank ','099622 32229','','','','','','','indianpetro@gmail.com','chennai','Near moore market','24 hours','9,poonamalle,high rd,nerkundram,chennai,tamil nadu600107','','YES','APPROVED','PetrolBunk'),
 (166,'bharat petrol bank','1800 22 4344','','','','','','','bharatpetrol@gmail.com','chennai','Near Kassim Road','6am - 10:30 pm','koyambedu,chennai,tamil nadu 600107','','YES','APPROVED','PetrolBunk'),
 (167,'gomechanic-baskar auto works','098401 68845','','','','','','','gomechanicbhaskhar@gmail.com','chennai','Near saidapet','9am - 9pm ','18/2,kaliamman kovil st,virrugampakkam,koyambedu,chennai,tamil nadu 600107','','YES','APPROVED','Mechanic'),
 (168,'johns garage','099626 14133','','','','','','','johnsgarage@gmail.com','chennai','Near post office','9am - 8 pm','no50 suganthi avenue,1st main rd,nerkundram,chennai,tamil nadu 600107','','YES','APPROVED','Mechanic'),
 (169,'apollo pharmacy koyambedu','044 2479 5547','','','','','','','appoplooo@gmail.com','chennai','Near RTM road','7:30am - 11pm','chennai mofussil bus terminius,ground floor,koyambedu,chennai,tamil nadu 600107','','YES','APPROVED','Pharmacy'),
 (170,'medi hub pharmacy','099628 11989','','','','','','','medhub@gmail.com','chennai','Near sivan kovil','9:30am - 9:30pm','1,perumal koil st,koyambedu,chennai,tamil nadu 600107','','YES','APPROVED','Pharmacy'),
 (171,'The Chain Blaack Restaurant','7878787890','','','','','','','chainblack@gmail.com','Madurai','Near kk nagar','11:00AM - 4:00PM','391, Obula Shopping Complex Sarveshwarar, Kovil St, Anna Nagar, Sathamangalam, Tamil Nadu 625020','','YES','APPROVED','Hotel'),
 (172,'JALLIKATTU RESTAURANT','7550333330','','','','','','','jallikattu@gmail.com','Madurai','Near madurai athisayam theme park','9:00AM - 12:00PM','NO.7/1, Abdul Gafar Khan Rd, KABARKHAN COLONY, Chinna Chokikulam, Tamil Nadu 625002','','YES','APPROVED','Hotel'),
 (173,'Dhyanalinga Pharmacy','4522535121','','','','','','','dhyanalinga@gmail.com','Madurai','Near chokikulam','24hours','7-B, Opp. To Income Tax Office, V.P. Rathanasamy Nadar Road, Bi-Bi Kulam, Madurai, Tamil Nadu 625002','','YES','APPROVED','Pharmacy'),
 (174,'Thulasi Pharmacies India Pvt Ltd','9943979770','','','','','','','thulasi@gmail.com','Madurai','Near aavin depot','24hours','9/1, S Masi St, Periyar, Madurai Main, Madurai, Tamil Nadu 625001','','YES','APPROVED','Pharmacy'),
 (175,'Arun Hospital Madurai','4524545777','','','','','','','arunhospital@gmail.com','Madurai','Near railway Station','24hours','14a, Munichalai Rd, Nelpettai, Krishna Puram, Madurai, Tamil Nadu 625009','','YES','APPROVED','Hospital'),
 (176,'Vadamalayan Hospitals Pvt Ltd','4522545400','','','','','','','vadamalayan@gmail.com','Madurai','Near police station','24hours','Chockikulam, 15/1, Vallabh Bhai Rd, Madurai, Tamil Nadu 625002','','YES','APPROVED','Hospital'),
 (177,'VM Ambulance- 24 Hours Ambulance Service','9788868201','','','','','','','vmambulance@gmail.com','Madurai','Near madurai bus terminus','24hours','Old Dindigul Road Near Southern Railway Colony, Arasaradi, Madurai, Tamil Nadu 625016','','YES','APPROVED','Ambulance'),
 (178,'J P Ambulance & Trust','9442553390','','','','','','','jpambulance@gmail.com','Madurai','Near madurai bus terminus','24hours','opposite Bus Stop, Chokkalinga Nagar, Koodal Nagar, Madurai, Tamil Nadu 625018','','YES','APPROVED','Ambulance'),
 (179,'Bharat Petroleum, Petrol Pump -Lakshmi Agency','1800224344','','','','','','','bharathpetrol@gmail.com','Madurai','Near madurai bus terminus','24hours','VASANTHAM NAGAR,TPK RD,M, Madurai, Tamil Nadu 625003','','YES','APPROVED','PetrolBunk'),
 (180,'Humayun Auto Garage','4522326072','','','','','','','humayum@gmail.com','Madurai','Near madurai athisayam theme park','8:00AM - 6:00PM','215, North Masi Street, North Masi Street, Madurai Main Road, near ICICI Bank, Madurai, Tamil Nadu 625001','','YES','APPROVED','Mechanic'),
 (181,'Raam Restaurant','8667888502','','','','','','','@gmail.com','Tirchy','Near SRM college','11:00AM - 9:00PM','55/1 10th Cross, 80 Feet Rd, Thillai Nagar, Tiruchirappalli, Tamil Nadu 620018','','YES','APPROVED','Hotel'),
 (182,'The G.O.A.T Restaurant','8870189606','','','','','','','thegoat@gmail.com','Tirchy','Near NIT COLLEGE','3:00PM - 12:00AM','No 59A, Navaladian Arcade, 1st Floor, Bishop Rd, Nal Road, near Puthur, Junction, Tiruchirappalli, Tamil Nadu 620017','','YES','APPROVED','Hotel'),
 (183,'Royal Pharmacy','456456765','','','','','','','royal@gmail.com','Tirchy','Near uchipilayar kovil','24hours','39, Keela Chathiram Rd, Tennur, Tiruchirappalli, Tamil Nadu 620017','','YES','APPROVED','Pharmacy'),
 (184,'Apollo Pharmacy Periyasamy Tower','4312714474','','','','','','','appoloo24@gmail.com','Tirchy','Near periyasamy tower','24hours','No .31 Shop no: 15, Periyasamy Towers, SRC, College Rd, opposite ChattiramBus Stand, Tiruchirappalli, Tamil Nadu 620002','','YES','APPROVED','Pharmacy'),
 (185,'GVN Hospital (P) Ltd. - Multispecialty Hospital','4312700712','','','','','','','gvnhospi@gmail.com','Tirchy','Near uchipilayar kovil','24hours','No 46, near Super Bazaar, Singarathope, Tiruchirappalli, Tamil Nadu 620008','','YES','APPROVED','Hospital'),
 (186,'Maruti Hospital','4312240000','','','','','','','maruti@gmail.com','Tirchy','Near NIT COLLEGE','24hours','95, Pattabiraman Salai, Anna Nagar, Tennur, Tiruchirappalli, Tamil Nadu 620017','','YES','APPROVED','Hospital'),
 (187,'Annai Ambulance','9443161961','','','','','','','annaiambul@gmail.com','Tirchy','Near SRM college','24hours','83/1, Goods Shed Rd, Kilapudur, Tiruchirappalli, Tamil Nadu 620001','','YES','APPROVED','Ambulance'),
 (188,'SRI BALAJI AMBULANCE SERVICE','9205909876','','','','','','','sribaalaji@gmail.com','Tirchy','Near trichy railway station','24hours','1st Cross Rd, Thillai Nagar East, West Thillai Nagar, Tennur, Tiruchirappalli, Tamil Nadu 620018','','YES','APPROVED','Ambulance'),
 (189,'YESODHAI PETROL BUNK','9443704849','','','','','','','yesodhai@gmail.com','Tirchy','Near trichy bus terminus','24hours','1, Rockins Rd, near Central Bus Stand, Cantonment, Tiruchirappalli, Tamil Nadu 620001','','YES','APPROVED','Petrol Bunk'),
 (190,'Mari mechanic shop','8903526065','','','','','','','marimechanic@gmail.com','Tirchy','Near trichy railway station','9:00AM - 4:00PM','38, Krishnapuram Muslim St, Krishnapuram, Tharanallur, Tiruchirappalli, Tamil Nadu 620008','','YES','APPROVED','Mechanic'),
 (191,'On The Go','4224520117','','','','','','','onthego@gmail.com','Coimbatore','Near anna statue','8:00AM - 9:00PM','167, Race Course Rd, near RK Photo Center, Gopalapuram, Coimbatore, Tamil Nadu 641018','','YES','APPROVED','Hotel'),
 (192,'Anandhass restaurant','4222226555','','','','','','','annaiambul@gmail.com','Coimbatore','Near global school','7:00AM - 7:00PM ','1096, Cross Cut Rd, Near Signal, Signal, Gandhipuram, Tamil Nadu 641012','','YES','APPROVED','Hotel'),
 (193,'Bharathan pharmacy','4224348080','','','','','','','bhrathan@gmail.com','Coimbatore','Near railway station','24hours','108, Government Arts College Rd, Opposite Court, Gopalapuram, Coimbatore, Tamil Nadu 641018','','YES','APPROVED','Pharmacy'),
 (194,'St. Mary\'s Medicals','4222301165','','','','','','','stmarys@gmail.com','Coimbatore','Near coimbatore bus terminus','24hours','8/462, Trichy Rd, Opp. C.M.C Government Hospital, Opp. Government Hospital, Highways Colony, Gopalapuram, Coimbatore, Tamil Nadu 641018','','YES','APPROVED','Pharmacy'),
 (195,'Government Hospital, Coimbatore','4222392186','','','','','','','ghhospi@gmail.com','Coimbatore','Near RTO office','24hours','1561, Trichy Rd, Highways Colony, Gopalapuram, Coimbatore, Tamil Nadu 641018','','YES','APPROVED','Hospital'),
 (196,'KG Hospital','4224042121','','','','','','','kghospital@gmail.com','Coimbatore','Near post office','24hours','5, Government Arts College Rd, Opposite Court, Gopalapuram, Coimbatore, Tamil Nadu 641018','','YES','APPROVED','Hospital'),
 (197,'Kovai Speed Ambulance Service','9843753357','','','','','','','kovaispeed@gmail.com','Coimbatore','Near coimbatore railway station','24hours','No.15/A, Erananjam Arakattalai, Arokiya, Thirumalaisamy St, R.S. Puram, Coimbatore, Tamil Nadu 641002','','YES','APPROVED','Ambulance'),
 (198,'City Ambulance','9843812345','','','','','','','cityambulance@gmail.com','Coimbatore','Near coimbatore bus terminus','24hours','496-A, Cross Cut Rd, Near Ganga Hospital Corner, Ram Nagar, CBE, Ram Nagar, Gandhipuram, Tamil Nadu 641009','','YES','APPROVED','Ambulance'),
 (199,'HP PETROL PUMP - DEVI AND COMPANY','9443180933','','','','','','','hppetrol@gmail.com','Coimbatore','Near coimbatore railway station','24hours','HP Dealers, 49, Madurai Rd, Bharathiyar Salai, Sangillyandapuram,coimbatore','','YES','APPROVED','PetrolBunk'),
 (200,'Alagu Services','9443722351','','','','','','','sunrise@gmail.com','Coimbatore','Near Service lane','24hours','154, 152, Vivekananda St, Ram Nagar, Coimbatore, Tamil Nadu 641009','','YES','APPROVED','Mechanic'),
 (201,'Sunrise Hotel','9800534203','','','','','','','drjhp@gmail.com','Redhills','Nearby Modern Temple School','11:00AM-11:00PM','#490-A,, GNT Road (Near Service Lane), Redhills, Chennai, Tamil Nadu 600066','','YES','APPROVED','Hotel'),
 (202,'DRJ Hospital','750089706`','','','','','','','vasanhsopital@gmail.com','Redhills','Next to Salem RR Biriyani','11:00AM-11:00PM','55WM+GQF, Red Hills, Padianallur, Tamil Nadu 600052','','YES','APPROVED','Hospital'),
 (203,'Vasan Hospital','9790894322','','','','','','','wsambulance@gmail.com','Redhills','Nearby R1 Aquarium','11:00AM-11:00PM','GNT Rd, Red Hills, Chennai, Tamil Nadu 600052','','YES','APPROVED','Hospital'),
 (204,'Westside Ambulance','9800789022','','','','','','','hppb@gmail.com','Redhills','Opp to Juicebox','11:00AM-11:00PM','55VG+WCM, Redhills - Thiruvallur High Rd, M.A.Nagar, Red Hills, Padianallur, Tamil Nadu 600052','','YES','APPROVED','Ambulance'),
 (205,'HP Petrol Bunk','4449630098','','','','','','','muthupharmacyredhills@gmail.com','Redhills','Opp to Singapore Shopping','11:00AM-11:00PM','56J5+J4X, Madavaram Red Hills Rd, Grant Lyon, Red Hills, Chennai, Tamil Nadu 600052','','YES','APPROVED','Petrol Bunk'),
 (206,'Muthu Pharmacy','4477223093','','','','','','','ramehs382@gmail.com','Redhills','Opp to JP Military Hotel','11:00AM-11:00PM','servey no 57/1 200 feet inner ring road, manjambakkam, Chennai, Tamil Nadu 600060','','YES','APPROVED','Pharmacy'),
 (207,'Ramesh Medicals','9898006712','','','','','','','fippinn@gmail.com','Redhills','Nearby DRJ Hospital','11:00AM-11:00PM','1/25, Perumal koil street, Mallima Nagar Area, Dhargaas, Chennai, Tamil Nadu 600052','','YES','APPROVED','Pharmacy'),
 (208,'Fippola Inn','9600971685','','','','','','','kinn@gmail.com','Redhills','Nearby Surya Marriage Hall','11:00AM-11:00PM','Gnt road, thandalkazhani, kavangarai Puzhal, chennai No. 90, Chennai, Tamil Nadu 600110','','YES','APPROVED','Hotel'),
 (209,'Klausser Inns','9003957193','','','','','','','prakshrowdy@gmail.com','Redhills','Next to Prasad Lab Studio','11:00AM-11:00PM','No.2/37, Chamundi Complex, GNT Road, Redhills, Chennai, Tamil Nadu 600052','','YES','APPROVED','Hotel'),
 (210,'Mechanic Prakash','8900672004','','','','','','','mechanicprakash@gmail.com','Redhills','Opp to CSI Church','11:00AM-11:00PM','10,11,12 vishnu Nagar,Annex Grand Layon Village, Vadaperumbakkam, Chennai, Tamil Nadu 600060','','YES','APPROVED','Mechanic'),
 (211,'Aasifa Biriyani','8939641641','','','','','','','aasifabiriyani@gmail.com','Redhills','Nearby Axis Bank','11:00AM-11:00PM','254,GNT Road,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Hotel'),
 (212,'Trident\'s food factory','9952022519','','','','','','','corp@tridentindia.com','Redhills',' Near lion clubs','12pm-22.30pm','No 2/253,lions club of madras thiruvallur High Road,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Hotel'),
 (213,'Karuna Filling Station','044 2632 2656','','','','','','','karuna@gmail.com','Redhills','Near madhavaram','open 24 hours','Plot No 127,Madhavaram Redhills Road,Kasthuri Bai Colony,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Petrol Bunk'),
 (214,'Indian oil petrol pump(kathive enterprises','1800 22 4344','','','','','','','indianoil@gmail.com','Redhills','Near gnt road','open 24 hours','55RP+CG6,GNT Road,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Petrol Bunk'),
 (215,'Quality Medicals','9841378003','','','','','','','qualitymedi@gmail.com','Redhills','Near sothupakkam','9am-22pm','No 20/2,Sotthupakkam Road,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Medicals'),
 (216,'Pushpa Medical','9840630029','','','','','','','pushpa@gmail.com','Redhills','Near redhills bus terminus','open 24 hours','586,GNT Road,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Medicals'),
 (217,'Adhavan Coach Chennai','9080767675','','','','','','','adhavan@gmail.com','Redhills','Near redhills bus terminus','open 24 hours','No 123,1F2,MGR Street,Ambedkar Nagar,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Ambulance'),
 (218,'Java Ambulance Services','9090878765','','','','','','','java@gmail.com','Redhills','Near redhills bus terminus','open 24 hours','GNT Road,Kannappasamy Nagar,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Ambulance'),
 (219,'RTG Hospital','8927575823','','','','','','','rtg@gmail.com','Redhills','Near redhills bus terminus','8am-23pm','514,GNT Road,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Hospital'),
 (220,'GMC Trush Hospital','9825757823','','','','','','','gmctrush@gmail.com','Redhills','Near redhills bus terminus','open 24 hours','55QQ+4F8,Redhills,Chennai,Tamil Nadu 600052','','YES','APPROVED','Hospital'),
 (221,'Aashram Petrol Pump','945628716','','','','','','','aashram@gmail.com','Pondicheery','Kassim Road,Pondicherry','11:00AM - 4:00PM','french colony Pondicherry 605001','','YES','APPROVED','Petrol Bunk'),
 (222,'Royal Ambulance','675432780','','','','','','','royal@gmail.com','Pondicheery','Bhathar sahib street,Pondicherry','11:00AM - 4:00PM','Bhathar street, pondicherry 605001','','YES','APPROVED','Ambulance'),
 (223,'Villa Krish','443567982','','','','','','','Krish@gmail.com','Pondicheery','White town,Pondicherry','11:00AM - 4:00PM','2,surcouf street,White street,Pondicherry-605001','','YES','APPROVED','Hotel'),
 (224,'The Base Inn','729654389','','','','','','','base@gmail.com','Pondicheery','near Kottakuppam,Pondicherry','11:00AM - 4:00PM','305 Mahatma GAndhi Road Kottakuppam,Pondicherry','','YES','APPROVED','Hotel'),
 (225,'Mirai Garage','6789543210','','','','','','','garage@gmail.com','Pondicheery','Aroville Link Road,Pondicherry','11:00AM - 4:00PM','No.5,Aroville Link Road,Pondicherry 605001','','YES','APPROVED','Mechanic'),
 (226,'Chennai cars','9875432690','','','','','','','chennaicars@gmail.com','Pondicheery','near Mahavishnu nagar,Pondicherry','11:00AM - 4:00PM','No3/280,Mahavishnu Nagar,Thindivanam Road, Pondicherry. 605101','','YES','APPROVED','Mechanic'),
 (227,'Sri Annai Medicals','8976543209','','','','','','','anni@gmail.com','Pondicheery','near Veerampattinam Road, Pondicheery','24hours','No 127, Veerampattinam Road, Ariyankuppam,Pondicherry-605007','','YES','APPROVED','Pharmacy'),
 (228,'Best Medicals','1245678908','','','','','','','bestmedicals@gmail.com','Pondicheery','before Ariyankuppam bus stop , Pondicherry','24hours','Kamaraj salai, thattanchavadi,Pondicheery.','','YES','APPROVED','Pharmacy'),
 (229,'Be Well Hospitals Puducherry','9807654239','','','','','','','well@gmail.com','Pondicheery','Near East Coast Road, Pondicherry','24hours','15,EAst Coast RD, Kottupalayam','','YES','APPROVED','Hospital'),
 (230,'Rani Hospital','965428076','','','','','','','rani@gmail.com','Pondicheery','Near Vazhundhavur Street,Pondicheery','24hours','No27, Vazhudhavur Road, NEAr Rajiv Gandhi Statue ,Pondicherry 605101','','YES','APPROVED','Hospital'),
 (231,'Neomed Hospital - Pondicherry','4132200031','','','','','','','neomed2gmail.com','Pondicheery','Near pondicheery bus stop','24hours','Door No.3(New) plot no.78 Second street, Sithananda Nagar, Puducherry, 605005','','YES','APPROVED','Hospital'),
 (232,'CERT India Hospital','9234251154','','','','','','','cert@gmail.com','Pondicheery',' Near puducheerry coollege','24hours','WRCJ+X92, Vambakeerapalayam, Puducherry, 605004','','YES','APPROVED','Hospital'),
 (233,'PIMS Hospital City Centre','9283241774','','','','','','','pimas@gmail.com','Pondicheery','Near post office','24hours','WRW6+HGH, Annamalai Nagar, Puducherry, 605013','','YES','APPROVED','Hospital'),
 (234,'Rajiv Gandhi maternity and child government hospital','8925775823','','','','','','','rajiivgandhi@gmail.com','Pondicheery','Near east cost road','24hours','Bus Stop, Rajiv Gandhi Hospital, 100 Feet Rd, Ellaipillaichavady, Aruthra Nagar, Puducherry, 605009','','YES','APPROVED','Hospital'),
 (235,'GoMechanic Luxe-Xpress Motors','8398970970','','','','','','','gomechanic@gmail.com','Chennai','Thiruvallur High Road ,Ambathur','8am-11pm','268, Ambathur Industrial Estate ,Chennai-600058','','YES','APPROVED','Mechanic'),
 (236,'Sri venkateshwara Car Care','9176117189','','','','','','','sricar@gmail.com','Chennai','Murugan Mbedu ,Ambathur','8am-11pm','kallikuppam ,Ambathur,Chennai-600053','','YES','APPROVED','Mechanic'),
 (237,'Hotel Karthick','9789913559','','','','','','','karthick@gmail.com','Chennai','Near Madanaguppam Road','8am-11pm','no9,Muthamizh Nagar,Kallikuppam,Ambattur ,Chennai-600053','','YES','APPROVED','Hotel'),
 (238,'Nest Kitchen','7305082565','','','','','','','nestkitchen@gmail.com','Chennai','Near Puzhal Service Road','8am-11pm','115/1A,Ambal Nagar ,Kathirvedu Village Surapet,Ambathur,Chennai-600066','','YES','APPROVED','Hotel'),
 (239,'Rliance Petroleum','9790820516','','','','','','','reliance@gmail.com','Chennai','Near Ambathur Redhils Road','8am-11pm','2C,Survey No 746/2A,2B,9,Ambattur,Chennai-600053','','YES','APPROVED','Petrol Bunk'),
 (240,'Indian Oil','9444121345','','','','','','','indianoil@gmail.com','Chennai','Near Vivekananda Nagar Main Rd','8am-11pm','46F2+FM2,Mohamed Husain Nagar,Lakshmipuram,Chennai-600099','','YES','APPROVED','Petrol Bunk'),
 (242,'Swathi Women Medical Center','9841648755','','','','','','','drswathi@gmail.com','Chennai','Near East Balaji,Nagar','8am-11pm','plot No.8,Kallikuppam,Chennai-600053','','YES','APPROVED','Hospital'),
 (243,'Lake View Hospital','044 2565 9911','','','','','','','lakeviewhoapital@gmail.com','Chennai','Near Akbar Nagar ,Kolathur','8am-11pm','Flat No.100A,Perembur Redhils High Road ,kolathur,Chennai-600099','','YES','APPROVED','Hospital'),
 (244,'Medplus ','040 6700 6700','','','','','','','medplus@gmail.com','Chennai','Near Ramdass Nagar,Kolathur','8am-11pm','no.17,Shop No 2,Ambattur Redhills Road ,Kolathur,Chennai-600099','','YES','APPROVED','Pharamacy'),
 (245,'Apollo Pharmacy ','044 2554 4243','','','','','','','apollo@gmail.com','Chennai','Near Meenambai Salai Viviekananda Nagar','8am-11pm','no.68/54,Erukkancheri,Chennai-600118','','YES','APPROVED','Pharamacy'),
 (246,'Karthick','8190815256','Screenshot 2022-07-21 185121.png','image/png','13913','',NULL,'','karthickroshan9360@gmail.com','tambaram','near station','9:50-7:00','101/2,near post ofice, tambaram,chennai','','yes','approved','mechanic');
/*!40000 ALTER TABLE `tlfileadd` ENABLE KEYS */;


--
-- Definition of table `tlregister`
--

DROP TABLE IF EXISTS `tlregister`;
CREATE TABLE `tlregister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `cpassword` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tlregister`
--

/*!40000 ALTER TABLE `tlregister` DISABLE KEYS */;
INSERT INTO `tlregister` (`id`,`name`,`email`,`mobile`,`password`,`cpassword`,`image`,`team`) VALUES 
 (1,'venkat','venkat@gmail.com','8907890789','111','111','1.png','ambulance'),
 (3,'thalapathi','thala@gmail.com','8907890789','111','111','2.png','mechanic'),
 (5,'venkat','thalapathi@gmail.com','8907890789','111','111','l3.png','photovideo'),
 (7,'venkat','karthickroshan9360@gmail.com','9361825624','roshank55','roshank55','Screenshot 2022-07-21 185121.png','mechanic');
/*!40000 ALTER TABLE `tlregister` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
