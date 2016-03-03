-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: gamedata
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `bastion`
--

DROP TABLE IF EXISTS `bastion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bastion` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `camp` tinyint(3) unsigned DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `energy` int(10) unsigned DEFAULT NULL,
  `signature` varchar(400) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `range` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bastion`
--

LOCK TABLES `bastion` WRITE;
/*!40000 ALTER TABLE `bastion` DISABLE KEYS */;
INSERT INTO `bastion` VALUES (1,'富力城29号楼',4,1,0,1000,NULL,1,34.171357,108.978222,50),(2,'富力城北门',3,0,0,1000,NULL,1,34.17208,108.977391,50),(3,'富力城花坛',2,2,0,2000,NULL,0,34.170855,108.977487,50),(4,'富力城西门',1,1,0,500,NULL,0,34.167872,108.975738,50),(5,'沁园停车场入口',2,0,0,2000,NULL,1,34.164597,108.874533,50),(6,'沁园南门',3,2,0,2000,NULL,1,34.161774,108.876153,50),(7,'樱花广场',4,1,0,4000,NULL,0,34.160717,108.877956,50),(8,'沁园湖',5,0,0,4000,NULL,0,34.163691,108.875885,50);
/*!40000 ALTER TABLE `bastion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `avatar` blob,
  `level` smallint(5) unsigned DEFAULT NULL,
  `gender` tinyint(3) unsigned DEFAULT NULL,
  `camp` tinyint(3) unsigned DEFAULT NULL,
  `exp` int(10) unsigned DEFAULT NULL,
  `energymax` int(10) unsigned DEFAULT NULL,
  `energy` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'aaaccceeeddd','Zhao','�\��\�\0JFIF\0\0\0\0\0\0�\�\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(�\�\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((��\0,,\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�~�(��(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0;\Z\�Ե[=&\�K�N\�;x�d��\0_�Z��\0�\�:O=\�\�4��� 1�lL\�y\n0)�+�\��;T�ԣ/a{\�\0\"�6܎3�j\�H��<�d�\�x��|Y\��\r�\Zm��oncH\��/�H\0�z�\n\�~:jV~�+PʗW�n\�p[\�#�\0e�|�v4�O��\�W\��2{�\�,ڈ�j)\�ˎA9��J\�׼B\�F��X\�h\��+B\'V\�6\�\�\�9>\��>�\�l�-e�$3Bѫ<��Y���އ\��\�]P\"�6�\��F�U���\Z\�\�\'�\�L�U\��S��\�3\��\Zv=\�\�M�	E�eQH�(��(��(��(��(��(��(��(��(��(��(��(��(�\0{W�3\�6�\�5��\'VT��\�Nv\�s\�\�Z\�jb��<{Ꮝ|=k��c��4\�N\�yL\�\�4\�\\`�\�!O\Zx\�� ��\�cs�\���W\�r\0\�uZ�\0�|;�]=\����jo��&(\�}N��W<5\�}\'\�pI�j!�1\�I�\�\�\�	98�)��\��hVW}+\\���$�1\� �\�]߃4�7���JmA×�%\�h8�FI�z\�G�\�I\�хQH�\�E$�\�G  �Ğ��\�?�5c|��qqpP\�i`�Z<���@\"��\0���R\�ѥ+gn\�.\\\�\�o�T�s�Vh6:?�|=C��.C �\�O9\�}\�1JUQ\�O\rxs3ݼ;\�7\�F\�G�K�\�C)� \������q^q~\0񦟪ج�i7L`�BIH�\��x�M{�t�҄��\�8���*\�\n(�R�QEp�QY:�����O}�Y\�D#sE�r;�:O�y?��#^F����`ԥ���ysE�-@\�˞1\�x�4Ɩ�=�sҊ�\'�\�\�2�CRP+�P(� ��)(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��`��޲u\�{L\�\�֩w\0q��1������\�5�?V\�\�\�s=\�\��<\�\�A�ȯ,Ծ&j���ZxH�߀\��m�\�\�_�«\�?�\rV\�\��e�I4�s\�\�\�B\� }\0�j\�K�;jq^\�\�ѯ�\�\�\��V���TB~^�8�I\�+rO�\�\�W�ׯg�@t\��6�A\�	-�½�C\�4\�\�\�Ҭ\�Ls�d��,rO\�kLqֹ�4�:�ir�D~k���\���\�g\�\n�{}\����\�\�b?�\�\�/�z��\�\�ƽniU9\�Y\�^�����\n\�sɦ�u\�`\������U9��M\�\�\r�\�\�@�{\�\nq\�\�X�+\�]�u暡����Dqs��*kS�\��4γ,Z���Yt�\�T��\�\�\��\�~���\�}�K�I�\�*̇ї�?Z\�5	i�\�l���n\��Z�\�\��\�\�\�\\F��TҦ�\��\'\����\�G�a�Wm,G>\�\�T\�\��|���W�i�\�e��^�\�\�\�y\n�\�\����7\�3\�^Škzޗ��2\�m \��\�=Ԏ\�zWBi\�d\�\�\�G\�=.\�S�\�V:�Ŝ��\�|���l�r\��7�.�\�,Z|�2\�\"m\�\�q\"#\'8\�<pk܁\�޼�[��h�Ժ���D-3�{Fm�d䁓�\�zS��={�\�\�|C�w�#v�\�X �Y�;-�q\�8\�G�x��|�k\�u\�\�\�]M\�on�T\�c�A\�l�\�`Z���\��z\�Ŷ�+��mx�!��~\�ԂnA\�+u:�\0xr\�F��\�Y���\�oH{�\�1U#8U\�=?*��?�\�Y��h۬�\�5��7�9h\�\�1\�\�z\Z\��w\�\��}b\�H\�tIm/&%K�6\0��`��O\�8��\�QEIAEPEPEPEPEPEPEP�\�x�\�f\�_[	�߮\�}6\�\�䶅<\�\�㜒GNzq^��A=��m\r�\�\\ܤad��۹ qW�*q^K�\�W6\�/\�-�����)\�kǻs�o�\r\�Q�݈|w�.v��\��j��蝍r��\'\�1\�?Sǧ�dx\�\���y�\�_L\�La28�f\�\0{Һo\0x2?\rX	\�9u)q\�?U@�\�{\�kknݎ+;�Q�b�0�m|(�\�Hax�Y�\n6\�ހg\�oRS\\��> ��<Eh�w\�woq2\�$.\�f\��#�*\�>x�\�w7�/b�F�I\�6Ic\�\�9\�k��{��4{��-nh廌\��X\�bOr;v�����N^�ąP�R��⢚1\"z\�,�&&<�I�JGJ�\r�Vɫ��\\�w�NV+Ch�¬E�Rd��\�M\"9\�(k\ZΛ�@\�\�w�\�/�\�\�\�A\�?�r\��G\�~\�)�\0hB��FJ\��-ϩx�\�+ɀ���\�U\�#�=\�S\�O�tHW�J\�\�&#(�39��ƩIsr�\�O�\\\�\�\��=\�v���<:<NG^\�O�חj^�?Û\�\��[��\����?\��Ǹ�\rsz�����Ǩx+Q��1b\�C/�Gc����\r{�\0�5�xj\��Q~q�h\�;Xp\�\�o\�[\�N!(8n/��]k\�\�,M\"��q	<������p3\�x�t{��>,����͕��Y%S?y�\�{~\��\�m5\�*+�:M�H?=\�zz\�D%̌%�֢�\nZf\\\�9�/Z(��IQH���(\0��(\0��(\0��(\0��(\0��(\0��(&\�\�#wc��_\0�x�\�~��\\�@\�:n\�9\��?�\Z�?\�`���*�R\�V]��\��|�a�\��,?\�\\,y�ڹ�\0٪*liO\�l���Ҫ�\�8\n�\�\�j(\�ǲ�\�5Γcr�\�h\�N*���\�k6	w�ܤ\�Pș\�8#��E\\��\�А�{\�@\�\�ph�\�\�45�\�Ol�\�\�q\�<+�-\�\�&����%m�\�\'�\0\�DoB���N;\�\�k\���M5}R?X�KG�����+��Fz��\�\0f�QkFM�v9?\�_\�:Ƣ{�\Z�,[>íy߆<6\�,uo)��\�\�\�ʨ<�A\�\�\�\n�\�\"Icd�\�?u�##�ϭb\�:Pi ڈ$�:�ӊќ�\��iqo�x\�)T�\n�����W_kzLۼ��\��m`J�\�\�\�]�\�K��\��\�%,\�\�?�e|��\�]o^�6��O-=O\�Y�RU�f���=+S��\�\�f��A$eOM����k\�|\'{s�\�\�Shڌ�\�M\�\0��\0\�G�\�\�?�a^\�\\G\��\0c\�2][(7�@ʘy�~\\�qE)�\�������6�%\�\�\�]:\�\�,T(c\�\�=\�t?�zAj\�9\�1h��ZDQ@Q@Q@Q@QA�QE\0QE\0QE\�\���\0\">��\0^r�\0\��?��\�f\�:\�H@?�u�>�\0�^�\0�9��\\\��S�\0��|I�)5sH��*`k��o��\r9�Gk�\�?\�\�\�eϿ>\�\��\�⦟kk{c�\�,ڀ\�-pH$�Gn1�\�~\�i�`:Φ\�\�\�lK�l�\�>��䩭M\�a\��\�eh� �{�GI��H�d.-\�vك\�1�8�\�{V��uMWH���x�U�x����J\�2A\0`�خ�{��r�\�r��\�\��\�R]>\�VPYym\��\�\�\\0\�9\�ǫ,$\���N\��DF+��Os�\�h\r��\�\Z�D\�\�\�FFpOA�{\�\�\Z\�\nWl�\\�\�A��/\�\��\�Ѳ1��?\�\�2,W��⹟\Z�N\�\�:X�����3�)�r���\�=\�D,�)\�&|˥\�4ڕ�v�\�\�TH�\�q`?\Z��>\�לx\�>\��x/.#ɀ��1�I$�zWw4�$-�ކ�|\�B\�\�\�z�T\�\�ո\\2\�sQ\�m\�qq2<Q\�\�?\�\�\��H��!�H\�\� �kCK��\�\�a��A�������հx9��Cإ`\n�a�h^���\rhx,G�\�ŀ\�\�\'\'\0t�\\��\0|��T�2�+\�~<\�\�i\�!\�\�\\\�g&\�\�]������u\��&\�N�\�M>I$\�4\nm\�=��]��n艫���n��\� ֵ�#\�^ \�`�u76gP\�ٔ>\�\�F�\���k��V���\�{\rL��M\\)\�x$6=�\rhgˡ�E 斃0��)\0QE\0QE\0QE�Q@Q@QA\�{\���6�\��|\��\�\�|�\��w\�\�#̚\\\��[�$�km\�1�\�\�T�	D!�o���\�W�\0Ȭ?��h�w�;E\��%\�\�*\�\�\�\�\�\��iJ.rI\�$p08�\�tV�\�\����@\���\���\��^\'\�.oo/�-c\�\�/�wg<�os\�^Mz�τn�ï\�\�`*\\�;\\���\�Eq\�\�Jj�=\\\"�}\�E\���&\�\�#8\����\0V�W�aO2�B6�[>�g5S׭N�0���YT�\�\�F	9\�8�P��\�u��	!�1�T	�\�ldc5�ֲ7\�bU�b\�F��#��#\�\�P��?J��k��{�\�Z�Λ�]Gue���\�l\�*��\0�\�\'�lWa^�C\�\�Z�Fh\0c޳�.\nEF\\\�\\\�keӚ�q\�H��\�ΚSH\�5r\��M�\�\'�VcP�����5�$\�\"�)h��9\�\�\n>�P�w�\�F��_\��υ\�PFFH ��^_�<j-α�JN6�\�O \�濕z�s^!�\�G\�ߎw0�\��q9���ă \�Ek����\�{�X_\\�\�մrN��I!2��0\�T\�-|;�æؙ\Z\�\"\�,rĜ\�\���n\�ޔ�k�\��\�h\�\�-����(�0��(\0��(\0��(\0��(\0��(\0�\�A�O��|o�\��yx3�2X��\0�V�\�(�\�\�-\r\0�6\��\0�\�\'�\�?��\����\0\�\��u\��\'\n\�q�\0>0�\0\��M{�\�\�j�好\�\�\��4r�e?��4�&q\Z�Ý�G��\��\�;+�\�8�%0A\�:v��\�z{\��cq �[hR#(o\�0\�Z�Qa�-S%\�QE!\r`1�Q2�����\�\�\�JJ\�F�t\�Hz\�νi�\n\�l\�LE\��}\�h���);Pl(�\�\�%�M����\�\�\Z8gF�_�\�k\�M\��+\�h\r�\�\Z����\�C\�ե\'f(�ϧ]\�}�[]Bw<K*���\�V�S\\�¹Z_�\�!nH�h�@�U\�\'z\�9��\�uQH���(\0��(\0��(\0��(\0��(\0��(\0\�L�\�\�\�O\n2i���1]2\�W\��\�\�{�󿍼m�x�K�+�Hb\�Z\��L�w�PH\�<���\�ҽ\�\����\'C)\��C�Q^�\�C{�s\�D���\�\�=W?�\�\��o���m�b��%�</\�$㬴��D�t;�(��\�QE\0QE\0QE\0����f\�F\�v�z�\�\rWz¤z��;Q\\\�\n(��G��{ט|~�\0�Z\��^�\�\��\Z�o��\�\�?\��?��)\�:{�?\�B\�}��d\��W_ڹ����\ZQ\�\�[�\��\�O]�Ov \�iiSKA�\�(��F�EPEPEPEPESc\\\�RsX���R\�vk\\�Fk���\\����ц���<�¡t?\��m�\Z�f8�`v~��ִ�^>��\�\��b�)��\�BQ�\0��S>&h�u�G�\�en\�|�\�\'���\�>�-��t�Z�\0��\���T�`t�7��V�Z�\�4�Jױ���\�Z��\���\�\����\�Y��3�\��\�t�{AEPHQE�Q@Q@FA^E\�Vj9:T\�hg�Yx4\�sHN	�\�����Q�)�\Zk\�h���k�2ܙ?£�5z�+\�~/\�&��\�H�n�\"\�z3�I��\��\�\�J\��\�	ƶ�ҡ�U�I� �sY\ZD�bD\�\��\�V\�]g\��T\\�}QZQA�QE\0QE\0QE\0QE\0QJ;Rw�+\\�\�f3\\\��\�uu3\�Y7��v�\�5���欎�=E�\�VFW��B\ryW��\�-\�V[Y�-H�c9\�\�\0�x\�^�,	\�*�ϭy4\�O\�Er\�m��Ʒ^��A�\"ȶ�!!\�rNON�z��\�v\�\�qM�\�p]pA�\�^$�݆�o�\�18I\�|\��#\�\��\��\'�up�ʿm\�L���\�6�\�[��\�㞆��>.5U�\�⫅{\���+��t_B>\�t�tF\r��l��`���\�zg5\�p8����ZLQ\�\�Xh�\Z\��z^�{}8-�M+(� 8�>\'�ge\�\�\�\�\�F\rjFQq\0c( pA\����S{�(��R�XҭuL�.#Y��\��\�h\�x\�8�\nks��lLQ]�\�@��SM��\�#D74��)9x���\Z)\�\Z�:N�s{t\�`�6�\�\�v�����yi>�\�\�\�]\��F\� \� \�\��?@�^��\�{�\���sA�\��\�D���Xg\�\��W�{���\�ÚL:&�\r�� ��>���5�z��\�;���WgW�g��\����\�\Z\�N���ùŉ��QE\�r�QA�QE\0QE\0QE\0QE\0QE\0S$\\�\�@↮N�}Ř��1�Jȸ�\0�0k�\�*�Ф��:�UQѯɹɲlP\�KIc�� �T�\�\�+�\05�-�Rx�&�tއ�N�f�9׾Y\\���Ll�v̖B}�\���fŮ|@�zs$�vq\�;&�}\�?^�ё�a@#�����-\�\�Bh��_4���6Z�xe?+���pk�^��\�\'�i�;\\h\�WG�/�c\�\�\�?Oʱ�|O\�Mz�Iub6\��\�e�� �ҽJX�T\�qU\�5�\��7�Dw����\�\�#\\�Gke�󬶡?\�\�%O\�@�>;�\�|?�X����\�\�\��nNÒ\�u��)~\�l�t�N��\�b�}�a���u#�A?g\�U�\�u\r\Z\�%��b�\���0?�z�w��u�\�~9k61A<RHl6\��+\�\�?�)�Z_\�5u52ؔE!\�\Z�y�[\�!3����j����j�\�\�Co\�^W\n8�׋\�?l�\�.�g���\�*)\�9$�\n\�h\�IT=tx�L�Y��X�z��*�\�O\��\0<&��<*\�ʲ��\��p�{Ớ\�_x\�X�\�\'t�\'\��\���\�\�$z�ν�\���m:�\�q�\�\�Y��C\�W5LJ��\�\ZK����3�b�M���1\�E�\�w�5\�B|\nP�V��fI\��*q�iܹ\�S���lEFj\�N���0�x�W��z�9!cǭ>i\\uQZ��QA�QE\0QE\0QE\0QE\0QE\0QE\0\�\�R\�b���6S \�ym��\����7\�pR\�q�[�Yg\�lF~Z궂\�핳�\�q\��FZ���!\�s�h\�\�*�\"��x\'�9ba�G\"�R=�\�]3؂\�⪽�	�s\\R\�N��N�b#-\�1\�~iN\�f�Y�у�<���\�\�־k�\Z|ڵ�\�a	�J��\�1�8#���׬MjA;EUhs�E:��nh\�9�C=���?\���\�\�k+��3�`�\01�\�\�]`˭\�\�#�w\���k\�J\�\���*MWת�Q�y���\�\���\���)�\05B\�\�\�\�>uƦ�z݅_\���^A�A�m&�\�\��cMt<n\��> ����:D\0�\�K\�6ߠ\'�\��;��M���\�L�a#l���s�ؚ�d���\�\Z\\wJ<\�ч�\�{Z\��!(@䂧\�-m �\���w�}���I\�d�%�f.\�:d�\�mYi1§ˉE�\�mQ3��֖\nR\�FUqk\�F}��\�\�Z��,Cޞ�\'&+ԡ��4y��)\0\�֖��V\� ��)QA�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0��-0\Z\\��ݚ���W\�V 6뎕^K }+D�|Q�޲�1Ƥ��1���\��TcO�V\�\�N\r\0\n\�\�\���ѐ4�\0\\~U\"\�\�z~U�E\�SD�L\�J+ ��N�*���\r;��8\�b}��0t\�(\0\�\�Z-�(�lQE\0QEEPnQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QEEPnQEEPnQE\0QEEPnQE\0QE\0�\�',3,1,1,12000,3000,2000);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-03 16:27:19
