-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: testapp_dev
-- ------------------------------------------------------
-- Server version	5.5.43-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text,
  `offer_test` varchar(255) DEFAULT NULL,
  `sales_package` varchar(255) DEFAULT NULL,
  `features` text,
  `disclaimer` varchar(255) DEFAULT NULL,
  `offer_price` decimal(10,0) DEFAULT NULL,
  `base_price` decimal(10,0) DEFAULT NULL,
  `dealer_price` decimal(10,0) DEFAULT NULL,
  `shipping_cost` decimal(10,0) DEFAULT NULL,
  `quantity_limit` int(11) DEFAULT NULL,
  `unit_type` varchar(255) DEFAULT NULL,
  `vendor_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `uploaded_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Lenovo P70 (Blue)','Mobiles','Smartphones','','Lenovo','http://catman-a2.infibeam.com/img/mobi/8841726/4f/63/58.jpg.4b4f638746.999x538x580.jpg','Lenovo P70 smartphone has been finally launched in India. Initially it was launched on the company\'s online store, but it is now up for grabs on Infibeam at a discounted rate. It was first unveiled in China and since then its features have been doing the rounds on the international smartphone market. Take a look at its features:<br /><br /><strong>Design &amp; Display<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <img src=\"http://w.vm4.nmv.infypedia.org/img/assets/f94affed0d23c3930c58630becc63c88e49df868.jpg.999xxx.jpg\" alt=\"\" width=\"600\" height=\"337\" /><br /><br /></strong>The trendy new smartphone comes with <strong>71.8mm x 8.9mm x 142mm dimensions</strong> and is <strong>only</strong> <strong>149g (0.33lbs) heavy.</strong> You can entertain yourself by watching videos, using apps, images, and play games on its super awesome screen. It is a <strong>5 inch in-plane switching (IPS) display</strong> that also allows for nearly <strong>180-degrees of wide-angle viewing.</strong><br /><br /><strong>Processor &amp; OS<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"http://w.vm4.nmv.infypedia.org/img/assets/1df14d5efaa9baf7767f282e1c378e2987d02cec.png.999xxx.png\" alt=\"\" width=\"560\" height=\"345\" /><br /><br /></strong>Experience excellent multimedia with a <strong>MediaTek True8Core&trade; processor.</strong> The amazing performance along with outstanding energy efficiency and cutting edge 8 core technology when combined with<strong> 2 GB RAM</strong>, gives flawless responsiveness irrespective of the task at hand. <strong>Android OS 4.4 Kitkat</strong> optimizes the performance further by improving the responsiveness and accuracy even more.<br /><br /><strong>Connectivity<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"http://w.vm4.nmv.infypedia.org/img/assets/e38442f1551496d923e86861b78db8b9cd5f6def.jpg.999xxx.jpg\" alt=\"\" width=\"600\" height=\"337\" /><br /><br /></strong>Connect with your loved ones any time with a wide variety of features that are offered to you by Lenovo P70. Share your data browse the internet with <strong>Bluetooth, Wi-Fi, Wi-Fi Hotspot, and 3G Network</strong>. With <strong>GPS and AGPS</strong> you can navigate your way through anywhere and reach your destination on time. In addition, P70 supports <strong>LTE (4G) network which</strong> offers blazing speed to the user.<br /><br /><strong>Other Features<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"http://w.vm4.nmv.infypedia.org/img/assets/3e488637ddd6ac9a19f044d53217f795185405c6.jpg.999xxx.jpg\" alt=\"\" width=\"600\" height=\"337\" /><br /><br /></strong>Get <strong>two numbers in one phone</strong> and keep your business and pleasure separate. When you are travelling in different country or state, you can take advantage of two different service providers and save money. The handset also comes with plenty of<strong> built-in DOit series apps</strong> that make your life simpler. There are apps for sharing data with other devices without a network, optimizing device performance, preventing viruses and malware, or taking a back up your contacts, SMS, &amp; call logs.<br /><br /><strong>Camera</strong><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"http://w.vm4.nmv.infypedia.org/img/assets/8c5716afce73dbbcb02803e85ca178f6266e3cab.jpg.999xxx.jpg\" alt=\"\" width=\"600\" height=\"337\" /><br /><br />Take brilliant snaps with a <strong>13 mega pixel rear camera</strong> that comes with Lenovo P70. The<strong> front facing 5 mega pixel camera</strong> is apt for clicking selfies. With a <strong>simplified interface, and multiple shooting modes</strong> you get creative flexibility along with beautification feature for a youthful look in your images.<br /><br /><strong>Multimedia</strong><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"http://w.vm4.nmv.infypedia.org/img/assets/a211d43782bf400256e466317e1abeeecb66454c.jpg.999xxx.jpg\" alt=\"\" width=\"600\" height=\"337\" /><br /><br />Keep yourself entertained always with Lenovo P70 as it <strong>supports all major audio, image and video formats.</strong> With <strong>FM radio</strong> you can tune into your favourite radio stations and RJs any time you want. There comes a <strong>3.5 mm audio jack </strong>and a <strong>speaker</strong> for sound purposes.<br /><br /><strong>Memory &amp; Battery</strong><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"http://w.vm4.nmv.infypedia.org/img/assets/ab5b0f1ef0b3944af813f0ffdf0eacb5d337ba3c.jpg.999xxx.jpg\" alt=\"\" width=\"600\" height=\"337\" /><br /><br />The SIM card slots can be converted into a microSD card slot for expanding the internal <strong>16 GB ROM to 32 GB.</strong> Hence, you will have all the space you need for all your pics, music, movies, etc.<br /><br />The Lenovo P70 comes with a massive <strong>4000 mAh battery</strong> in a thin <strong>8.9 mm body.</strong> The phone will keep going for as long as you want. The energy saving software inside will further prolong the battery and the <strong>Quick Battery</strong> feature will fully recharge the handset in just 3 hours. A 15-minute charge will give you up to 4 hours talktime. You can even <strong>charge other battery operated devices</strong> by plugging them into the P70. <br /><br />\r\n<p>Check out other <a href=\"http://www.infibeam.com/Mobiles/\">mobile phones</a> with excellent features &amp; technology.</p>\r\n<br /><br />','','Mobile Charger, Usb cable, Earphone, User  Manual','\r\n\r\n<table class=\"table-features\">\r\n<tr>\r\n   <th colspan=\"2\">Dimensions</th>\r\n</tr>\r\n<tr>\r\n   <td>W x T x H</td>\r\n   <td>71.8mm x 8.9mm x 142mm</td>\r\n</tr>\r\n<tr>\r\n   <td>Weight</td>\r\n   <td>149g (0.33lbs)</td\r\n</tr>\r\n<table class=\"table-features\">\r\n   <tr>\r\n      <th colspan=\"2\">Platform</th>\r\n   </tr>\r\n   <tr>\r\n      <td>Processor</td>\r\n      <td>MT6752 4G LTE 1.7GHz 64-bit True8Core</td>\r\n   </tr>\r\n   <tr>\r\n      <td>Operating System</td>\r\n      <td>Android 4.4 KitKat</td\r\n   </tr>\r\n   <tr>\r\n      <td>Graphics</td>\r\n      <td>ARM MaliT760-MP2 700MHz</td>\r\n   </tr>\r\n</table>\r\n<table class=\"table-features\">\r\n   <tr>\r\n      <th colspan=\"2\">Memory</th>\r\n   </tr>\r\n   <tr>\r\n      <td>RAM</td>\r\n      <td>2GB</td>\r\n   </tr>\r\n   <tr>\r\n      <td>ROM</td>\r\n      <td>16GB</td\r\n   </tr>\r\n   <tr>\r\n      <td>Card Slot</td>\r\n      <td>Up to 32GB microSD</td\r\n   </tr>\r\n</table>\r\n<table class=\"table-features\">\r\n   <tr>\r\n      <th colspan=\"2\">Display</th>\r\n   </tr>\r\n   <tr>\r\n      <td>Size</td>\r\n      <td>5.0 Inch (1280 x 720) HD IPS display</td>\r\n   </tr>\r\n   <tr>\r\n      <td>SIM</td>\r\n      <td>Dual, Micro SIM</td\r\n   </tr>\r\n   <tr>\r\n      <td>Type</td>\r\n      <td>Capacitive touchscreen, 16M colors, 5-point multitouch</td\r\n   </tr>\r\n</table>','<ul><li style=\"list-style-type: circle;\">Product will be delivered for all urban areas serviceable by major courier agencies.</li><li style=\"list-style-type: circle;\">No Deliveries on Sunday and National Holidays.</li></ul>',15949,16500,15300,50,100,'','Digital Communication','active','Hemant','2015-05-07 13:22:00','','2015-05-07 13:51:13','2015-05-07 13:51:13'),(2,'Titan Chronograph 9743Bm01 Ladies Watch','Watches','Womens Watches','','Titan','http://catman-a2.infibeam.com/img/watc/8841726/5e/6f/titan9743bm013f160.jpg.4985d45e6f.999x548x1000.jpg','','','','<table class=\"table-features\"><tr><th colspan=\"2\">Dial</th></tr><tr><td>Dial Color</td><td>Multicolor</td></tr><tr><td>Dial Shape</td><td>Round</td</tr><tr><td>Display Type</td><td>Analog</td></tr></table><table class=\"table-features\"><tr><th colspan=\"2\">Strap</th></tr><tr><td>Strap Type</td><td>Bracelet</td></tr><tr><td>Strap Color</td><td>Multicolor</td</tr><tr><td>Strap Material</td><td>Metal</td></tr></table><table class=\"table-features\"><tr><th colspan=\"2\">Other Features</th></tr><tr><td>Indicators</td><td>Hours,Minute,Second</td></tr><tr><td>Chronograph</td><td>Available</td</tr></table>','',5597,7995,5597,50,10,'','Delhi Center','active','Hemant','2015-05-07 13:54:21','','2015-05-07 13:53:49','2015-05-07 13:54:21');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150506094705');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-12  5:24:17
