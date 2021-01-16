/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.20 : Database - joolun_ry
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`joolun_ry` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `joolun_ry`;

/*Table structure for table `gen_table` */

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';

/*Data for the table `gen_table` */

insert  into `gen_table`(`table_id`,`table_name`,`table_comment`,`sub_table_name`,`sub_table_fk_name`,`class_name`,`tpl_category`,`package_name`,`module_name`,`business_name`,`function_name`,`function_author`,`gen_type`,`gen_path`,`options`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'sys_config','参数配置表',NULL,NULL,'SysConfig','crud','com.ruoyi.system','system','config','参数配置','ruoyi','0','/',NULL,'admin','2021-01-14 17:10:34','',NULL,NULL),
(2,'sys_dept','部门表',NULL,NULL,'SysDept','crud','com.ruoyi.system','system','dept','部门','ruoyi','0','/',NULL,'admin','2021-01-14 17:10:34','',NULL,NULL),
(3,'sys_dict_data','字典数据表',NULL,NULL,'SysDictData','crud','com.ruoyi.system','system','data','字典数据','ruoyi','0','/',NULL,'admin','2021-01-14 17:10:34','',NULL,NULL),
(4,'sys_dict_type','字典类型表',NULL,NULL,'SysDictType','crud','com.ruoyi.system','system','type','字典类型','ruoyi','0','/',NULL,'admin','2021-01-14 17:10:34','',NULL,NULL),
(5,'sys_job','定时任务调度表',NULL,NULL,'SysJob','crud','com.ruoyi.system','system','job','定时任务调度','ruoyi','0','/',NULL,'admin','2021-01-14 17:10:34','',NULL,NULL),
(6,'sys_job_log','定时任务调度日志表',NULL,NULL,'SysJobLog','crud','com.ruoyi.system','system','log','定时任务调度日志','ruoyi','0','/',NULL,'admin','2021-01-14 17:10:34','',NULL,NULL),
(7,'sys_logininfor','系统访问记录',NULL,NULL,'SysLogininfor','crud','com.ruoyi.system','system','logininfor','系统访问记录','ruoyi','0','/',NULL,'admin','2021-01-14 17:10:34','',NULL,NULL),
(8,'sys_menu','菜单权限表',NULL,NULL,'SysMenu','crud','com.ruoyi.system','system','menu','菜单权限','ruoyi','0','/',NULL,'admin','2021-01-14 17:10:34','',NULL,NULL),
(9,'sys_notice','通知公告表',NULL,NULL,'SysNotice','crud','com.ruoyi.system','system','notice','通知公告','ruoyi','0','/',NULL,'admin','2021-01-14 17:10:34','',NULL,NULL),
(10,'sys_oper_log','操作日志记录',NULL,NULL,'SysOperLog','crud','com.ruoyi.system','system','log','操作日志记录','ruoyi','0','/',NULL,'admin','2021-01-14 17:10:34','',NULL,NULL);

/*Table structure for table `gen_table_column` */

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';

/*Data for the table `gen_table_column` */

insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`java_type`,`java_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(1,'1','config_id','参数主键','int','Long','configId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-01-14 17:10:34','',NULL),
(2,'1','config_name','参数名称','varchar(100)','String','configName','0','0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2021-01-14 17:10:34','',NULL),
(3,'1','config_key','参数键名','varchar(100)','String','configKey','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2021-01-14 17:10:34','',NULL),
(4,'1','config_value','参数键值','varchar(500)','String','configValue','0','0',NULL,'1','1','1','1','EQ','textarea','',4,'admin','2021-01-14 17:10:34','',NULL),
(5,'1','config_type','系统内置（Y是 N否）','char(1)','String','configType','0','0',NULL,'1','1','1','1','EQ','select','',5,'admin','2021-01-14 17:10:34','',NULL),
(6,'1','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',6,'admin','2021-01-14 17:10:34','',NULL),
(7,'1','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',7,'admin','2021-01-14 17:10:34','',NULL),
(8,'1','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',8,'admin','2021-01-14 17:10:34','',NULL),
(9,'1','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',9,'admin','2021-01-14 17:10:34','',NULL),
(10,'1','remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',10,'admin','2021-01-14 17:10:34','',NULL),
(11,'2','dept_id','部门id','bigint','Long','deptId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-01-14 17:10:34','',NULL),
(12,'2','parent_id','父部门id','bigint','Long','parentId','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2021-01-14 17:10:34','',NULL),
(13,'2','ancestors','祖级列表','varchar(50)','String','ancestors','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2021-01-14 17:10:34','',NULL),
(14,'2','dept_name','部门名称','varchar(30)','String','deptName','0','0',NULL,'1','1','1','1','LIKE','input','',4,'admin','2021-01-14 17:10:34','',NULL),
(15,'2','order_num','显示顺序','int','Long','orderNum','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2021-01-14 17:10:34','',NULL),
(16,'2','leader','负责人','varchar(20)','String','leader','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2021-01-14 17:10:34','',NULL),
(17,'2','phone','联系电话','varchar(11)','String','phone','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2021-01-14 17:10:34','',NULL),
(18,'2','email','邮箱','varchar(50)','String','email','0','0',NULL,'1','1','1','1','EQ','input','',8,'admin','2021-01-14 17:10:34','',NULL),
(19,'2','status','部门状态（0正常 1停用）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',9,'admin','2021-01-14 17:10:34','',NULL),
(20,'2','del_flag','删除标志（0代表存在 2代表删除）','char(1)','String','delFlag','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',10,'admin','2021-01-14 17:10:34','',NULL),
(21,'2','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',11,'admin','2021-01-14 17:10:34','',NULL),
(22,'2','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',12,'admin','2021-01-14 17:10:34','',NULL),
(23,'2','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',13,'admin','2021-01-14 17:10:34','',NULL),
(24,'2','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',14,'admin','2021-01-14 17:10:34','',NULL),
(25,'3','dict_code','字典编码','bigint','Long','dictCode','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-01-14 17:10:34','',NULL),
(26,'3','dict_sort','字典排序','int','Long','dictSort','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2021-01-14 17:10:34','',NULL),
(27,'3','dict_label','字典标签','varchar(100)','String','dictLabel','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2021-01-14 17:10:34','',NULL),
(28,'3','dict_value','字典键值','varchar(100)','String','dictValue','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2021-01-14 17:10:34','',NULL),
(29,'3','dict_type','字典类型','varchar(100)','String','dictType','0','0',NULL,'1','1','1','1','EQ','select','',5,'admin','2021-01-14 17:10:34','',NULL),
(30,'3','css_class','样式属性（其他样式扩展）','varchar(100)','String','cssClass','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2021-01-14 17:10:34','',NULL),
(31,'3','list_class','表格回显样式','varchar(100)','String','listClass','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2021-01-14 17:10:34','',NULL),
(32,'3','is_default','是否默认（Y是 N否）','char(1)','String','isDefault','0','0',NULL,'1','1','1','1','EQ','input','',8,'admin','2021-01-14 17:10:34','',NULL),
(33,'3','status','状态（0正常 1停用）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',9,'admin','2021-01-14 17:10:34','',NULL),
(34,'3','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',10,'admin','2021-01-14 17:10:34','',NULL),
(35,'3','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',11,'admin','2021-01-14 17:10:34','',NULL),
(36,'3','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',12,'admin','2021-01-14 17:10:34','',NULL),
(37,'3','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',13,'admin','2021-01-14 17:10:34','',NULL),
(38,'3','remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',14,'admin','2021-01-14 17:10:34','',NULL),
(39,'4','dict_id','字典主键','bigint','Long','dictId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-01-14 17:10:34','',NULL),
(40,'4','dict_name','字典名称','varchar(100)','String','dictName','0','0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2021-01-14 17:10:34','',NULL),
(41,'4','dict_type','字典类型','varchar(100)','String','dictType','0','0',NULL,'1','1','1','1','EQ','select','',3,'admin','2021-01-14 17:10:34','',NULL),
(42,'4','status','状态（0正常 1停用）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',4,'admin','2021-01-14 17:10:34','',NULL),
(43,'4','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',5,'admin','2021-01-14 17:10:34','',NULL),
(44,'4','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',6,'admin','2021-01-14 17:10:34','',NULL),
(45,'4','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',7,'admin','2021-01-14 17:10:34','',NULL),
(46,'4','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',8,'admin','2021-01-14 17:10:34','',NULL),
(47,'4','remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',9,'admin','2021-01-14 17:10:34','',NULL),
(48,'5','job_id','任务ID','bigint','Long','jobId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-01-14 17:10:34','',NULL),
(49,'5','job_name','任务名称','varchar(64)','String','jobName','1','0',NULL,'1',NULL,NULL,NULL,'LIKE','input','',2,'admin','2021-01-14 17:10:34','',NULL),
(50,'5','job_group','任务组名','varchar(64)','String','jobGroup','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',3,'admin','2021-01-14 17:10:34','',NULL),
(51,'5','invoke_target','调用目标字符串','varchar(500)','String','invokeTarget','0','0','1','1','1','1','1','EQ','textarea','',4,'admin','2021-01-14 17:10:34','',NULL),
(52,'5','cron_expression','cron执行表达式','varchar(255)','String','cronExpression','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2021-01-14 17:10:34','',NULL),
(53,'5','misfire_policy','计划执行错误策略（1立即执行 2执行一次 3放弃执行）','varchar(20)','String','misfirePolicy','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2021-01-14 17:10:34','',NULL),
(54,'5','concurrent','是否并发执行（0允许 1禁止）','char(1)','String','concurrent','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2021-01-14 17:10:34','',NULL),
(55,'5','status','状态（0正常 1暂停）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',8,'admin','2021-01-14 17:10:34','',NULL),
(56,'5','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',9,'admin','2021-01-14 17:10:34','',NULL),
(57,'5','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',10,'admin','2021-01-14 17:10:34','',NULL),
(58,'5','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',11,'admin','2021-01-14 17:10:34','',NULL),
(59,'5','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',12,'admin','2021-01-14 17:10:34','',NULL),
(60,'5','remark','备注信息','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',13,'admin','2021-01-14 17:10:34','',NULL),
(61,'6','job_log_id','任务日志ID','bigint','Long','jobLogId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-01-14 17:10:34','',NULL),
(62,'6','job_name','任务名称','varchar(64)','String','jobName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2021-01-14 17:10:34','',NULL),
(63,'6','job_group','任务组名','varchar(64)','String','jobGroup','0','0','1','1','1','1','1','EQ','input','',3,'admin','2021-01-14 17:10:34','',NULL),
(64,'6','invoke_target','调用目标字符串','varchar(500)','String','invokeTarget','0','0','1','1','1','1','1','EQ','textarea','',4,'admin','2021-01-14 17:10:34','',NULL),
(65,'6','job_message','日志信息','varchar(500)','String','jobMessage','0','0',NULL,'1','1','1','1','EQ','textarea','',5,'admin','2021-01-14 17:10:34','',NULL),
(66,'6','status','执行状态（0正常 1失败）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',6,'admin','2021-01-14 17:10:34','',NULL),
(67,'6','exception_info','异常信息','varchar(2000)','String','exceptionInfo','0','0',NULL,'1','1','1','1','EQ','textarea','',7,'admin','2021-01-14 17:10:34','',NULL),
(68,'6','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',8,'admin','2021-01-14 17:10:34','',NULL),
(69,'7','info_id','访问ID','bigint','Long','infoId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-01-14 17:10:34','',NULL),
(70,'7','user_name','用户账号','varchar(50)','String','userName','0','0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2021-01-14 17:10:34','',NULL),
(71,'7','ipaddr','登录IP地址','varchar(50)','String','ipaddr','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2021-01-14 17:10:34','',NULL),
(72,'7','login_location','登录地点','varchar(255)','String','loginLocation','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2021-01-14 17:10:34','',NULL),
(73,'7','browser','浏览器类型','varchar(50)','String','browser','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2021-01-14 17:10:34','',NULL),
(74,'7','os','操作系统','varchar(50)','String','os','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2021-01-14 17:10:34','',NULL),
(75,'7','status','登录状态（0成功 1失败）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',7,'admin','2021-01-14 17:10:34','',NULL),
(76,'7','msg','提示消息','varchar(255)','String','msg','0','0',NULL,'1','1','1','1','EQ','input','',8,'admin','2021-01-14 17:10:34','',NULL),
(77,'7','login_time','访问时间','datetime','Date','loginTime','0','0',NULL,'1','1','1','1','EQ','datetime','',9,'admin','2021-01-14 17:10:34','',NULL),
(78,'8','menu_id','菜单ID','bigint','Long','menuId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-01-14 17:10:34','',NULL),
(79,'8','menu_name','菜单名称','varchar(50)','String','menuName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2021-01-14 17:10:34','',NULL),
(80,'8','parent_id','父菜单ID','bigint','Long','parentId','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2021-01-14 17:10:34','',NULL),
(81,'8','order_num','显示顺序','int','Long','orderNum','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2021-01-14 17:10:34','',NULL),
(82,'8','path','路由地址','varchar(200)','String','path','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2021-01-14 17:10:34','',NULL),
(83,'8','component','组件路径','varchar(255)','String','component','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2021-01-14 17:10:34','',NULL),
(84,'8','is_frame','是否为外链（0是 1否）','int','Long','isFrame','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2021-01-14 17:10:34','',NULL),
(85,'8','is_cache','是否缓存（0缓存 1不缓存）','int','Long','isCache','0','0',NULL,'1','1','1','1','EQ','input','',8,'admin','2021-01-14 17:10:34','',NULL),
(86,'8','menu_type','菜单类型（M目录 C菜单 F按钮）','char(1)','String','menuType','0','0',NULL,'1','1','1','1','EQ','select','',9,'admin','2021-01-14 17:10:34','',NULL),
(87,'8','visible','菜单状态（0显示 1隐藏）','char(1)','String','visible','0','0',NULL,'1','1','1','1','EQ','input','',10,'admin','2021-01-14 17:10:34','',NULL),
(88,'8','status','菜单状态（0正常 1停用）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',11,'admin','2021-01-14 17:10:34','',NULL),
(89,'8','perms','权限标识','varchar(100)','String','perms','0','0',NULL,'1','1','1','1','EQ','input','',12,'admin','2021-01-14 17:10:34','',NULL),
(90,'8','icon','菜单图标','varchar(100)','String','icon','0','0',NULL,'1','1','1','1','EQ','input','',13,'admin','2021-01-14 17:10:34','',NULL),
(91,'8','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',14,'admin','2021-01-14 17:10:34','',NULL),
(92,'8','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',15,'admin','2021-01-14 17:10:34','',NULL),
(93,'8','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',16,'admin','2021-01-14 17:10:34','',NULL),
(94,'8','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',17,'admin','2021-01-14 17:10:34','',NULL),
(95,'8','remark','备注','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',18,'admin','2021-01-14 17:10:34','',NULL),
(96,'9','notice_id','公告ID','int','Long','noticeId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-01-14 17:10:34','',NULL),
(97,'9','notice_title','公告标题','varchar(50)','String','noticeTitle','0','0','1','1','1','1','1','EQ','input','',2,'admin','2021-01-14 17:10:34','',NULL),
(98,'9','notice_type','公告类型（1通知 2公告）','char(1)','String','noticeType','0','0','1','1','1','1','1','EQ','select','',3,'admin','2021-01-14 17:10:34','',NULL),
(99,'9','notice_content','公告内容','longblob','String','noticeContent','0','0',NULL,'1','1','1','1','EQ','editor','',4,'admin','2021-01-14 17:10:34','',NULL),
(100,'9','status','公告状态（0正常 1关闭）','char(1)','String','status','0','0',NULL,'1','1','1','1','EQ','radio','',5,'admin','2021-01-14 17:10:34','',NULL),
(101,'9','create_by','创建者','varchar(64)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',6,'admin','2021-01-14 17:10:34','',NULL),
(102,'9','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',7,'admin','2021-01-14 17:10:34','',NULL),
(103,'9','update_by','更新者','varchar(64)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',8,'admin','2021-01-14 17:10:34','',NULL),
(104,'9','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',9,'admin','2021-01-14 17:10:34','',NULL),
(105,'9','remark','备注','varchar(255)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','input','',10,'admin','2021-01-14 17:10:34','',NULL),
(106,'10','oper_id','日志主键','bigint','Long','operId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-01-14 17:10:34','',NULL),
(107,'10','title','模块标题','varchar(50)','String','title','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2021-01-14 17:10:34','',NULL),
(108,'10','business_type','业务类型（0其它 1新增 2修改 3删除）','int','Long','businessType','0','0',NULL,'1','1','1','1','EQ','select','',3,'admin','2021-01-14 17:10:34','',NULL),
(109,'10','method','方法名称','varchar(100)','String','method','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2021-01-14 17:10:34','',NULL),
(110,'10','request_method','请求方式','varchar(10)','String','requestMethod','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2021-01-14 17:10:34','',NULL),
(111,'10','operator_type','操作类别（0其它 1后台用户 2手机端用户）','int','Long','operatorType','0','0',NULL,'1','1','1','1','EQ','select','',6,'admin','2021-01-14 17:10:34','',NULL),
(112,'10','oper_name','操作人员','varchar(50)','String','operName','0','0',NULL,'1','1','1','1','LIKE','input','',7,'admin','2021-01-14 17:10:34','',NULL),
(113,'10','dept_name','部门名称','varchar(50)','String','deptName','0','0',NULL,'1','1','1','1','LIKE','input','',8,'admin','2021-01-14 17:10:34','',NULL),
(114,'10','oper_url','请求URL','varchar(255)','String','operUrl','0','0',NULL,'1','1','1','1','EQ','input','',9,'admin','2021-01-14 17:10:34','',NULL),
(115,'10','oper_ip','主机地址','varchar(50)','String','operIp','0','0',NULL,'1','1','1','1','EQ','input','',10,'admin','2021-01-14 17:10:34','',NULL),
(116,'10','oper_location','操作地点','varchar(255)','String','operLocation','0','0',NULL,'1','1','1','1','EQ','input','',11,'admin','2021-01-14 17:10:34','',NULL),
(117,'10','oper_param','请求参数','varchar(2000)','String','operParam','0','0',NULL,'1','1','1','1','EQ','textarea','',12,'admin','2021-01-14 17:10:34','',NULL),
(118,'10','json_result','返回参数','varchar(2000)','String','jsonResult','0','0',NULL,'1','1','1','1','EQ','textarea','',13,'admin','2021-01-14 17:10:34','',NULL),
(119,'10','status','操作状态（0正常 1异常）','int','Long','status','0','0',NULL,'1','1','1','1','EQ','radio','',14,'admin','2021-01-14 17:10:34','',NULL),
(120,'10','error_msg','错误消息','varchar(2000)','String','errorMsg','0','0',NULL,'1','1','1','1','EQ','textarea','',15,'admin','2021-01-14 17:10:34','',NULL),
(121,'10','oper_time','操作时间','datetime','Date','operTime','0','0',NULL,'1','1','1','1','EQ','datetime','',16,'admin','2021-01-14 17:10:34','',NULL);

/*Table structure for table `qrtz_blob_triggers` */

DROP TABLE IF EXISTS `qrtz_blob_triggers`;

CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `qrtz_blob_triggers` */

/*Table structure for table `qrtz_calendars` */

DROP TABLE IF EXISTS `qrtz_calendars`;

CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `qrtz_calendars` */

/*Table structure for table `qrtz_cron_triggers` */

DROP TABLE IF EXISTS `qrtz_cron_triggers`;

CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `qrtz_cron_triggers` */

insert  into `qrtz_cron_triggers`(`sched_name`,`trigger_name`,`trigger_group`,`cron_expression`,`time_zone_id`) values 
('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),
('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai'),
('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');

/*Table structure for table `qrtz_fired_triggers` */

DROP TABLE IF EXISTS `qrtz_fired_triggers`;

CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint NOT NULL,
  `sched_time` bigint NOT NULL,
  `priority` int NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `qrtz_fired_triggers` */

/*Table structure for table `qrtz_job_details` */

DROP TABLE IF EXISTS `qrtz_job_details`;

CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `qrtz_job_details` */

insert  into `qrtz_job_details`(`sched_name`,`job_name`,`job_group`,`description`,`job_class_name`,`is_durable`,`is_nonconcurrent`,`is_update_data`,`requests_recovery`,`job_data`) values 
('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.joolun.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.joolun.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0(com.joolun.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0v�Ո�xpt\0\0pppt\01t\00/10 * * * * ?t\0ryTask.ryNoParamst\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（无参）t\03t\01x\0'),
('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.joolun.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.joolun.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0(com.joolun.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0v�Ո�xpt\0\0pppt\01t\00/15 * * * * ?t\0ryTask.ryParams(\'ry\')t\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（有参）t\03t\01x\0'),
('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.joolun.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.joolun.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0(com.joolun.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0v�Ո�xpt\0\0pppt\01t\00/20 * * * * ?t\08ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)t\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（多参）t\03t\01x\0');

/*Table structure for table `qrtz_locks` */

DROP TABLE IF EXISTS `qrtz_locks`;

CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `qrtz_locks` */

insert  into `qrtz_locks`(`sched_name`,`lock_name`) values 
('RuoyiScheduler','STATE_ACCESS'),
('RuoyiScheduler','TRIGGER_ACCESS');

/*Table structure for table `qrtz_paused_trigger_grps` */

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;

CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `qrtz_paused_trigger_grps` */

/*Table structure for table `qrtz_scheduler_state` */

DROP TABLE IF EXISTS `qrtz_scheduler_state`;

CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint NOT NULL,
  `checkin_interval` bigint NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `qrtz_scheduler_state` */

insert  into `qrtz_scheduler_state`(`sched_name`,`instance_name`,`last_checkin_time`,`checkin_interval`) values 
('RuoyiScheduler','JL-PC1610724997874',1610726530603,15000);

/*Table structure for table `qrtz_simple_triggers` */

DROP TABLE IF EXISTS `qrtz_simple_triggers`;

CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint NOT NULL,
  `repeat_interval` bigint NOT NULL,
  `times_triggered` bigint NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `qrtz_simple_triggers` */

/*Table structure for table `qrtz_simprop_triggers` */

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;

CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int DEFAULT NULL,
  `int_prop_2` int DEFAULT NULL,
  `long_prop_1` bigint DEFAULT NULL,
  `long_prop_2` bigint DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `qrtz_simprop_triggers` */

/*Table structure for table `qrtz_triggers` */

DROP TABLE IF EXISTS `qrtz_triggers`;

CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint DEFAULT NULL,
  `prev_fire_time` bigint DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint NOT NULL,
  `end_time` bigint DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `qrtz_triggers` */

insert  into `qrtz_triggers`(`sched_name`,`trigger_name`,`trigger_group`,`job_name`,`job_group`,`description`,`next_fire_time`,`prev_fire_time`,`priority`,`trigger_state`,`trigger_type`,`start_time`,`end_time`,`calendar_name`,`misfire_instr`,`job_data`) values 
('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1610725000000,-1,5,'PAUSED','CRON',1610724997000,0,NULL,2,''),
('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1610725005000,-1,5,'PAUSED','CRON',1610724997000,0,NULL,2,''),
('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1610725000000,-1,5,'PAUSED','CRON',1610724998000,0,NULL,2,'');

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2021-01-14 15:39:13','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),
(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2021-01-14 15:39:13','',NULL,'初始化密码 123456'),
(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2021-01-14 15:39:13','',NULL,'深色主题theme-dark，浅色主题theme-light');

/*Table structure for table `sys_dept` */

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(100,0,'0','JooLun科技',0,'JooLun','15888888888','JooLun@qq.com','0','0','admin','2021-01-14 15:39:13','admin','2021-01-16 00:01:09'),
(101,100,'0,100','深圳总公司',1,'JooLun','15888888888','JooLun@qq.com','0','0','admin','2021-01-14 15:39:13','admin','2021-01-16 00:00:57'),
(102,100,'0,100','长沙分公司',2,'JooLun','15888888888','ry@qq.com','0','0','admin','2021-01-14 15:39:13','admin','2021-01-16 00:01:09'),
(103,101,'0,100,101','研发部门',1,'JooLun','15888888888','JooLun@qq.com','0','0','admin','2021-01-14 15:39:13','admin','2021-01-16 00:00:40'),
(104,101,'0,100,101','市场部门',2,'JooLun','15888888888','ry@qq.com','0','0','admin','2021-01-14 15:39:13','admin','2021-01-16 00:00:45'),
(105,101,'0,100,101','测试部门',3,'JooLun','15888888888','ry@qq.com','0','0','admin','2021-01-14 15:39:13','admin','2021-01-16 00:00:48'),
(106,101,'0,100,101','财务部门',4,'JooLun','15888888888','ry@qq.com','0','0','admin','2021-01-14 15:39:13','admin','2021-01-16 00:00:54'),
(107,101,'0,100,101','运维部门',5,'JooLun','15888888888','ry@qq.com','0','0','admin','2021-01-14 15:39:13','admin','2021-01-16 00:00:57'),
(108,102,'0,100,102','市场部门',1,'JooLun','15888888888','ry@qq.com','0','0','admin','2021-01-14 15:39:13','admin','2021-01-16 00:01:05'),
(109,102,'0,100,102','财务部门',2,'JooLun','15888888888','ry@qq.com','0','0','admin','2021-01-14 15:39:13','admin','2021-01-16 00:01:09');

/*Table structure for table `sys_dict_data` */

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';

/*Data for the table `sys_dict_data` */

insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,1,'男','0','sys_user_sex','','','Y','0','admin','2021-01-14 15:39:13','',NULL,'性别男'),
(2,2,'女','1','sys_user_sex','','','N','0','admin','2021-01-14 15:39:13','',NULL,'性别女'),
(3,3,'未知','2','sys_user_sex','','','N','0','admin','2021-01-14 15:39:13','',NULL,'性别未知'),
(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2021-01-14 15:39:13','',NULL,'显示菜单'),
(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2021-01-14 15:39:13','',NULL,'隐藏菜单'),
(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2021-01-14 15:39:13','',NULL,'正常状态'),
(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2021-01-14 15:39:13','',NULL,'停用状态'),
(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2021-01-14 15:39:13','',NULL,'正常状态'),
(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2021-01-14 15:39:13','',NULL,'停用状态'),
(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2021-01-14 15:39:13','',NULL,'默认分组'),
(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2021-01-14 15:39:13','',NULL,'系统分组'),
(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2021-01-14 15:39:13','',NULL,'系统默认是'),
(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2021-01-14 15:39:13','',NULL,'系统默认否'),
(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2021-01-14 15:39:13','',NULL,'通知'),
(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2021-01-14 15:39:13','',NULL,'公告'),
(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2021-01-14 15:39:13','',NULL,'正常状态'),
(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2021-01-14 15:39:13','',NULL,'关闭状态'),
(18,1,'新增','1','sys_oper_type','','info','N','0','admin','2021-01-14 15:39:13','',NULL,'新增操作'),
(19,2,'修改','2','sys_oper_type','','info','N','0','admin','2021-01-14 15:39:13','',NULL,'修改操作'),
(20,3,'删除','3','sys_oper_type','','danger','N','0','admin','2021-01-14 15:39:13','',NULL,'删除操作'),
(21,4,'授权','4','sys_oper_type','','primary','N','0','admin','2021-01-14 15:39:13','',NULL,'授权操作'),
(22,5,'导出','5','sys_oper_type','','warning','N','0','admin','2021-01-14 15:39:13','',NULL,'导出操作'),
(23,6,'导入','6','sys_oper_type','','warning','N','0','admin','2021-01-14 15:39:13','',NULL,'导入操作'),
(24,7,'强退','7','sys_oper_type','','danger','N','0','admin','2021-01-14 15:39:13','',NULL,'强退操作'),
(25,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2021-01-14 15:39:13','',NULL,'生成操作'),
(26,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2021-01-14 15:39:13','',NULL,'清空操作'),
(27,1,'成功','0','sys_common_status','','primary','N','0','admin','2021-01-14 15:39:13','',NULL,'正常状态'),
(28,2,'失败','1','sys_common_status','','danger','N','0','admin','2021-01-14 15:39:13','',NULL,'停用状态');

/*Table structure for table `sys_dict_type` */

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';

/*Data for the table `sys_dict_type` */

insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'用户性别','sys_user_sex','0','admin','2021-01-14 15:39:13','',NULL,'用户性别列表'),
(2,'菜单状态','sys_show_hide','0','admin','2021-01-14 15:39:13','',NULL,'菜单状态列表'),
(3,'系统开关','sys_normal_disable','0','admin','2021-01-14 15:39:13','',NULL,'系统开关列表'),
(4,'任务状态','sys_job_status','0','admin','2021-01-14 15:39:13','',NULL,'任务状态列表'),
(5,'任务分组','sys_job_group','0','admin','2021-01-14 15:39:13','',NULL,'任务分组列表'),
(6,'系统是否','sys_yes_no','0','admin','2021-01-14 15:39:13','',NULL,'系统是否列表'),
(7,'通知类型','sys_notice_type','0','admin','2021-01-14 15:39:13','',NULL,'通知类型列表'),
(8,'通知状态','sys_notice_status','0','admin','2021-01-14 15:39:13','',NULL,'通知状态列表'),
(9,'操作类型','sys_oper_type','0','admin','2021-01-14 15:39:13','',NULL,'操作类型列表'),
(10,'系统状态','sys_common_status','0','admin','2021-01-14 15:39:13','',NULL,'登录状态列表');

/*Table structure for table `sys_job` */

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';

/*Data for the table `sys_job` */

insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`misfire_policy`,`concurrent`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2021-01-14 15:39:13','',NULL,''),
(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2021-01-14 15:39:13','',NULL,''),
(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2021-01-14 15:39:13','',NULL,'');

/*Table structure for table `sys_job_log` */

DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';

/*Data for the table `sys_job_log` */

/*Table structure for table `sys_logininfor` */

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';

/*Data for the table `sys_logininfor` */

insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values 
(100,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2021-01-14 15:41:18'),
(101,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 15:41:22'),
(102,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2021-01-14 15:43:17'),
(103,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 15:43:20'),
(104,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 15:46:08'),
(105,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 16:50:11'),
(106,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2021-01-14 16:50:55'),
(107,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 16:50:59'),
(108,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2021-01-14 16:51:16'),
(109,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 16:51:20'),
(110,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2021-01-14 16:51:32'),
(111,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 16:51:39'),
(112,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 17:44:43'),
(113,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 18:25:57'),
(114,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 18:26:58'),
(115,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 18:30:34'),
(116,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 18:43:44'),
(117,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 22:05:03'),
(118,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2021-01-14 22:45:13'),
(119,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-14 22:45:19'),
(120,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-15 10:40:50'),
(121,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-15 19:45:31'),
(122,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-15 20:51:34'),
(123,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2021-01-15 20:52:12'),
(124,'ry','127.0.0.1','内网IP','Chrome 8','Windows 10','1','用户不存在/密码错误','2021-01-15 20:52:20'),
(125,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','1','用户不存在/密码错误','2021-01-15 20:52:28'),
(126,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-15 20:52:33'),
(127,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2021-01-15 20:53:38'),
(128,'test','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-15 20:53:44'),
(129,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','1','用户不存在/密码错误','2021-01-15 23:18:44'),
(130,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','1','用户不存在/密码错误','2021-01-15 23:18:50'),
(131,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2021-01-15 23:18:56');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2033 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'系统管理',0,1,'system',NULL,1,0,'M','0','0','','system','admin','2021-01-14 15:39:13','',NULL,'系统管理目录'),
(2,'系统监控',0,2,'monitor',NULL,1,0,'M','0','0','','monitor','admin','2021-01-14 15:39:13','',NULL,'系统监控目录'),
(3,'系统工具',0,3,'tool',NULL,1,0,'M','0','0','','tool','admin','2021-01-14 15:39:13','',NULL,'系统工具目录'),
(4,'公众号管理',0,0,'wxmp',NULL,1,0,'M','0','0','','wechat','admin','2018-03-16 11:33:00','admin','2020-03-05 14:59:21','公众号管理'),
(100,'用户管理',1,1,'user','system/user/index',1,0,'C','0','0','system:user:list','user','admin','2021-01-14 15:39:13','',NULL,'用户管理菜单'),
(101,'角色管理',1,2,'role','system/role/index',1,0,'C','0','0','system:role:list','peoples','admin','2021-01-14 15:39:13','',NULL,'角色管理菜单'),
(102,'菜单管理',1,3,'menu','system/menu/index',1,0,'C','0','0','system:menu:list','tree-table','admin','2021-01-14 15:39:13','',NULL,'菜单管理菜单'),
(103,'部门管理',1,4,'dept','system/dept/index',1,0,'C','0','0','system:dept:list','tree','admin','2021-01-14 15:39:13','',NULL,'部门管理菜单'),
(104,'岗位管理',1,5,'post','system/post/index',1,0,'C','0','0','system:post:list','post','admin','2021-01-14 15:39:13','',NULL,'岗位管理菜单'),
(105,'字典管理',1,6,'dict','system/dict/index',1,0,'C','0','0','system:dict:list','dict','admin','2021-01-14 15:39:13','',NULL,'字典管理菜单'),
(106,'参数设置',1,7,'config','system/config/index',1,0,'C','0','0','system:config:list','edit','admin','2021-01-14 15:39:13','',NULL,'参数设置菜单'),
(107,'通知公告',1,8,'notice','system/notice/index',1,0,'C','0','0','system:notice:list','message','admin','2021-01-14 15:39:13','',NULL,'通知公告菜单'),
(108,'日志管理',1,9,'log','',1,0,'M','0','0','','log','admin','2021-01-14 15:39:13','',NULL,'日志管理菜单'),
(109,'在线用户',2,1,'online','monitor/online/index',1,0,'C','0','0','monitor:online:list','online','admin','2021-01-14 15:39:13','',NULL,'在线用户菜单'),
(110,'定时任务',2,2,'job','monitor/job/index',1,0,'C','0','0','monitor:job:list','job','admin','2021-01-14 15:39:13','',NULL,'定时任务菜单'),
(111,'数据监控',2,3,'druid','monitor/druid/index',1,0,'C','0','0','monitor:druid:list','druid','admin','2021-01-14 15:39:13','',NULL,'数据监控菜单'),
(112,'服务监控',2,4,'server','monitor/server/index',1,0,'C','0','0','monitor:server:list','server','admin','2021-01-14 15:39:13','',NULL,'服务监控菜单'),
(113,'缓存监控',2,5,'cache','monitor/cache/index',1,0,'C','0','0','monitor:cache:list','redis','admin','2021-01-14 15:39:13','',NULL,'缓存监控菜单'),
(114,'表单构建',3,1,'build','tool/build/index',1,0,'C','0','0','tool:build:list','build','admin','2021-01-14 15:39:13','',NULL,'表单构建菜单'),
(115,'代码生成',3,2,'gen','tool/gen/index',1,0,'C','0','0','tool:gen:list','code','admin','2021-01-14 15:39:13','',NULL,'代码生成菜单'),
(116,'系统接口',3,3,'swagger','tool/swagger/index',1,0,'C','0','0','tool:swagger:list','swagger','admin','2021-01-14 15:39:13','',NULL,'系统接口菜单'),
(500,'操作日志',108,1,'operlog','monitor/operlog/index',1,0,'C','0','0','monitor:operlog:list','form','admin','2021-01-14 15:39:13','',NULL,'操作日志菜单'),
(501,'登录日志',108,2,'logininfor','monitor/logininfor/index',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2021-01-14 15:39:13','',NULL,'登录日志菜单'),
(1001,'用户查询',100,1,'','',1,0,'F','0','0','system:user:query','#','admin','2021-01-14 15:39:13','',NULL,''),
(1002,'用户新增',100,2,'','',1,0,'F','0','0','system:user:add','#','admin','2021-01-14 15:39:13','',NULL,''),
(1003,'用户修改',100,3,'','',1,0,'F','0','0','system:user:edit','#','admin','2021-01-14 15:39:13','',NULL,''),
(1004,'用户删除',100,4,'','',1,0,'F','0','0','system:user:remove','#','admin','2021-01-14 15:39:13','',NULL,''),
(1005,'用户导出',100,5,'','',1,0,'F','0','0','system:user:export','#','admin','2021-01-14 15:39:13','',NULL,''),
(1006,'用户导入',100,6,'','',1,0,'F','0','0','system:user:import','#','admin','2021-01-14 15:39:13','',NULL,''),
(1007,'重置密码',100,7,'','',1,0,'F','0','0','system:user:resetPwd','#','admin','2021-01-14 15:39:13','',NULL,''),
(1008,'角色查询',101,1,'','',1,0,'F','0','0','system:role:query','#','admin','2021-01-14 15:39:13','',NULL,''),
(1009,'角色新增',101,2,'','',1,0,'F','0','0','system:role:add','#','admin','2021-01-14 15:39:13','',NULL,''),
(1010,'角色修改',101,3,'','',1,0,'F','0','0','system:role:edit','#','admin','2021-01-14 15:39:13','',NULL,''),
(1011,'角色删除',101,4,'','',1,0,'F','0','0','system:role:remove','#','admin','2021-01-14 15:39:13','',NULL,''),
(1012,'角色导出',101,5,'','',1,0,'F','0','0','system:role:export','#','admin','2021-01-14 15:39:13','',NULL,''),
(1013,'菜单查询',102,1,'','',1,0,'F','0','0','system:menu:query','#','admin','2021-01-14 15:39:13','',NULL,''),
(1014,'菜单新增',102,2,'','',1,0,'F','0','0','system:menu:add','#','admin','2021-01-14 15:39:13','',NULL,''),
(1015,'菜单修改',102,3,'','',1,0,'F','0','0','system:menu:edit','#','admin','2021-01-14 15:39:13','',NULL,''),
(1016,'菜单删除',102,4,'','',1,0,'F','0','0','system:menu:remove','#','admin','2021-01-14 15:39:13','',NULL,''),
(1017,'部门查询',103,1,'','',1,0,'F','0','0','system:dept:query','#','admin','2021-01-14 15:39:13','',NULL,''),
(1018,'部门新增',103,2,'','',1,0,'F','0','0','system:dept:add','#','admin','2021-01-14 15:39:13','',NULL,''),
(1019,'部门修改',103,3,'','',1,0,'F','0','0','system:dept:edit','#','admin','2021-01-14 15:39:13','',NULL,''),
(1020,'部门删除',103,4,'','',1,0,'F','0','0','system:dept:remove','#','admin','2021-01-14 15:39:13','',NULL,''),
(1021,'岗位查询',104,1,'','',1,0,'F','0','0','system:post:query','#','admin','2021-01-14 15:39:13','',NULL,''),
(1022,'岗位新增',104,2,'','',1,0,'F','0','0','system:post:add','#','admin','2021-01-14 15:39:13','',NULL,''),
(1023,'岗位修改',104,3,'','',1,0,'F','0','0','system:post:edit','#','admin','2021-01-14 15:39:13','',NULL,''),
(1024,'岗位删除',104,4,'','',1,0,'F','0','0','system:post:remove','#','admin','2021-01-14 15:39:13','',NULL,''),
(1025,'岗位导出',104,5,'','',1,0,'F','0','0','system:post:export','#','admin','2021-01-14 15:39:13','',NULL,''),
(1026,'字典查询',105,1,'#','',1,0,'F','0','0','system:dict:query','#','admin','2021-01-14 15:39:13','',NULL,''),
(1027,'字典新增',105,2,'#','',1,0,'F','0','0','system:dict:add','#','admin','2021-01-14 15:39:13','',NULL,''),
(1028,'字典修改',105,3,'#','',1,0,'F','0','0','system:dict:edit','#','admin','2021-01-14 15:39:13','',NULL,''),
(1029,'字典删除',105,4,'#','',1,0,'F','0','0','system:dict:remove','#','admin','2021-01-14 15:39:13','',NULL,''),
(1030,'字典导出',105,5,'#','',1,0,'F','0','0','system:dict:export','#','admin','2021-01-14 15:39:13','',NULL,''),
(1031,'参数查询',106,1,'#','',1,0,'F','0','0','system:config:query','#','admin','2021-01-14 15:39:13','',NULL,''),
(1032,'参数新增',106,2,'#','',1,0,'F','0','0','system:config:add','#','admin','2021-01-14 15:39:13','',NULL,''),
(1033,'参数修改',106,3,'#','',1,0,'F','0','0','system:config:edit','#','admin','2021-01-14 15:39:13','',NULL,''),
(1034,'参数删除',106,4,'#','',1,0,'F','0','0','system:config:remove','#','admin','2021-01-14 15:39:13','',NULL,''),
(1035,'参数导出',106,5,'#','',1,0,'F','0','0','system:config:export','#','admin','2021-01-14 15:39:13','',NULL,''),
(1036,'公告查询',107,1,'#','',1,0,'F','0','0','system:notice:query','#','admin','2021-01-14 15:39:13','',NULL,''),
(1037,'公告新增',107,2,'#','',1,0,'F','0','0','system:notice:add','#','admin','2021-01-14 15:39:13','',NULL,''),
(1038,'公告修改',107,3,'#','',1,0,'F','0','0','system:notice:edit','#','admin','2021-01-14 15:39:13','',NULL,''),
(1039,'公告删除',107,4,'#','',1,0,'F','0','0','system:notice:remove','#','admin','2021-01-14 15:39:13','',NULL,''),
(1040,'操作查询',500,1,'#','',1,0,'F','0','0','monitor:operlog:query','#','admin','2021-01-14 15:39:13','',NULL,''),
(1041,'操作删除',500,2,'#','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2021-01-14 15:39:13','',NULL,''),
(1042,'日志导出',500,4,'#','',1,0,'F','0','0','monitor:operlog:export','#','admin','2021-01-14 15:39:13','',NULL,''),
(1043,'登录查询',501,1,'#','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2021-01-14 15:39:13','',NULL,''),
(1044,'登录删除',501,2,'#','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2021-01-14 15:39:13','',NULL,''),
(1045,'日志导出',501,3,'#','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2021-01-14 15:39:13','',NULL,''),
(1046,'在线查询',109,1,'#','',1,0,'F','0','0','monitor:online:query','#','admin','2021-01-14 15:39:13','',NULL,''),
(1047,'批量强退',109,2,'#','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2021-01-14 15:39:13','',NULL,''),
(1048,'单条强退',109,3,'#','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2021-01-14 15:39:13','',NULL,''),
(1049,'任务查询',110,1,'#','',1,0,'F','0','0','monitor:job:query','#','admin','2021-01-14 15:39:13','',NULL,''),
(1050,'任务新增',110,2,'#','',1,0,'F','0','0','monitor:job:add','#','admin','2021-01-14 15:39:13','',NULL,''),
(1051,'任务修改',110,3,'#','',1,0,'F','0','0','monitor:job:edit','#','admin','2021-01-14 15:39:13','',NULL,''),
(1052,'任务删除',110,4,'#','',1,0,'F','0','0','monitor:job:remove','#','admin','2021-01-14 15:39:13','',NULL,''),
(1053,'状态修改',110,5,'#','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2021-01-14 15:39:13','',NULL,''),
(1054,'任务导出',110,7,'#','',1,0,'F','0','0','monitor:job:export','#','admin','2021-01-14 15:39:13','',NULL,''),
(1055,'生成查询',115,1,'#','',1,0,'F','0','0','tool:gen:query','#','admin','2021-01-14 15:39:13','',NULL,''),
(1056,'生成修改',115,2,'#','',1,0,'F','0','0','tool:gen:edit','#','admin','2021-01-14 15:39:13','',NULL,''),
(1057,'生成删除',115,3,'#','',1,0,'F','0','0','tool:gen:remove','#','admin','2021-01-14 15:39:13','',NULL,''),
(1058,'导入代码',115,2,'#','',1,0,'F','0','0','tool:gen:import','#','admin','2021-01-14 15:39:13','',NULL,''),
(1059,'预览代码',115,4,'#','',1,0,'F','0','0','tool:gen:preview','#','admin','2021-01-14 15:39:13','',NULL,''),
(1060,'生成代码',115,5,'#','',1,0,'F','0','0','tool:gen:code','#','admin','2021-01-14 15:39:13','',NULL,''),
(2000,'用户标签',4,10,'wxusertags','wxmp/wxusertags/index',1,0,'C','0','0','wxmp:wxusertags:list','tab','admin','2020-03-03 10:47:36','admin','2020-03-03 20:17:50',''),
(2001,'修改标签',2000,10,'',NULL,1,0,'F','1','0','wxmp:wxusertags:edit','#','admin','2020-03-03 11:16:13','',NULL,''),
(2002,'公众号用户',4,20,'wxuser','wxmp/wxuser/index',1,0,'C','0','0','wxmp:wxuser:index','peoples','admin','2020-03-04 10:13:30','',NULL,''),
(2003,'用户消息',4,30,'wxmsg','wxmp/wxmsg/index',1,0,'C','0','0','wxmp:wxmsg:index','clipboard','admin','2020-03-04 10:15:47','',NULL,''),
(2004,'素材管理',4,40,'wxmaterial','wxmp/wxmaterial/index',1,0,'C','0','0','wxmp:wxmaterial:index','example','admin','2020-03-04 10:17:21','admin','2020-03-05 21:31:33',''),
(2005,'自定义菜单',4,50,'wxmenu','wxmp/wxmenu/detail',1,0,'C','0','0','wxmp:wxmenu:get','cascader','admin','2020-03-04 10:18:02','admin','2020-03-04 10:29:20',''),
(2006,'消息自动回复',4,60,'wxautoreply','wxmp/wxautoreply/index',1,0,'C','0','0','wxmp:wxautoreply:index','dashboard','admin','2020-03-04 10:18:53','',NULL,''),
(2007,'数据统计',4,70,'wxsummary','wxmp/wxsummary/index',1,0,'C','0','0',NULL,'druid','admin','2020-03-04 10:19:53','',NULL,''),
(2008,'用户标签删除',2000,0,'',NULL,1,0,'F','0','0','wxmp:wxusertags:del','#','admin','2020-03-04 17:08:10','',NULL,''),
(2009,'用户标签新增',2000,0,'',NULL,1,0,'F','0','0','wxmp:wxusertags:add','#','admin','2020-03-04 17:08:42','',NULL,''),
(2010,'公众号用户新增',2002,0,'',NULL,1,0,'F','0','0','wxmp:wxuser:add','#','admin','2020-03-04 17:15:01','admin','2020-03-04 17:16:59',''),
(2011,'公众号用户修改',2002,0,'',NULL,1,0,'F','0','0','wxmp:wxuser:edit','#','admin','2020-03-04 17:16:17','admin','2020-03-04 17:17:09',''),
(2012,'公众号用户打标签',2002,0,'',NULL,1,0,'F','0','0','wxmp:wxuser:tagging','#','admin','2020-03-04 17:16:41','',NULL,''),
(2013,'公众号用户备注修改',2002,0,'',NULL,1,0,'F','0','0','wxmp:wxuser:edit:remark','#','admin','2020-03-04 17:17:43','',NULL,''),
(2014,'公众号用户同步',2002,0,'',NULL,1,0,'F','0','0','wxmp:wxuser:synchro','#','admin','2020-03-04 17:18:09','',NULL,''),
(2015,'公众号用户删除',2002,0,'',NULL,1,0,'F','0','0','wxmp:wxuser:del','#','admin','2020-03-04 17:18:31','',NULL,''),
(2016,'公众号用户详情',2002,0,'',NULL,1,0,'F','0','0','wxmp:wxuser:get','#','admin','2020-03-04 17:18:55','',NULL,''),
(2017,'用户消息新增',2003,0,'',NULL,1,0,'F','0','0','wxmp:wxmsg:add','#','admin','2020-03-04 17:19:24','',NULL,''),
(2018,'用户消息修改',2003,0,'',NULL,1,0,'F','0','0','wxmp:wxmsg:edit','#','admin','2020-03-04 17:19:45','',NULL,''),
(2019,'用户消息删除',2003,0,'',NULL,1,0,'F','0','0','wxmp:wxmsg:del','#','admin','2020-03-04 17:20:03','',NULL,''),
(2020,'用户消息详情',2003,0,'',NULL,1,0,'F','0','0','wxmp:wxmsg:get','#','admin','2020-03-04 17:20:21','',NULL,''),
(2021,'素材新增',2004,0,'',NULL,1,0,'F','0','0','wxmp:wxmaterial:add','#','admin','2020-03-04 17:20:43','',NULL,''),
(2022,'素材修改',2004,0,'',NULL,1,0,'F','0','0','wxmp:wxmaterial:edit','#','admin','2020-03-04 17:21:03','',NULL,''),
(2023,'素材删除',2004,0,'',NULL,1,0,'F','0','0','wxmp:wxmaterial:del','#','admin','2020-03-04 17:21:24','',NULL,''),
(2024,'素材详情',2004,0,'',NULL,1,0,'F','0','0','wxmp:wxmaterial:get','#','admin','2020-03-04 17:21:43','',NULL,''),
(2025,'自定义菜单发布',2005,0,'',NULL,1,0,'F','0','0','wxmp:wxmenu:add','#','admin','2020-03-04 17:22:12','',NULL,''),
(2026,'消息自动回复新增',2006,0,'',NULL,1,0,'F','0','0','wxmp:wxautoreply:add','#','admin','2020-03-04 17:22:43','',NULL,''),
(2027,'消息自动回复修改',2006,0,'',NULL,1,0,'F','0','0','wxmp:wxautoreply:edit','#','admin','2020-03-04 17:23:05','',NULL,''),
(2028,'消息自动回复删除',2006,0,'',NULL,1,0,'F','0','0','wxmp:wxautoreply:del','#','admin','2020-03-04 17:23:36','',NULL,''),
(2029,'消息自动回复详情',2006,0,'',NULL,1,0,'F','0','0','wxmp:wxautoreply:get','#','admin','2020-03-04 17:23:59','',NULL,'');

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';

/*Data for the table `sys_notice` */

insert  into `sys_notice`(`notice_id`,`notice_title`,`notice_type`,`notice_content`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(11,'ewtwet','1',NULL,'0','admin','2021-01-14 17:45:06','',NULL,NULL);

/*Table structure for table `sys_oper_log` */

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';

/*Data for the table `sys_oper_log` */

insert  into `sys_oper_log`(`oper_id`,`title`,`business_type`,`method`,`request_method`,`operator_type`,`oper_name`,`dept_name`,`oper_url`,`oper_ip`,`oper_location`,`oper_param`,`json_result`,`status`,`error_msg`,`oper_time`) values 
(100,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1610609953000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1610609953000,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 17:08:45'),
(101,'通知公告',2,'com.ruoyi.web.controller.system.SysNoticeController.edit()','PUT',1,'admin',NULL,'/system/notice','127.0.0.1','内网IP','{\"noticeContent\":\"维护内容\",\"createBy\":\"admin\",\"createTime\":1610609954000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 若依系统凌晨维护\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 17:08:57'),
(102,'通知公告',3,'com.ruoyi.web.controller.system.SysNoticeController.remove()','DELETE',1,'admin',NULL,'/system/notice/2','127.0.0.1','内网IP','{noticeIds=2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 17:08:59'),
(103,'通知公告',1,'com.ruoyi.web.controller.system.SysNoticeController.add()','POST',1,'admin',NULL,'/system/notice','127.0.0.1','内网IP','{\"noticeContent\":\"<p><br></p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"rwes\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 17:09:04'),
(104,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','sys_config,sys_dept,sys_dict_data,sys_dict_type,sys_job,sys_job_log,sys_logininfor,sys_menu,sys_notice,sys_oper_log','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 17:10:34'),
(105,'通知公告',2,'com.joolun.web.controller.system.SysNoticeController.edit()','PUT',1,'admin',NULL,'/system/notice','127.0.0.1','内网IP','{\"noticeContent\":\"<p><br></p>\",\"createBy\":\"admin\",\"createTime\":1610615344000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeId\":10,\"noticeTitle\":\"rwes\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 17:44:58'),
(106,'通知公告',3,'com.joolun.web.controller.system.SysNoticeController.remove()','DELETE',1,'admin',NULL,'/system/notice/10','127.0.0.1','内网IP','{noticeIds=10}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 17:45:01'),
(107,'通知公告',1,'com.joolun.web.controller.system.SysNoticeController.add()','POST',1,'admin',NULL,'/system/notice','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"ewtwet\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 17:45:06'),
(108,'菜单管理',1,'com.joolun.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"orderNum\":\"0\",\"menuName\":\"公众号用户2\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"wxuser\",\"component\":\"wxmp/wxuser/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"wxmp:wxuser:index\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 22:45:08'),
(109,'菜单管理',3,'com.joolun.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2030','127.0.0.1','内网IP','{menuId=2030}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 22:46:21'),
(110,'菜单管理',1,'com.joolun.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"icon\":\"bug\",\"orderNum\":\"0\",\"menuName\":\"用户管理2\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"user2\",\"component\":\"system/user/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"system:user:list\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 22:48:32'),
(111,'菜单管理',2,'com.joolun.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"icon\":\"bug\",\"orderNum\":\"0\",\"menuName\":\"用户管理2\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"user2\",\"component\":\"wxmp/wxuser/index\",\"children\":[],\"createTime\":1610635712000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2031,\"menuType\":\"C\",\"perms\":\"system:user:list\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 22:48:59'),
(112,'菜单管理',3,'com.joolun.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2031','127.0.0.1','内网IP','{menuId=2031}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 22:49:08'),
(113,'菜单管理',1,'com.joolun.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":\"0\",\"menuName\":\"sdgsgwe\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"role2\",\"component\":\"system/role2/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"system:role:list\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-14 22:54:42'),
(114,'菜单管理',3,'com.joolun.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2032','127.0.0.1','内网IP','{menuId=2032}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-15 20:22:31'),
(115,'用户管理',2,'com.joolun.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1610609953000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1610609953000,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-15 20:23:11'),
(116,'用户管理',2,'com.joolun.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1610609953000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1610609953000,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-15 20:52:07'),
(117,'用户管理',3,'com.joolun.web.controller.system.SysUserController.remove()','DELETE',1,'admin',NULL,'/system/user/2','127.0.0.1','内网IP','{userIds=2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-15 20:52:42'),
(118,'用户管理',1,'com.joolun.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"password\":\"$2a$10$KTBu09ed743F.IS1Y5TCluX8Jg17xnef5VBwDHjoi.MsgpU.fsQQa\",\"postIds\":[],\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"test\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-15 20:52:55'),
(119,'用户管理',2,'com.joolun.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[],\"phonenumber\":\"\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"若依科技\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1610715175000,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-15 20:53:33'),
(120,'用户管理',2,'com.joolun.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1610609953000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"joolun@163.com\",\"nickName\":\"JooLun\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1610609953000,\"status\":\"0\"}','null',1,'不允许操作超级管理员用户','2021-01-15 23:53:12'),
(121,'部门管理',2,'com.joolun.web.controller.system.SysDeptController.edit()','PUT',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"JooLun科技\",\"leader\":\"JooLun\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1610609953000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"JooLun@qq.com\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-15 23:54:04'),
(122,'通知公告',3,'com.joolun.web.controller.system.SysNoticeController.remove()','DELETE',1,'admin',NULL,'/system/notice/1','127.0.0.1','内网IP','{noticeIds=1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-15 23:54:17'),
(123,'代码生成',8,'com.joolun.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{}','null',0,NULL,'2021-01-15 23:54:41'),
(124,'部门管理',2,'com.joolun.web.controller.system.SysDeptController.edit()','PUT',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"深圳总公司\",\"leader\":\"JooLun\",\"deptId\":101,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1610609953000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"JooLun@qq.com\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-16 00:00:29'),
(125,'部门管理',2,'com.joolun.web.controller.system.SysDeptController.edit()','PUT',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"研发部门\",\"leader\":\"JooLun\",\"deptId\":103,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1610609953000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"JooLun@qq.com\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-16 00:00:40'),
(126,'部门管理',2,'com.joolun.web.controller.system.SysDeptController.edit()','PUT',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"市场部门\",\"leader\":\"JooLun\",\"deptId\":104,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1610609953000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"ry@qq.com\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-16 00:00:45'),
(127,'部门管理',2,'com.joolun.web.controller.system.SysDeptController.edit()','PUT',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"测试部门\",\"leader\":\"JooLun\",\"deptId\":105,\"orderNum\":\"3\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1610609953000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"ry@qq.com\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-16 00:00:48'),
(128,'部门管理',2,'com.joolun.web.controller.system.SysDeptController.edit()','PUT',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"财务部门\",\"leader\":\"JooLun\",\"deptId\":106,\"orderNum\":\"4\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1610609953000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"ry@qq.com\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-16 00:00:54'),
(129,'部门管理',2,'com.joolun.web.controller.system.SysDeptController.edit()','PUT',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"运维部门\",\"leader\":\"JooLun\",\"deptId\":107,\"orderNum\":\"5\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1610609953000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"ry@qq.com\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-16 00:00:57'),
(130,'部门管理',2,'com.joolun.web.controller.system.SysDeptController.edit()','PUT',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"长沙分公司\",\"leader\":\"JooLun\",\"deptId\":102,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1610609953000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"ry@qq.com\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-16 00:01:00'),
(131,'部门管理',2,'com.joolun.web.controller.system.SysDeptController.edit()','PUT',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"市场部门\",\"leader\":\"JooLun\",\"deptId\":108,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":102,\"createBy\":\"admin\",\"children\":[],\"createTime\":1610609953000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,102\",\"email\":\"ry@qq.com\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-16 00:01:05'),
(132,'部门管理',2,'com.joolun.web.controller.system.SysDeptController.edit()','PUT',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"deptName\":\"财务部门\",\"leader\":\"JooLun\",\"deptId\":109,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":102,\"createBy\":\"admin\",\"children\":[],\"createTime\":1610609953000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,102\",\"email\":\"ry@qq.com\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2021-01-16 00:01:09');

/*Table structure for table `sys_post` */

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'ceo','董事长',1,'0','admin','2021-01-14 15:39:13','',NULL,''),
(2,'se','项目经理',2,'0','admin','2021-01-14 15:39:13','',NULL,''),
(3,'hr','人力资源',3,'0','admin','2021-01-14 15:39:13','',NULL,''),
(4,'user','普通员工',4,'0','admin','2021-01-14 15:39:13','',NULL,'');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2021-01-14 15:39:13','',NULL,'超级管理员'),
(2,'普通角色','common',2,'2',1,1,'0','0','admin','2021-01-14 15:39:13','',NULL,'普通角色');

/*Table structure for table `sys_role_dept` */

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';

/*Data for the table `sys_role_dept` */

insert  into `sys_role_dept`(`role_id`,`dept_id`) values 
(2,100),
(2,101),
(2,105);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values 
(2,1),
(2,2),
(2,3),
(2,4),
(2,100),
(2,101),
(2,102),
(2,103),
(2,104),
(2,105),
(2,106),
(2,107),
(2,108),
(2,109),
(2,110),
(2,111),
(2,112),
(2,113),
(2,114),
(2,115),
(2,116),
(2,500),
(2,501),
(2,1000),
(2,1001),
(2,1002),
(2,1003),
(2,1004),
(2,1005),
(2,1006),
(2,1007),
(2,1008),
(2,1009),
(2,1010),
(2,1011),
(2,1012),
(2,1013),
(2,1014),
(2,1015),
(2,1016),
(2,1017),
(2,1018),
(2,1019),
(2,1020),
(2,1021),
(2,1022),
(2,1023),
(2,1024),
(2,1025),
(2,1026),
(2,1027),
(2,1028),
(2,1029),
(2,1030),
(2,1031),
(2,1032),
(2,1033),
(2,1034),
(2,1035),
(2,1036),
(2,1037),
(2,1038),
(2,1039),
(2,1040),
(2,1041),
(2,1042),
(2,1043),
(2,1044),
(2,1045),
(2,1046),
(2,1047),
(2,1048),
(2,1049),
(2,1050),
(2,1051),
(2,1052),
(2,1053),
(2,1054),
(2,1055),
(2,1056),
(2,1057),
(2,1058),
(2,1059),
(2,1060);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,103,'admin','JooLun','00','JooLun@163.com','15888888888','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2021-01-14 15:39:13','admin','2021-01-14 15:39:13','',NULL,'管理员'),
(2,105,'ry','JooLun','00','JooLun@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','2','127.0.0.1','2021-01-14 15:39:13','admin','2021-01-14 15:39:13','admin','2021-01-15 20:52:07','测试员'),
(100,100,'test','test','00','','','0','','$2a$10$KTBu09ed743F.IS1Y5TCluX8Jg17xnef5VBwDHjoi.MsgpU.fsQQa','0','0','',NULL,'admin','2021-01-15 20:52:55','admin','2021-01-15 20:53:33',NULL);

/*Table structure for table `sys_user_post` */

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values 
(1,1);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values 
(1,1),
(100,2);

/*Table structure for table `wx_auto_reply` */

DROP TABLE IF EXISTS `wx_auto_reply`;

CREATE TABLE `wx_auto_reply` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主键',
  `create_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `del_flag` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `type` char(2) DEFAULT NULL COMMENT '类型（1、关注时回复；2、消息回复；3、关键词回复）',
  `req_key` varchar(64) DEFAULT NULL COMMENT '关键词',
  `req_type` char(10) DEFAULT NULL COMMENT '请求消息类型（text：文本；image：图片；voice：语音；video：视频；shortvideo：小视频；location：地理位置）',
  `rep_type` char(10) DEFAULT NULL COMMENT '回复消息类型（text：文本；image：图片；voice：语音；video：视频；music：音乐；news：图文）',
  `rep_mate` char(10) DEFAULT NULL COMMENT '回复类型文本匹配类型（1、全匹配，2、半匹配）',
  `rep_content` text COMMENT '回复类型文本保存文字',
  `rep_media_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '回复类型imge、voice、news、video的mediaID或音乐缩略图的媒体id',
  `rep_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '回复的素材名、视频和音乐的标题',
  `rep_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '视频和音乐的描述',
  `rep_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '链接',
  `rep_hq_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '高质量链接',
  `rep_thumb_media_id` varchar(64) DEFAULT NULL COMMENT '缩略图的媒体id',
  `rep_thumb_url` varchar(500) DEFAULT NULL COMMENT '缩略图url',
  `content` mediumtext COMMENT '图文消息的内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='微信自动回复';

/*Data for the table `wx_auto_reply` */

insert  into `wx_auto_reply`(`id`,`create_id`,`create_time`,`update_id`,`update_time`,`remark`,`del_flag`,`type`,`req_key`,`req_type`,`rep_type`,`rep_mate`,`rep_content`,`rep_media_id`,`rep_name`,`rep_desc`,`rep_url`,`rep_hq_url`,`rep_thumb_media_id`,`rep_thumb_url`,`content`) values 
('1349737556672020482',NULL,'2021-01-14 23:18:05',NULL,NULL,NULL,'0','1',NULL,NULL,'text',NULL,'sgwetey',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1350048965070979074',NULL,'2021-01-15 19:55:30',NULL,NULL,NULL,'0','2',NULL,'text','text',NULL,'6699',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `wx_menu` */

DROP TABLE IF EXISTS `wx_menu`;

CREATE TABLE `wx_menu` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单ID（click、scancode_push、scancode_waitmsg、pic_sysphoto、pic_photo_or_album、pic_weixin、location_select：保存key）',
  `del_flag` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `sort` int DEFAULT '1' COMMENT '排序值',
  `parent_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '父菜单ID',
  `type` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '菜单类型click、view、miniprogram、scancode_push、scancode_waitmsg、pic_sysphoto、pic_photo_or_album、pic_weixin、location_select、media_id、view_limited等',
  `name` varchar(20) DEFAULT NULL COMMENT '菜单名',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'view、miniprogram保存链接',
  `ma_app_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '小程序的appid',
  `ma_page_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '小程序的页面路径',
  `rep_type` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '回复消息类型（text：文本；image：图片；voice：语音；video：视频；music：音乐；news：图文）',
  `rep_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT 'Text:保存文字',
  `rep_media_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'imge、voice、news、video：mediaID',
  `rep_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '素材名、视频和音乐的标题',
  `rep_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '视频和音乐的描述',
  `rep_url` varchar(500) DEFAULT NULL COMMENT '链接',
  `rep_hq_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '高质量链接',
  `rep_thumb_media_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '缩略图的媒体id',
  `rep_thumb_url` varchar(500) DEFAULT NULL COMMENT '缩略图url',
  `content` mediumtext COMMENT '图文消息的内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='自定义菜单表';

