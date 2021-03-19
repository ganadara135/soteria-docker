-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.5.3-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- db_soteria_seoul 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `db_soteria_seoul` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_soteria_seoul`;

-- 테이블 db_soteria_seoul.attack_alert_setting 구조 내보내기
CREATE TABLE IF NOT EXISTS `attack_alert_setting` (
  `PUSH` char(50) DEFAULT NULL COMMENT 'Y|N',
  `EMAIL` char(50) DEFAULT NULL COMMENT 'Y|N',
  `SMS` char(50) DEFAULT NULL COMMENT 'Y|N',
  `SEVERITY_LEVEL` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.attack_category_mapping 구조 내보내기
CREATE TABLE IF NOT EXISTS `attack_category_mapping` (
  `ATTACK_ID` varchar(50) DEFAULT NULL,
  `AM_ID` varchar(50) DEFAULT NULL,
  `AC_ID` varchar(50) DEFAULT NULL,
  `AS_ID` varchar(50) DEFAULT NULL,
  KEY `FK_attack_category_maping_attack_severity` (`AS_ID`),
  KEY `FK_attack_category_mapping_attack_mitigation` (`AM_ID`),
  KEY `FK_attack_category_maping_attack_classification` (`AC_ID`),
  KEY `FK_attack_category_mapping_attack_info` (`ATTACK_ID`),
  CONSTRAINT `FK_attack_category_maping_attack_classification` FOREIGN KEY (`AC_ID`) REFERENCES `attack_classification` (`AC_ID`),
  CONSTRAINT `FK_attack_category_maping_attack_severity` FOREIGN KEY (`AS_ID`) REFERENCES `attack_severity` (`AS_ID`),
  CONSTRAINT `FK_attack_category_mapping_attack_info` FOREIGN KEY (`ATTACK_ID`) REFERENCES `attack_info` (`ATTACK_ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_attack_category_mapping_attack_mitigation` FOREIGN KEY (`AM_ID`) REFERENCES `attack_mitigation` (`AM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.attack_classification 구조 내보내기
