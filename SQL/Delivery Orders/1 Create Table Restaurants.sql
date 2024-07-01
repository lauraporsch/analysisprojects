USE delivery_orders;

CREATE TABLE IF NOT EXISTS `Restaurants` (
    `RestaurantID` INT,
    `RestaurantName` VARCHAR(17) CHARACTER SET utf8,
    `Cuisine` VARCHAR(12) CHARACTER SET utf8,
    `Zone` VARCHAR(6) CHARACTER SET utf8,
    `Category` VARCHAR(8) CHARACTER SET utf8
);
INSERT INTO `Restaurants` VALUES (1,'The Cave Hotel','Continental','Zone B','Pro'),
	(2,'SSK Hotel','North Indian','Zone D','Pro'),
	(3,'ASR Restaurant','South Indian','Zone D','Ordinary'),
	(4,'Win Hotel','South Indian','Zone D','Ordinary'),
	(5,'Denver Restaurant','Continental','Zone D','Pro'),
	(6,'Willies','French','Zone D','Pro'),
	(7,'AMN','North Indian','Zone D','Ordinary'),
	(8,'Oslo','French','Zone B','Ordinary'),
	(9,'Excel Restaurant','North Indian','Zone D','Ordinary'),
	(10,'Dave Hotel','South Indian','Zone A','Ordinary'),
	(11,'The Taste','French','Zone B','Pro'),
	(12,'Ruchi','Chinese','Zone B','Ordinary'),
	(13,'Veer Restaurant','Chinese','Zone D','Ordinary'),
	(14,'KSR Hotel','Chinese','Zone A','Pro'),
	(15,'Vrinda Bhavan','North Indian','Zone D','Ordinary'),
	(16,'Anand Restaurant','African','Zone C','Ordinary'),
	(17,'Zam Zam','Arabian','Zone C','Ordinary'),
	(18,'Ellora','African','Zone C','Pro'),
	(19,'Sam Hotel','Belgian','Zone A','Ordinary'),
