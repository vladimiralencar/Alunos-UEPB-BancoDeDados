-- MySQL dump 10.13  Distrib 5.5.15, for Win32 (x86)
--
-- Host: localhost    Database: aulas
-- ------------------------------------------------------
-- Server version	5.5.15

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `codigo_cliente` smallint(6) NOT NULL,
  `nome_cliente` char(20) NOT NULL,
  `endereco` char(30) NOT NULL,
  `cidade` char(15) NOT NULL,
  `UF` char(2) NOT NULL,
  `CEP` char(8) DEFAULT NULL,
  `CGC` char(20) NOT NULL,
  `IE` char(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_cliente`),
  KEY `codigo_cliente` (`codigo_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (20,'Beth','Av. Climério 45','São Paulo','SP','25679300','32485126/7326-8','9280'),(110,'Jorge','Rua Caiapó 13','Curitiba','PR','30078500','14512764/9834-9',''),(130,'Edmar','Rua da Praia 10','Salvador','BA','30079300','23463284/234-9','7121'),(157,'Paulo','Travessa Moraes 3','Londrina','PR','','32848223/324-2','1923'),(180,'Lívio','Av. Beira Mar, 1256','Florianópolis','SC','30077500','12736571/2347-4',NULL),(222,'Lúcia','Rua Itabira 123','Belo Horizonte','MG','22124391','28315213/93488','2985'),(234,'José','Quadra 3 bl. 3 sl. 1003','Brasília','DF','22841650','21763576/1232-3','2931'),(260,'Suzana','Rua Lopes Mendes 12','Niterói','RJ','30046500','21763571/232-9','2530'),(290,'Renato','Rua Meireles 123 Bl. 2 Sl. 345','São Paulo','SP','30225900','13276571/1231-4','1820'),(390,'Sebastião','Rua da Igreja 10','Uberaba','MG','30438700','32176547/213-3','9071'),(410,'Rodolfo','Largo da Lapa 27','Rio de Janeiro','RJ','30078900','12835128/2346-9','7431'),(720,'Ana','Rua 17 n. 19','Niterói','RJ','24358310','12113231/0001-34','2134'),(830,'Maurício','Av. Paulista 1236 sl 2345','São Paulo','SP','3012683','32816985/7465-6','9343'),(870,'Flávio','Av. Pres. Vargas 10','São Paulo','SP','22763931','22534126/9387-9','4631');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_do_pedido`
--

DROP TABLE IF EXISTS `item_do_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_do_pedido` (
  `num_pedido` int(11) NOT NULL DEFAULT '0',
  `codigo_produto` smallint(6) NOT NULL,
  `quantidade` int(11) NOT NULL,
  KEY `num_pedido` (`num_pedido`),
  KEY `codigo_produto` (`codigo_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_do_pedido`
--

LOCK TABLES `item_do_pedido` WRITE;
/*!40000 ALTER TABLE `item_do_pedido` DISABLE KEYS */;
INSERT INTO `item_do_pedido` VALUES (121,25,10),(121,31,35),(97,77,20),(101,31,9),(101,78,18),(101,13,5),(98,77,5),(148,45,8),(148,31,7),(148,77,3),(148,25,10),(148,78,30),(104,53,32),(203,31,6),(189,78,45),(143,31,20),(143,78,10),(105,78,10),(111,25,10),(111,78,70),(103,53,37),(91,77,40),(138,22,10),(138,77,35),(138,53,18),(108,13,17),(119,77,40),(119,13,6),(119,22,10),(119,53,43),(137,13,8);
/*!40000 ALTER TABLE `item_do_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `num_pedido` int(11) NOT NULL,
  `prazo_entrega` smallint(6) NOT NULL,
  `codigo_cliente` smallint(6) NOT NULL,
  `codigo_vendedor` smallint(6) NOT NULL,
  PRIMARY KEY (`num_pedido`),
  KEY `num_pedido` (`num_pedido`),
  KEY `código_cliente` (`codigo_cliente`),
  KEY `código_vendedor` (`codigo_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (91,20,260,11),(97,20,720,101),(98,20,410,209),(101,15,720,101),(103,20,260,11),(104,30,110,101),(105,15,180,240),(108,15,290,310),(111,20,260,240),(119,30,390,250),(121,20,410,209),(127,10,410,11),(137,20,720,720),(138,20,260,11),(143,30,20,111),(148,20,720,101),(189,15,870,213),(203,30,830,250);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `codigo_produto` smallint(6) NOT NULL,
  `unidade` char(3) NOT NULL,
  `descricao_produto` char(30) NOT NULL,
  `val_unit` float NOT NULL,
  PRIMARY KEY (`codigo_produto`),
  KEY `codigo_produto` (`codigo_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (13,'G','Ouro',6.18),(22,'M','Linho',0.11),(25,'Kg','Queijo',0.97),(30,'SAC','Acúcar',0.3),(31,'BAR','Chocolate',0.87),(45,'M','Madeira',0.25),(53,'M','Linha',1.8),(77,'M','Papel',1.05),(78,'L','Vinho',2),(87,'M','Cano',1.97);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendedor` (
  `codigo_vendedor` smallint(6) NOT NULL,
  `nome_vendedor` char(20) NOT NULL,
  `salario_fixo` float NOT NULL,
  `faixa_comissao` char(1) NOT NULL,
  PRIMARY KEY (`codigo_vendedor`),
  KEY `codigo_vendedor` (`codigo_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (11,'João',2780,'C'),(101,'João',2650,'C'),(111,'Carlos',2490,'A'),(209,'José',1800,'C'),(213,'Jonas',2300,'A'),(240,'Antônio',9500,'C'),(250,'Maurício',2930,'B'),(310,'Josias',870,'B'),(720,'Felipe',4600,'A');
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-10-13 10:27:27