CREATE TABLE IF NOT EXISTS `attack_classification` (
  `AC_ID` varchar(50) NOT NULL,
  `AC_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.attack_detection_log 구조 내보내기
CREATE TABLE IF NOT EXISTS `attack_detection_log` (
  `LOG_ID` varchar(50) NOT NULL,
  `ATTACK_TIME` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ATTACK_ID` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT '공격명 ID',
  `AC_ID` varchar(50) DEFAULT NULL COMMENT '공격분류 ID',
  `AS_ID` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT '공격유형 ID',
  `PROTOCOL` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SRC_IP` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `DST_IP` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `DST_PORT` int(11) DEFAULT NULL,
  `PAYLOAD` text DEFAULT NULL,
  `AM_ID` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT '대응방안 ID',
  PRIMARY KEY (`LOG_ID`),
  KEY `ATTACK_TIME` (`ATTACK_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.attack_ids 구조 내보내기
CREATE TABLE IF NOT EXISTS `attack_ids` (
  `NAME` varchar(50) DEFAULT NULL,
  `NEXT_ID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.attack_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `attack_info` (
  `ATTACK_ID` varchar(50) NOT NULL,
  `ATTACK_NAME` varchar(50) NOT NULL,
  `ATTACK_DESCRIPTION` text NOT NULL DEFAULT '',
  `CREATE_DATE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ATTACK_ID`,`ATTACK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.attack_known_port 구조 내보내기
CREATE TABLE IF NOT EXISTS `attack_known_port` (
  `PORT_NUM` int(11) DEFAULT NULL,
  `PROTCOL_NAME` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.attack_measure 구조 내보내기
CREATE TABLE IF NOT EXISTS `attack_measure` (
  `MEASURE_ID` varchar(50) NOT NULL,
  `LOG_ID` varchar(50) DEFAULT NULL,
  `MEASURE_TITLE` varchar(255) DEFAULT NULL,
  `MEASURE_CONTENTS` text DEFAULT NULL,
  `RESPONDER` varchar(50) DEFAULT NULL COMMENT '침해대응자/작성자',
  `MEASURE_STATUS` int(11) DEFAULT NULL COMMENT '미확인(0)|대응완료(1)|보류(2)',
  `MEASURE_DATE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MEASURE_ID`),
  KEY `FK_attack_measure_attack_detection_log` (`LOG_ID`),
  CONSTRAINT `FK_attack_measure_attack_detection_log` FOREIGN KEY (`LOG_ID`) REFERENCES `attack_detection_log` (`LOG_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.attack_mitigation 구조 내보내기
CREATE TABLE IF NOT EXISTS `attack_mitigation` (
  `AM_ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `AM_NAME` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `DESCRIPTION` text CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`AM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.attack_severity 구조 내보내기
CREATE TABLE IF NOT EXISTS `attack_severity` (
  `AS_ID` varchar(50) NOT NULL,
  `AS_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.capec 구조 내보내기
CREATE TABLE IF NOT EXISTS `capec` (
  `ID` int(11) DEFAULT NULL,
  `Name` varchar(95) DEFAULT NULL,
  `Abstraction` varchar(8) DEFAULT NULL,
  `Status` varchar(6) DEFAULT NULL,
  `Description` varchar(3762) DEFAULT NULL,
  `Alternate_Terms` varchar(53) DEFAULT NULL,
  `Likelihood_Of_Attack` varchar(6) DEFAULT NULL,
  `Typical_Severity` varchar(9) DEFAULT NULL,
  `Related_Attack_Patterns` varchar(222) DEFAULT NULL,
  `Execution_Flow` text DEFAULT NULL,
  `Prerequisites` varchar(1241) DEFAULT NULL,
  `Skills_Required` varchar(542) DEFAULT NULL,
  `Resources_Required` varchar(627) DEFAULT NULL,
  `Indicators` varchar(607) DEFAULT NULL,
  `Consequences` varchar(1556) DEFAULT NULL,
  `Mitigations` varchar(3576) DEFAULT NULL,
  `Example_Instances` varchar(3263) DEFAULT NULL,
  `Related_Weaknesses` varchar(64) DEFAULT NULL,
  `Taxonomy_Mappings` varchar(285) DEFAULT NULL,
  `Notes` varchar(2833) DEFAULT NULL,
  `Column_21` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.cwe 구조 내보내기
CREATE TABLE IF NOT EXISTS `cwe` (
  `CWE_ID` int(11) DEFAULT NULL,
  `Name` varchar(118) DEFAULT NULL,
  `Weakness_Abstraction` varchar(8) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Description` varchar(505) DEFAULT NULL,
  `Extended_Description` varchar(4273) DEFAULT NULL,
  `Related_Weaknesses` varchar(363) DEFAULT NULL,
  `Weakness_Ordinalities` varchar(481) DEFAULT NULL,
  `Applicable_Platforms` varchar(505) DEFAULT NULL,
  `Background_Details` varchar(1057) DEFAULT NULL,
  `Alternate_Terms` varchar(916) DEFAULT NULL,
  `Modes_Of_Introduction` varchar(1017) DEFAULT NULL,
  `Exploitation_Factors` int(11) DEFAULT NULL,
  `Likelihood_of_Exploit` int(11) DEFAULT NULL,
  `Common_Consequences` varchar(1915) DEFAULT NULL,
  `Detection_Methods` text DEFAULT NULL,
  `Potential_Mitigations` text DEFAULT NULL,
  `Observed_Examples` text DEFAULT NULL,
  `Functional_Areas` varchar(52) DEFAULT NULL,
  `Affected_Resources` varchar(37) DEFAULT NULL,
  `Taxonomy_Mappings` varchar(1573) DEFAULT NULL,
  `Related_Attack_Patterns` varchar(287) DEFAULT NULL,
  `Notes` varchar(5272) DEFAULT NULL,
  `Column_24` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.hosts 구조 내보내기
CREATE TABLE IF NOT EXISTS `hosts` (
  `HOST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `HOST_NAME` varchar(128) DEFAULT NULL,
  `IP` varchar(32) DEFAULT NULL,
  `MAC` varchar(32) DEFAULT NULL,
  `OS_TYPE` varchar(32) DEFAULT NULL,
  `OS_VER` varchar(32) DEFAULT NULL,
  `KERNEL_VER` varchar(128) DEFAULT NULL,
  `MOD_USER` int(11) DEFAULT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`HOST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.linux_syslogs 구조 내보내기
CREATE TABLE IF NOT EXISTS `linux_syslogs` (
  `LOG_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `HOST_ID` int(11) DEFAULT NULL,
  `FACILITY` tinyint(4) DEFAULT -1,
  `PRIORITY` tinyint(3) DEFAULT NULL,
  `PROCESS` varchar(64) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  `REPORTED_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `RECEIVED_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `MESSAGE` text DEFAULT NULL,
  `REVIEW_YN` char(1) DEFAULT 'N',
  PRIMARY KEY (`REPORTED_DATE`,`LOG_ID`),
  KEY `LINUX_SYSLOGS_HOST_ID_index` (`HOST_ID`),
  KEY `LINUX_SYSLOGS_PROCESS_index` (`PROCESS`),
  KEY `LINUX_SYSLOGS_LOG_ID_index` (`LOG_ID`),
  KEY `LINUX_SYSLOGS_REVIEW_YN_index` (`REVIEW_YN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
 PARTITION BY RANGE (unix_timestamp(`REPORTED_DATE`))
(PARTITION `P201911` VALUES LESS THAN (1575126000) ENGINE = InnoDB,
 PARTITION `P201912` VALUES LESS THAN (1577804400) ENGINE = InnoDB,
 PARTITION `P202001` VALUES LESS THAN MAXVALUE ENGINE = InnoDB);

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.mechcapec 구조 내보내기
CREATE TABLE IF NOT EXISTS `mechcapec` (
  `Cat15` varchar(11) DEFAULT NULL,
  `CAPEC_ID` int(11) DEFAULT NULL,
  `Name` varchar(79) DEFAULT NULL,
  `Description` varchar(749) DEFAULT NULL,
  `Mitigation` varchar(506) DEFAULT NULL,
  `Typical_Severity` varchar(9) DEFAULT NULL,
  `Related_Weaknesses` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.mechcapec_2 구조 내보내기
CREATE TABLE IF NOT EXISTS `mechcapec_2` (
  `Security_Test_ID` varchar(7) DEFAULT NULL,
  `Classification` varchar(11) DEFAULT NULL,
  `CAPEC_ID` int(11) DEFAULT NULL,
  `Name` varchar(79) DEFAULT NULL,
  `Typical_Severity` varchar(9) DEFAULT NULL,
  `Description` varchar(749) DEFAULT NULL,
  `Payload` int(11) DEFAULT NULL,
  `Methods_of_Attack` int(11) DEFAULT NULL,
  `Solutions_and_Mitigations` varchar(506) DEFAULT NULL,
  `Related_Standards_CWE` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.neurotron_workhistory 구조 내보내기
CREATE TABLE IF NOT EXISTS `neurotron_workhistory` (
  `HISTORY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `START_DATE` datetime DEFAULT NULL,
  `SEQ_FILE_LOC` varchar(128) DEFAULT '',
  `TTL_CNT` int(11) DEFAULT 0,
  `ABNZ_CNT` int(11) DEFAULT 0,
  `REPORTED_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `RECEIVED_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `HOST_ID` int(11) NOT NULL DEFAULT 0,
  `REVIEW_YN` char(1) DEFAULT 'N',
  PRIMARY KEY (`REPORTED_DATE`,`HISTORY_ID`),
  UNIQUE KEY `NEUROTRON_WORKHISTORY_HISTORY_ID_uindex` (`HISTORY_ID`),
  KEY `NEUROTRON_WORKHISTORY_HOST_ID_ABNZ_CNT_index` (`HOST_ID`,`ABNZ_CNT`),
  KEY `NEUROTRON_WORKHISTORY_START_DATE_index` (`START_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.push_email_his 구조 내보내기
CREATE TABLE IF NOT EXISTS `push_email_his` (
  `MSG_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ORG_ID` bigint(20) NOT NULL COMMENT 'PUSH_QUEUE MSG_ID',
  `STATUS` char(1) NOT NULL DEFAULT 'I',
  `REG_DATE` timestamp NULL DEFAULT NULL,
  `MOD_DATE` timestamp NULL DEFAULT NULL,
  `EMAIL` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`MSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.push_queue 구조 내보내기
CREATE TABLE IF NOT EXISTS `push_queue` (
  `MSG_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `MSG1` varchar(256) DEFAULT NULL,
  `MSG2` varchar(256) DEFAULT NULL,
  `MSG_TYPE` varchar(32) NOT NULL,
  `STATUS` char(1) DEFAULT 'I',
  `REG_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `SENT_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ALARM_TYPE` int(11) NOT NULL DEFAULT 0 COMMENT 'POPUP:1, EMAIL:100, SMS: 10',
  `TARGET_USER_TYPE` int(11) NOT NULL DEFAULT 0,
  `RSLT` char(1) NOT NULL DEFAULT '',
  `REVIEW_YN` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`MSG_ID`),
  KEY `PUSH_QUEUE_USER_ID_index` (`USER_ID`),
  KEY `PUSH_QUEUE_TARGET_USER_TYPE_index` (`TARGET_USER_TYPE`),
  KEY `PUSH_QUEUE_USER_ID_ALARM_TYPE_REVIEW_YN_index` (`USER_ID`,`ALARM_TYPE`,`REVIEW_YN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.push_sms_his 구조 내보내기
CREATE TABLE IF NOT EXISTS `push_sms_his` (
  `MSG_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ORG_ID` bigint(20) NOT NULL COMMENT 'PUSH_QUEUE MSG_ID',
  `STATUS` char(1) NOT NULL DEFAULT 'I',
  `REG_DATE` timestamp NULL DEFAULT NULL,
  `MOD_DATE` timestamp NULL DEFAULT NULL,
  `CONTACT` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`MSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.ref_date_tmp 구조 내보내기
CREATE TABLE IF NOT EXISTS `ref_date_tmp` (
  `seq` bigint(20) NOT NULL,
  `DT` date NOT NULL,
  PRIMARY KEY (`seq`),
  UNIQUE KEY `REF_DATE_TMP_DT_uindex` (`DT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.sbbs 구조 내보내기
CREATE TABLE IF NOT EXISTS `sbbs` (
  `SBB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SBB_NAME` varchar(128) DEFAULT NULL,
  `ALIAS` varchar(128) DEFAULT NULL,
  `IP` varchar(32) DEFAULT NULL,
  `MAC` varchar(32) DEFAULT NULL,
  `UUID` varchar(64) DEFAULT NULL,
  `OS_TYPE` varchar(32) DEFAULT NULL,
  `OS_VER` varchar(32) DEFAULT NULL,
  `KERNEL_VER` varchar(128) DEFAULT NULL,
  `NEUROTRON_VER` varchar(32) DEFAULT NULL,
  `SSH_PORT` int(11) DEFAULT NULL,
  `MOD_USER` int(11) DEFAULT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`SBB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.sbb_alarm_his 구조 내보내기
CREATE TABLE IF NOT EXISTS `sbb_alarm_his` (
  `HIS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ALM_TYPE` int(11) NOT NULL,
  `TASK_TYPE` int(11) NOT NULL,
  `EXEC_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_REF_ID` bigint(20) NOT NULL COMMENT 'SYSLOG_ID',
  PRIMARY KEY (`HIS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.sbb_alarm_schedule 구조 내보내기
CREATE TABLE IF NOT EXISTS `sbb_alarm_schedule` (
  `SBB_ID` int(11) NOT NULL,
  `ALM_TYPE` int(11) NOT NULL,
  `WEEK_DAY` int(11) NOT NULL,
  `FROM_TIME` time DEFAULT NULL,
  `TO_TIME` time DEFAULT NULL,
  `MOD_USER` int(11) NOT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`SBB_ID`,`ALM_TYPE`,`WEEK_DAY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.sbb_alarm_settings 구조 내보내기
CREATE TABLE IF NOT EXISTS `sbb_alarm_settings` (
  `SBB_ID` int(11) NOT NULL,
  `ALM_TYPE` int(11) NOT NULL,
  `NAI_YN` char(1) DEFAULT 'N',
  `SYSLOG_LEVEL` int(11) DEFAULT NULL,
  `EVENTLOG_LEVEL` int(11) DEFAULT NULL,
  `EVENTLOG_SUC_AUDIT_YN` char(1) DEFAULT 'N',
  `EVENTLOG_FAL_AUDIT_YN` char(1) DEFAULT 'N',
  `SBB_NETWORK_YN` char(1) DEFAULT 'N',
  `HOST_NETWORK_YN` char(1) DEFAULT 'N',
  `SBB_DSK_USAGE` int(11) DEFAULT 80,
  `MOD_USER` int(11) NOT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`SBB_ID`,`ALM_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.sbb_host_rel 구조 내보내기
CREATE TABLE IF NOT EXISTS `sbb_host_rel` (
  `REL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SBB_ID` int(11) NOT NULL,
  `HOST_ID` int(11) NOT NULL,
  `MOD_USER` int(11) NOT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`REL_ID`),
  UNIQUE KEY `SBB_HOST_REL_SBB_ID_HOST_ID_uindex` (`SBB_ID`,`HOST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.sbb_monitor 구조 내보내기
CREATE TABLE IF NOT EXISTS `sbb_monitor` (
  `LOG_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SBB_ID` int(10) unsigned NOT NULL,
  `CPU_USAGE` float DEFAULT NULL,
  `DISK_CAPACITY` float DEFAULT NULL,
  `TRAFFIC_YN` char(1) DEFAULT NULL,
  `REPORTED_DATE` timestamp NULL DEFAULT NULL,
  `RECEIVED_DATE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`),
  KEY `SBB_MONITOR_REPORTED_DATE_index` (`REPORTED_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.sbb_settings 구조 내보내기
CREATE TABLE IF NOT EXISTS `sbb_settings` (
  `SBB_ID` int(11) NOT NULL,
  `NAI_YN` char(4) DEFAULT NULL,
  `SYSLOG_LEVEL` int(11) DEFAULT NULL,
  `EVENTLOG_LEVEL` int(11) DEFAULT NULL,
  `EVENTLOG_SUC_AUDIT_YN` char(4) DEFAULT NULL,
  `EVENTLOG_FAL_AUDIT_YN` char(4) DEFAULT NULL,
  `MOD_USER` int(11) DEFAULT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`SBB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.spring_session 구조 내보내기
CREATE TABLE IF NOT EXISTS `spring_session` (
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SESSION_ID`),
  KEY `SPRING_SESSION_IX1` (`LAST_ACCESS_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.spring_session_attributes 구조 내보내기
CREATE TABLE IF NOT EXISTS `spring_session_attributes` (
  `SESSION_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob DEFAULT NULL,
  PRIMARY KEY (`SESSION_ID`,`ATTRIBUTE_NAME`),
  KEY `SPRING_SESSION_ATTRIBUTES_IX1` (`SESSION_ID`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_ID`) REFERENCES `spring_session` (`SESSION_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.syscall_log 구조 내보내기
CREATE TABLE IF NOT EXISTS `syscall_log` (
  `LOG_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `START_DATE` datetime DEFAULT NULL,
  `SYSCALL` int(11) DEFAULT 0,
  `PID` int(11) DEFAULT 0,
  `EXE` varchar(64) DEFAULT NULL,
  `REPORTED_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `RECEIVED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ATTACK_DESCRIPTION` text DEFAULT NULL,
  `ARGUMENT` float DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`),
  KEY `SYSCALL_LOG_START_DATE_index` (`START_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.system_config 구조 내보내기
CREATE TABLE IF NOT EXISTS `system_config` (
  `CONF_ID` int(11) NOT NULL,
  `CONF_NAME` varchar(128) DEFAULT NULL,
  `CONF_VALUE` varchar(256) DEFAULT NULL,
  `OTHER_NAME` varchar(128) DEFAULT NULL,
  `UNIT` varchar(128) DEFAULT NULL,
  `MOD_USER` int(11) NOT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`CONF_ID`),
  UNIQUE KEY `CONF_NAME` (`CONF_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.users 구조 내보내기
CREATE TABLE IF NOT EXISTS `users` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGON_NAME` varchar(64) DEFAULT NULL,
  `LOGON_PWD` varchar(256) DEFAULT NULL,
  `USER_TYPE` mediumint(11) DEFAULT NULL,
  `USER_NAME` varchar(64) DEFAULT NULL,
  `EMAIL` varchar(64) DEFAULT NULL,
  `CONTACT` varchar(16) DEFAULT NULL,
  `LAST_ACC_IP` varchar(32) DEFAULT NULL,
  `LAST_ACC_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TOKEN` varchar(256) DEFAULT NULL,
  `RETRY_CNT` tinyint(4) DEFAULT NULL,
  `LAST_PASS_MOD_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MOD_USER` int(11) DEFAULT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `USE_YN` char(1) DEFAULT NULL,
  `INIT_PASS_YN` char(1) DEFAULT NULL,
  `TMP_PASS` varchar(64) DEFAULT NULL,
  `OTP_TYPE` varchar(16) DEFAULT NULL,
  `OTP_SECRET` char(16) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `USERS_LOGON_NAME_uindex` (`LOGON_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.users_action_his 구조 내보내기
CREATE TABLE IF NOT EXISTS `users_action_his` (
  `HIS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `ACTION_TYPE` smallint(4) DEFAULT NULL,
  `ACTION_SUB_TYPE` smallint(11) DEFAULT NULL,
  `REMOTE_IP` varchar(32) DEFAULT NULL,
  `ACTION_RSLT` char(4) DEFAULT NULL,
  `REASON` varchar(1024) DEFAULT NULL,
  `REG_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`HIS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.user_ips 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_ips` (
  `EXT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `IP` varchar(32) DEFAULT NULL,
  `MOD_USER` int(11) DEFAULT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`EXT_ID`),
  UNIQUE KEY `USER_IPS_USER_ID_IP_uindex` (`USER_ID`,`IP`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.user_pwd_his 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_pwd_his` (
  `HIS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `LOGON_PWD` varchar(256) DEFAULT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`HIS_ID`),
  KEY `USER_PWD_HIS_USER_ID_index` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.user_sbb_rel 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_sbb_rel` (
  `USER_ID` int(11) NOT NULL,
  `SBB_ID` int(11) NOT NULL,
  `MOD_USER` int(11) NOT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`USER_ID`,`SBB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 db_soteria_seoul.user_session 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_session` (
  `USER_ID` int(11) NOT NULL,
  `SESSION_ID` char(36) NOT NULL DEFAULT '',
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 뷰 db_soteria_seoul.v_sbb_host 구조 내보내기
-- VIEW 종속성 오류를 극복하기 위해 임시 테이블을 생성합니다.
CREATE TABLE `v_sbb_host` (
	`SBB_ID` INT(11) NOT NULL,
	`SBB_NAME` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`SBB_ALIAS` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`SBB_IP` VARCHAR(32) NULL COLLATE 'utf8_general_ci',
	`SBB_MAC` VARCHAR(32) NULL COLLATE 'utf8_general_ci',
	`NEUROTRON_VER` VARCHAR(32) NULL COLLATE 'utf8_general_ci',
	`SSH_PORT` INT(11) NULL,
	`HOST_ID` INT(11) NOT NULL,
	`HOST_NAME` VARCHAR(128) NULL COLLATE 'utf8_general_ci',
	`HOST_IP` VARCHAR(32) NULL COLLATE 'utf8_general_ci',
	`HOST_MAC` VARCHAR(32) NULL COLLATE 'utf8_general_ci',
	`OS_TYPE` VARCHAR(32) NULL COLLATE 'utf8_general_ci',
	`OS_VER` VARCHAR(32) NULL COLLATE 'utf8_general_ci',
	`KERNEL_VER` VARCHAR(128) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- 뷰 db_soteria_seoul.v_sbb_host 구조 내보내기
-- 임시 테이블을 제거하고 최종 VIEW 구조를 생성
DROP TABLE IF EXISTS `v_sbb_host`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_sbb_host` AS select `SBB`.`SBB_ID` AS `SBB_ID`,`SBB`.`SBB_NAME` AS `SBB_NAME`,`SBB`.`ALIAS` AS `SBB_ALIAS`,`SBB`.`IP` AS `SBB_IP`,`SBB`.`MAC` AS `SBB_MAC`,`SBB`.`NEUROTRON_VER` AS `NEUROTRON_VER`,`SBB`.`SSH_PORT` AS `SSH_PORT`,`HOST`.`HOST_ID` AS `HOST_ID`,`HOST`.`HOST_NAME` AS `HOST_NAME`,`HOST`.`IP` AS `HOST_IP`,`HOST`.`MAC` AS `HOST_MAC`,`HOST`.`OS_TYPE` AS `OS_TYPE`,`HOST`.`OS_VER` AS `OS_VER`,`HOST`.`KERNEL_VER` AS `KERNEL_VER` from ((`SBBS` `SBB` join `SBB_HOST_REL` `REL` on(`SBB`.`SBB_ID` = `REL`.`SBB_ID`)) join `HOSTS` `HOST` on(`REL`.`HOST_ID` = `HOST`.`HOST_ID`)) ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
