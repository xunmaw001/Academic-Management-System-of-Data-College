-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm8r63x
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `ssm8r63x`
--

/*!40000 DROP DATABASE IF EXISTS `ssm8r63x`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm8r63x` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm8r63x`;

--
-- Table structure for table `banji`
--

DROP TABLE IF EXISTS `banji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banji`
--

LOCK TABLES `banji` WRITE;
/*!40000 ALTER TABLE `banji` DISABLE KEYS */;
INSERT INTO `banji` VALUES (41,'2022-03-31 01:46:32','班级1'),(42,'2022-03-31 01:46:32','班级2'),(43,'2022-03-31 01:46:32','班级3'),(44,'2022-03-31 01:46:32','班级4'),(45,'2022-03-31 01:46:32','班级5'),(46,'2022-03-31 01:46:32','班级6');
/*!40000 ALTER TABLE `banji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2022-03-31 01:46:32','教师工号1','123456','教师姓名1','男','upload/jiaoshi_zhaopian1.jpg','高级讲师','13823888881'),(22,'2022-03-31 01:46:32','教师工号2','123456','教师姓名2','男','upload/jiaoshi_zhaopian2.jpg','高级讲师','13823888882'),(23,'2022-03-31 01:46:32','教师工号3','123456','教师姓名3','男','upload/jiaoshi_zhaopian3.jpg','高级讲师','13823888883'),(24,'2022-03-31 01:46:32','教师工号4','123456','教师姓名4','男','upload/jiaoshi_zhaopian4.jpg','高级讲师','13823888884'),(25,'2022-03-31 01:46:32','教师工号5','123456','教师姓名5','男','upload/jiaoshi_zhaopian5.jpg','高级讲师','13823888885'),(26,'2022-03-31 01:46:32','教师工号6','123456','教师姓名6','男','upload/jiaoshi_zhaopian6.jpg','高级讲师','13823888886');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengchengji`
--

DROP TABLE IF EXISTS `kechengchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xuenian` varchar(200) DEFAULT NULL COMMENT '学年',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `kaoqinchengji` int(11) DEFAULT NULL COMMENT '考勤成绩',
  `zhongqichengji` int(11) DEFAULT NULL COMMENT '中期成绩',
  `qimochengji` int(11) DEFAULT NULL COMMENT '期末成绩',
  `pingyu` longtext COMMENT '评语',
  `shifouhege` varchar(200) DEFAULT NULL COMMENT '是否合格',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='课程成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengchengji`
--

LOCK TABLES `kechengchengji` WRITE;
/*!40000 ALTER TABLE `kechengchengji` DISABLE KEYS */;
INSERT INTO `kechengchengji` VALUES (71,'2022-03-31 01:46:32','课程名称1','学号1','学生姓名1','专业1','班级1','学年1','学期1',1,1,1,'评语1','合格','2022-03-31','教师工号1','教师姓名1'),(72,'2022-03-31 01:46:32','课程名称2','学号2','学生姓名2','专业2','班级2','学年2','学期2',2,2,2,'评语2','合格','2022-03-31','教师工号2','教师姓名2'),(73,'2022-03-31 01:46:32','课程名称3','学号3','学生姓名3','专业3','班级3','学年3','学期3',3,3,3,'评语3','合格','2022-03-31','教师工号3','教师姓名3'),(74,'2022-03-31 01:46:32','课程名称4','学号4','学生姓名4','专业4','班级4','学年4','学期4',4,4,4,'评语4','合格','2022-03-31','教师工号4','教师姓名4'),(75,'2022-03-31 01:46:32','课程名称5','学号5','学生姓名5','专业5','班级5','学年5','学期5',5,5,5,'评语5','合格','2022-03-31','教师工号5','教师姓名5'),(76,'2022-03-31 01:46:32','课程名称6','学号6','学生姓名6','专业6','班级6','学年6','学期6',6,6,6,'评语6','合格','2022-03-31','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `kechengchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `xuefen` varchar(200) DEFAULT NULL COMMENT '学分',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kechengjieshao` longtext COMMENT '课程介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (51,'2022-03-31 01:46:32','1111111111','课程名称1','课程分类1','课时1','学分1','上课时间1','上课地点1','教师工号1','教师姓名1','课程介绍1'),(52,'2022-03-31 01:46:32','2222222222','课程名称2','课程分类2','课时2','学分2','上课时间2','上课地点2','教师工号2','教师姓名2','课程介绍2'),(53,'2022-03-31 01:46:32','3333333333','课程名称3','课程分类3','课时3','学分3','上课时间3','上课地点3','教师工号3','教师姓名3','课程介绍3'),(54,'2022-03-31 01:46:32','4444444444','课程名称4','课程分类4','课时4','学分4','上课时间4','上课地点4','教师工号4','教师姓名4','课程介绍4'),(55,'2022-03-31 01:46:32','5555555555','课程名称5','课程分类5','课时5','学分5','上课时间5','上课地点5','教师工号5','教师姓名5','课程介绍5'),(56,'2022-03-31 01:46:32','6666666666','课程名称6','课程分类6','课时6','学分6','上课时间6','上课地点6','教师工号6','教师姓名6','课程介绍6');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengzuoye`
--

DROP TABLE IF EXISTS `kechengzuoye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengzuoye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `xiangguanfujian` varchar(200) DEFAULT NULL COMMENT '相关附件',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `buzhishijian` date DEFAULT NULL COMMENT '布置时间',
  `yaoqiushijian` date DEFAULT NULL COMMENT '要求时间',
  `zuoyeneirong` longtext COMMENT '作业内容',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='课程作业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengzuoye`
--

LOCK TABLES `kechengzuoye` WRITE;
/*!40000 ALTER TABLE `kechengzuoye` DISABLE KEYS */;
INSERT INTO `kechengzuoye` VALUES (111,'2022-03-31 01:46:32','课程编号1','课程名称1','作业名称1','','教师工号1','教师姓名1','2022-03-31','2022-03-31','作业内容1','学号1','学生姓名1'),(112,'2022-03-31 01:46:32','课程编号2','课程名称2','作业名称2','','教师工号2','教师姓名2','2022-03-31','2022-03-31','作业内容2','学号2','学生姓名2'),(113,'2022-03-31 01:46:32','课程编号3','课程名称3','作业名称3','','教师工号3','教师姓名3','2022-03-31','2022-03-31','作业内容3','学号3','学生姓名3'),(114,'2022-03-31 01:46:32','课程编号4','课程名称4','作业名称4','','教师工号4','教师姓名4','2022-03-31','2022-03-31','作业内容4','学号4','学生姓名4'),(115,'2022-03-31 01:46:32','课程编号5','课程名称5','作业名称5','','教师工号5','教师姓名5','2022-03-31','2022-03-31','作业内容5','学号5','学生姓名5'),(116,'2022-03-31 01:46:32','课程编号6','课程名称6','作业名称6','','教师工号6','教师姓名6','2022-03-31','2022-03-31','作业内容6','学号6','学生姓名6');
/*!40000 ALTER TABLE `kechengzuoye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-31 01:46:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuankexinxi`
--

DROP TABLE IF EXISTS `xuankexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuankexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `xuefen` varchar(200) DEFAULT NULL COMMENT '学分',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xuankeshijian` datetime DEFAULT NULL COMMENT '选课时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='选课信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuankexinxi`
--

LOCK TABLES `xuankexinxi` WRITE;
/*!40000 ALTER TABLE `xuankexinxi` DISABLE KEYS */;
INSERT INTO `xuankexinxi` VALUES (61,'2022-03-31 01:46:32','课程编号1','课程名称1','课程分类1','课时1','学分1','上课地点1','上课时间1','教师工号1','教师姓名1','学号1','学生姓名1','专业1','班级1','2022-03-31 09:46:32','是',''),(62,'2022-03-31 01:46:32','课程编号2','课程名称2','课程分类2','课时2','学分2','上课地点2','上课时间2','教师工号2','教师姓名2','学号2','学生姓名2','专业2','班级2','2022-03-31 09:46:32','是',''),(63,'2022-03-31 01:46:32','课程编号3','课程名称3','课程分类3','课时3','学分3','上课地点3','上课时间3','教师工号3','教师姓名3','学号3','学生姓名3','专业3','班级3','2022-03-31 09:46:32','是',''),(64,'2022-03-31 01:46:32','课程编号4','课程名称4','课程分类4','课时4','学分4','上课地点4','上课时间4','教师工号4','教师姓名4','学号4','学生姓名4','专业4','班级4','2022-03-31 09:46:32','是',''),(65,'2022-03-31 01:46:32','课程编号5','课程名称5','课程分类5','课时5','学分5','上课地点5','上课时间5','教师工号5','教师姓名5','学号5','学生姓名5','专业5','班级5','2022-03-31 09:46:32','是',''),(66,'2022-03-31 01:46:32','课程编号6','课程名称6','课程分类6','课时6','学分6','上课地点6','上课时间6','教师工号6','教师姓名6','学号6','学生姓名6','专业6','班级6','2022-03-31 09:46:32','是','');
/*!40000 ALTER TABLE `xuankexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueshengshouji` varchar(200) DEFAULT NULL COMMENT '学生手机',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2022-03-31 01:46:32','学号1','123456','学生姓名1','男','upload/xuesheng_touxiang1.jpg','13823888881','教师工号1','班级1','专业1'),(12,'2022-03-31 01:46:32','学号2','123456','学生姓名2','男','upload/xuesheng_touxiang2.jpg','13823888882','教师工号2','班级2','专业2'),(13,'2022-03-31 01:46:32','学号3','123456','学生姓名3','男','upload/xuesheng_touxiang3.jpg','13823888883','教师工号3','班级3','专业3'),(14,'2022-03-31 01:46:32','学号4','123456','学生姓名4','男','upload/xuesheng_touxiang4.jpg','13823888884','教师工号4','班级4','专业4'),(15,'2022-03-31 01:46:32','学号5','123456','学生姓名5','男','upload/xuesheng_touxiang5.jpg','13823888885','教师工号5','班级5','专业5'),(16,'2022-03-31 01:46:32','学号6','123456','学生姓名6','男','upload/xuesheng_touxiang6.jpg','13823888886','教师工号6','班级6','专业6');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengshenqing`
--

DROP TABLE IF EXISTS `xueshengshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xueshengshouji` varchar(200) DEFAULT NULL COMMENT '学生手机',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `shenqingleixing` varchar(200) DEFAULT NULL COMMENT '申请类型',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `shenqingneirong` longtext COMMENT '申请内容',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='学生申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengshenqing`
--

LOCK TABLES `xueshengshenqing` WRITE;
/*!40000 ALTER TABLE `xueshengshenqing` DISABLE KEYS */;
INSERT INTO `xueshengshenqing` VALUES (81,'2022-03-31 01:46:32','学号1','学生姓名1','学生手机1','班级1','专业1','教师工号1','休学','2022-03-31','申请内容1','是',''),(82,'2022-03-31 01:46:32','学号2','学生姓名2','学生手机2','班级2','专业2','教师工号2','休学','2022-03-31','申请内容2','是',''),(83,'2022-03-31 01:46:32','学号3','学生姓名3','学生手机3','班级3','专业3','教师工号3','休学','2022-03-31','申请内容3','是',''),(84,'2022-03-31 01:46:32','学号4','学生姓名4','学生手机4','班级4','专业4','教师工号4','休学','2022-03-31','申请内容4','是',''),(85,'2022-03-31 01:46:32','学号5','学生姓名5','学生手机5','班级5','专业5','教师工号5','休学','2022-03-31','申请内容5','是',''),(86,'2022-03-31 01:46:32','学号6','学生姓名6','学生手机6','班级6','专业6','教师工号6','休学','2022-03-31','申请内容6','是','');
/*!40000 ALTER TABLE `xueshengshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengzixun`
--

DROP TABLE IF EXISTS `xueshengzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunwenti` longtext NOT NULL COMMENT '咨询问题',
  `zixunshijian` datetime DEFAULT NULL COMMENT '咨询时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `huifuzhuangtai` varchar(200) DEFAULT NULL COMMENT '回复状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='学生咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengzixun`
--

LOCK TABLES `xueshengzixun` WRITE;
/*!40000 ALTER TABLE `xueshengzixun` DISABLE KEYS */;
INSERT INTO `xueshengzixun` VALUES (91,'2022-03-31 01:46:32','咨询问题1','2022-03-31 09:46:32','教师工号1','教师姓名1','学号1','学生姓名1','已回复'),(92,'2022-03-31 01:46:32','咨询问题2','2022-03-31 09:46:32','教师工号2','教师姓名2','学号2','学生姓名2','已回复'),(93,'2022-03-31 01:46:32','咨询问题3','2022-03-31 09:46:32','教师工号3','教师姓名3','学号3','学生姓名3','已回复'),(94,'2022-03-31 01:46:32','咨询问题4','2022-03-31 09:46:32','教师工号4','教师姓名4','学号4','学生姓名4','已回复'),(95,'2022-03-31 01:46:32','咨询问题5','2022-03-31 09:46:32','教师工号5','教师姓名5','学号5','学生姓名5','已回复'),(96,'2022-03-31 01:46:32','咨询问题6','2022-03-31 09:46:32','教师工号6','教师姓名6','学号6','学生姓名6','已回复');
/*!40000 ALTER TABLE `xueshengzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanye`
--

DROP TABLE IF EXISTS `zhuanye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='专业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanye`
--

LOCK TABLES `zhuanye` WRITE;
/*!40000 ALTER TABLE `zhuanye` DISABLE KEYS */;
INSERT INTO `zhuanye` VALUES (31,'2022-03-31 01:46:32','专业1'),(32,'2022-03-31 01:46:32','专业2'),(33,'2022-03-31 01:46:32','专业3'),(34,'2022-03-31 01:46:32','专业4'),(35,'2022-03-31 01:46:32','专业5'),(36,'2022-03-31 01:46:32','专业6');
/*!40000 ALTER TABLE `zhuanye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zixunhuifu`
--

DROP TABLE IF EXISTS `zixunhuifu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zixunhuifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `huifuneirong` longtext COMMENT '回复内容',
  `huifushijian` datetime DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='咨询回复';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zixunhuifu`
--

LOCK TABLES `zixunhuifu` WRITE;
/*!40000 ALTER TABLE `zixunhuifu` DISABLE KEYS */;
INSERT INTO `zixunhuifu` VALUES (101,'2022-03-31 01:46:32','学号1','学生姓名1','教师工号1','教师姓名1','回复内容1','2022-03-31 09:46:32'),(102,'2022-03-31 01:46:32','学号2','学生姓名2','教师工号2','教师姓名2','回复内容2','2022-03-31 09:46:32'),(103,'2022-03-31 01:46:32','学号3','学生姓名3','教师工号3','教师姓名3','回复内容3','2022-03-31 09:46:32'),(104,'2022-03-31 01:46:32','学号4','学生姓名4','教师工号4','教师姓名4','回复内容4','2022-03-31 09:46:32'),(105,'2022-03-31 01:46:32','学号5','学生姓名5','教师工号5','教师姓名5','回复内容5','2022-03-31 09:46:32'),(106,'2022-03-31 01:46:32','学号6','学生姓名6','教师工号6','教师姓名6','回复内容6','2022-03-31 09:46:32');
/*!40000 ALTER TABLE `zixunhuifu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-11 21:49:15