/*Data for the table `wx_menu` */

insert  into `wx_menu`(`id`,`del_flag`,`create_time`,`update_time`,`sort`,`parent_id`,`type`,`name`,`url`,`ma_app_id`,`ma_page_path`,`rep_type`,`rep_content`,`rep_media_id`,`rep_name`,`rep_desc`,`rep_url`,`rep_hq_url`,`rep_thumb_media_id`,`rep_thumb_url`,`content`) values 
('1350048385221033986','0','2021-01-15 19:54:31',NULL,1,'1350048716038373377','click','子菜单名称',NULL,NULL,NULL,'text','sdgsdgsdg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}'),
('1350048385221033987','0','2021-01-15 19:54:31',NULL,2,'1350048716038373377','click','子菜单名称',NULL,NULL,NULL,'text','66699',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1350048716038373377','0','2021-01-15 19:54:31',NULL,1,'0',NULL,'菜单名称',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `wx_msg` */

DROP TABLE IF EXISTS `wx_msg`;

CREATE TABLE `wx_msg` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主键',
  `create_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `del_flag` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `app_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '公众号名称',
  `app_logo` varchar(500) DEFAULT NULL COMMENT '公众号logo',
  `wx_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '微信用户ID',
  `nick_name` varchar(200) DEFAULT NULL COMMENT '微信用户昵称',
  `headimg_url` varchar(1000) DEFAULT NULL COMMENT '微信用户头像',
  `type` char(2) DEFAULT NULL COMMENT '消息分类（1、用户发给公众号；2、公众号发给用户；）',
  `rep_type` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '消息类型（text：文本；image：图片；voice：语音；video：视频；shortvideo：小视频；location：地理位置；music：音乐；news：图文；event：推送事件）',
  `rep_event` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '事件类型（subscribe：关注；unsubscribe：取关；CLICK、VIEW：菜单事件）',
  `rep_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '回复类型文本保存文字、地理位置信息',
  `rep_media_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '回复类型imge、voice、news、video的mediaID或音乐缩略图的媒体id',
  `rep_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '回复的素材名、视频和音乐的标题',
  `rep_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '视频和音乐的描述',
  `rep_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '链接',
  `rep_hq_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '高质量链接',
  `content` mediumtext COMMENT '图文消息的内容',
  `rep_thumb_media_id` varchar(64) DEFAULT NULL COMMENT '缩略图的媒体id',
  `rep_thumb_url` varchar(500) DEFAULT NULL COMMENT '缩略图url',
  `rep_location_x` double DEFAULT NULL COMMENT '地理位置维度',
  `rep_location_y` double DEFAULT NULL COMMENT '地理位置经度',
  `rep_scale` double DEFAULT NULL COMMENT '地图缩放大小',
  `read_flag` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '已读标记（1：是；0：否）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='微信消息';

/*Data for the table `wx_msg` */

insert  into `wx_msg`(`id`,`create_id`,`create_time`,`update_id`,`update_time`,`remark`,`del_flag`,`app_name`,`app_logo`,`wx_user_id`,`nick_name`,`headimg_url`,`type`,`rep_type`,`rep_event`,`rep_content`,`rep_media_id`,`rep_name`,`rep_desc`,`rep_url`,`rep_hq_url`,`content`,`rep_thumb_media_id`,`rep_thumb_url`,`rep_location_x`,`rep_location_y`,`rep_scale`,`read_flag`) values 
('1350046611835748353',NULL,'2021-01-15 19:46:10',NULL,'2021-01-15 19:51:13',NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','1','text',NULL,' hhh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),
('1350046688146915330',NULL,'2021-01-15 19:46:28',NULL,'2021-01-15 19:51:13',NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','1','event','unsubscribe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),
('1350048042097606657',NULL,'2021-01-15 19:51:51',NULL,'2021-01-15 19:52:14',NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','1','event','subscribe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),
('1350048042122772482',NULL,'2021-01-15 19:51:52',NULL,NULL,NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','2','text',NULL,'sgwetey',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),
('1350048154626588674',NULL,'2021-01-15 19:52:17',NULL,NULL,NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','2','text',NULL,'666',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),
('1350048909433536514',NULL,'2021-01-15 19:55:17',NULL,NULL,NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','1','text',NULL,'fgg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),
('1350048983534305282',NULL,'2021-01-15 19:55:35',NULL,NULL,NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','1','text',NULL,'jjj',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),
('1350048983622385666',NULL,'2021-01-15 19:55:36',NULL,NULL,NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','2','text',NULL,'6699',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),
('1350050472625537025',NULL,'2021-01-15 20:01:30',NULL,NULL,NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','1','event','CLICK',NULL,NULL,'子菜单名称',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),
('1350050472680062978',NULL,'2021-01-15 20:01:31',NULL,NULL,NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','2','text',NULL,'sdgsdgsdg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),
('1350050498693136385',NULL,'2021-01-15 20:01:36',NULL,NULL,NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','1','event','CLICK',NULL,NULL,'子菜单名称',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),
('1350050498789605377',NULL,'2021-01-15 20:01:37',NULL,NULL,NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','2','text',NULL,'66699',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),
('1350050512110714882',NULL,'2021-01-15 20:01:39',NULL,NULL,NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','1','event','CLICK',NULL,NULL,'子菜单名称',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),
('1350050512135880705',NULL,'2021-01-15 20:01:40',NULL,NULL,NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','2','text',NULL,'sdgsdgsdg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),
('1350050524488105985',NULL,'2021-01-15 20:01:42',NULL,NULL,NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','1','event','CLICK',NULL,NULL,'子菜单名称',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),
('1350050524584574978',NULL,'2021-01-15 20:01:43',NULL,NULL,NULL,'0',NULL,NULL,'1349736631303700482','JL','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132','2','text',NULL,'66699',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1');

/*Table structure for table `wx_user` */

DROP TABLE IF EXISTS `wx_user`;

CREATE TABLE `wx_user` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主键',
  `create_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户备注',
  `del_flag` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `app_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用类型(1:小程序，2:公众号)',
  `subscribe` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否订阅（1：是；0：否；2：网页授权用户）',
  `subscribe_scene` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '返回用户关注的渠道来源，ADD_SCENE_SEARCH 公众号搜索，ADD_SCENE_ACCOUNT_MIGRATION 公众号迁移，ADD_SCENE_PROFILE_CARD 名片分享，ADD_SCENE_QR_CODE 扫描二维码，ADD_SCENEPROFILE LINK 图文页内名称点击，ADD_SCENE_PROFILE_ITEM 图文页右上角菜单，ADD_SCENE_PAID 支付后关注，ADD_SCENE_OTHERS 其他',
  `subscribe_time` datetime DEFAULT NULL COMMENT '关注时间',
  `subscribe_num` int DEFAULT NULL COMMENT '关注次数',
  `cancel_subscribe_time` datetime DEFAULT NULL COMMENT '取消关注时间',
  `open_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户标识',
  `nick_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '昵称',
  `sex` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '性别（1：男，2：女，0：未知）',
  `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '所在城市',
  `country` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '所在国家',
  `province` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '所在省份',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `language` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户语言',
  `headimg_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '头像',
  `union_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'union_id',
  `group_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户组',
  `tagid_list` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '标签列表',
  `qr_scene_str` varchar(64) DEFAULT NULL COMMENT '二维码扫码场景',
  `latitude` double DEFAULT NULL COMMENT '地理位置纬度',
  `longitude` double DEFAULT NULL COMMENT '地理位置经度',
  `precision` double DEFAULT NULL COMMENT '地理位置精度',
  `session_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '会话密钥',
  `mall_user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '商城用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='微信用户';

/*Data for the table `wx_user` */

insert  into `wx_user`(`id`,`create_id`,`create_time`,`update_id`,`update_time`,`remark`,`del_flag`,`app_type`,`subscribe`,`subscribe_scene`,`subscribe_time`,`subscribe_num`,`cancel_subscribe_time`,`open_id`,`nick_name`,`sex`,`city`,`country`,`province`,`phone`,`language`,`headimg_url`,`union_id`,`group_id`,`tagid_list`,`qr_scene_str`,`latitude`,`longitude`,`precision`,`session_key`,`mall_user_id`) values 
('1349736631261757441',NULL,'2021-01-14 23:14:24',NULL,NULL,'','0','2','1','ADD_SCENE_QR_CODE','2020-01-06 14:14:44',1,NULL,'o3QwG1QnY-BOe4M724t0dvVQaUUo','魂散','0','','','',NULL,'zh_CN','http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEK4NgUCJLPziclZYMfTnaYFXvz1GajlxariavaOkbKsXzXMoVHO6E5LKUWaaxxQccLVaicYR2Zqv5ZnA/132',NULL,'{}','[]','1',NULL,NULL,NULL,NULL,NULL),
('1349736631282728961',NULL,'2021-01-14 23:14:24',NULL,NULL,'','0','2','1','ADD_SCENE_QR_CODE','2020-10-29 23:34:34',1,NULL,'o3QwG1YepdGeVJZv_2bfIEjwnb_I','愈辉','1','','亚美尼亚','',NULL,'zh_CN','http://thirdwx.qlogo.cn/mmopen/lV0d907m3OWXHibcSriareU9XpBCdBgkOd286EialAX0BtrWEdrhunepPEUq82E6wneLbtNttjKDMJSM7Y9HOnaRA/132',NULL,'{}','[]','1',NULL,NULL,NULL,NULL,NULL),
('1349736631291117570',NULL,'2021-01-14 23:14:24',NULL,NULL,'','0','2','1','ADD_SCENE_QR_CODE','2020-11-09 11:36:47',1,NULL,'o3QwG1ThD7gJ-qIXTDF88rly1VHg','八爪鱼','1','','中国','北京',NULL,'zh_CN','http://thirdwx.qlogo.cn/mmopen/lV0d907m3OW2BkZicF01PtUQera34FdW1Ga68DhZxQ7MlGMLDG3DZIBMm2Cibjueb6NMDvRMMRZFqjMVEogD9Oibw/132',NULL,'{}','[]','1',NULL,NULL,NULL,NULL,NULL),
('1349736631299506177',NULL,'2021-01-14 23:14:24',NULL,NULL,'','0','2','1','ADD_SCENE_QR_CODE','2020-12-05 16:04:40',1,NULL,'o3QwG1ZP0s_alsf-PuhDU7CmLQ24','十万伏特','1','成都','中国','四川',NULL,'zh_CN','http://thirdwx.qlogo.cn/mmopen/J6c32680OdZUtzqT9zvNO2QR8jG1jdPiaFFQVA91Szrnpke0ga7UCCXGTKqZIppyibuhv6NTRX3OXqPtSQey8Ww0qgzhqicUgGR/132',NULL,'{}','[]','1',NULL,NULL,NULL,NULL,NULL),
('1349736631303700482',NULL,'2021-01-14 23:14:24',NULL,'2021-01-15 19:46:27','','0','2','1','ADD_SCENE_QR_CODE','2021-01-15 19:51:49',2,'2021-01-15 19:46:28','o3QwG1UuAz7VYM24e9rmihxyKJvg','JL','1','深圳','中国','广东',NULL,'zh_CN','http://thirdwx.qlogo.cn/mmopen/dMKNvxZfIaEco8NogUXngnPhXrEEzLoY69XP5ymS2RWFIyXpOGE8trxiaqydnIibicluloYMWO06qmmibuvZR6GEbYR1HmVCq41R/132',NULL,'{}','[]','',NULL,NULL,NULL,NULL,NULL),
('1349736631312089090',NULL,'2021-01-14 23:14:24',NULL,'2021-01-14 23:14:33','99','0','2','1','ADD_SCENE_QR_CODE','2021-01-11 17:43:37',1,NULL,'o3QwG1XWOtVl_ifcXYbPuiaPPnMc','redis','1','','中国','',NULL,'zh_CN','http://thirdwx.qlogo.cn/mmopen/lV0d907m3OU18kicFJhIBibV0XlvEnWzKN09tvVz3wyryA2cysGibW8BarSLyia8HeuOx8YDibGE192BibXG1xTtfC2nXf0x3MZS1x/132',NULL,'{}','[]','1',NULL,NULL,NULL,NULL,NULL),
('1349736631312089091',NULL,'2021-01-14 23:14:24',NULL,NULL,'','0','2','1','ADD_SCENE_QR_CODE','2020-03-16 10:32:31',1,NULL,'o3QwG1ecy727RcaP3XyevHbPK33M','、','1','厦门','中国','福建',NULL,'zh_CN','http://thirdwx.qlogo.cn/mmopen/OT05QvwvgZYuck1R4BqYzwFzicuAicDHSeJTKI21VvxgrUxEWnVxiaEseEVLnM2tzibxTIfUiaZ1aSLn4hJ8FSgu7EBgeID2LCh9s/132',NULL,'{}','[2]','1',NULL,NULL,NULL,NULL,NULL),
('1349736631328866305',NULL,'2021-01-14 23:14:24',NULL,NULL,'','0','2','1','ADD_SCENE_QR_CODE','2020-11-09 20:41:24',1,NULL,'o3QwG1RLqJDTP-KZfNxMrMOKpl1U','gameover!!!','1','武汉','中国','湖北',NULL,'zh_CN','http://thirdwx.qlogo.cn/mmopen/upjJ1bex0ocf0rsbPbSW6yorFpT2SicGibyia5bYRjqLpWDgnYR4icEtQ87TcDibO3qujm8wkhDib4CPQCldShq1FHovW9J2ibSsfFH/132',NULL,'{}','[]','1',NULL,NULL,NULL,NULL,NULL),
('1349736631328866306',NULL,'2021-01-14 23:14:24',NULL,NULL,'','0','2','1','ADD_SCENE_QR_CODE','2020-10-14 14:32:49',1,NULL,'o3QwG1f7sT5V_FV_EVj4kaQ09Zzs','壹杯淸茶。','1','青岛','中国','山东',NULL,'zh_CN','http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLCYmmGPrvvXcib0iaiaGQba4yFtwt35zEUgOAzGwPcwG2GIqmejmo8fxRibwQzSDibejrXV4dia1uiaanvXrZ3SKZyZiaEo3G2K8WhDTjs/132',NULL,'{}','[]','1',NULL,NULL,NULL,NULL,NULL),
('1349736631328866307',NULL,'2021-01-14 23:14:24',NULL,NULL,'','0','2','1','ADD_SCENE_QR_CODE','2020-02-24 16:49:28',1,NULL,'o3QwG1eaqyTxxW4VisfbaKL0BcWY','.Llkoi','1','长沙','中国','湖南',NULL,'zh_CN','http://thirdwx.qlogo.cn/mmopen/TBfgdHR2VFWloL25J3r1DfDE3a5R3yctJD3wc5CSoe3xWmy4lZPzxRZpj2x14dl87ndzlRXAN1ZN2W7w1n8bYtKWOMxG8ahq/132',NULL,'{}','[2]','1',NULL,NULL,NULL,NULL,NULL),
('1349736631337254914',NULL,'2021-01-14 23:14:24',NULL,NULL,'','0','2','1','ADD_SCENE_QR_CODE','2020-06-17 22:14:41',1,NULL,'o3QwG1d4Bq8lg-NbUOOYdaaVWhnE','Quentin','1','南京','中国','江苏',NULL,'zh_CN','http://thirdwx.qlogo.cn/mmopen/ceebSkrkkFTBe1cSDicrLGq05uMsfRkzNWhKp3JY6eISxwCoiagt6q2L4RGcGh61jnWWTI3xeXsAmFCEpozdSIDQKBhNosic8TY/132',NULL,'{}','[]','1',NULL,NULL,NULL,NULL,NULL),
('1349736631337254915',NULL,'2021-01-14 23:14:24',NULL,NULL,'后来','0','2','1','ADD_SCENE_QR_CODE','2019-06-04 22:22:21',1,NULL,'o3QwG1aKxN5AMEaNSbDV-vHJHtvM','安安晨晨','2','益阳','中国','湖南',NULL,'zh_CN','http://thirdwx.qlogo.cn/mmopen/ceebSkrkkFTRWgtVgYzPOETJtkqz0TIOzpVber8ic5DlUTky6zpgTGJHic6gG4wH7B7iay12QHo7BF3Iv0r6vTfS2GkcdywCmN8/132',NULL,'{}','[]','1',NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
