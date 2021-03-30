-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.7-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- db_soteria_seoul 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `DB_SOTERIA_SEOUL` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `DB_SOTERIA_SEOUL`;



-- 테이블 db_soteria_seoul.attack_classification 구조 내보내기
CREATE TABLE IF NOT EXISTS `ATTACK_CLASSIFICATION_INFO` (
  `AC_ID` varchar(12) NOT NULL,
  `AC_NAME` varchar(50) DEFAULT NULL,
  `AC_DESCRIPTION` text CHARACTER SET utf8 DEFAULT NULL,
  `INPUT_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`AC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db_soteria_seoul.attack_classification:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `ATTACK_CLASSIFICATION_INFO` DISABLE KEYS */;
INSERT INTO `ATTACK_CLASSIFICATION_INFO` (`AC_ID`, `AC_NAME`) VALUES
	('AC_1', 'APP'),
	('AC_2', 'OS'),
	('AC_3', 'DB');
/*!40000 ALTER TABLE `ATTACK_CLASSIFICATION_INFO` ENABLE KEYS */;



-- 테이블 db_soteria_seoul.attack_severity 구조 내보내기
CREATE TABLE IF NOT EXISTS `ATTACK_SEVERITY_INFO` (
  `AS_ID` varchar(12) NOT NULL,
  `AS_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db_soteria_seoul.attack_severity:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `ATTACK_SEVERITY_INFO` DISABLE KEYS */;
INSERT INTO `ATTACK_SEVERITY_INFO` (`AS_ID`, `AS_NAME`) VALUES
	('AS_1', 'HIGH'),
	('AS_2', 'MEDIUM'),
	('AS_3', 'LOW');
/*!40000 ALTER TABLE `ATTACK_SEVERITY_INFO` ENABLE KEYS */;


-- 대응 방안에 대한 정보 제공 테이블  
-- 테이블 db_soteria_seoul.attack_mitigation 구조 내보내기
CREATE TABLE IF NOT EXISTS `ATTACK_MITIGATION_INFO` (
  `AM_ID` varchar(12) CHARACTER SET utf8 NOT NULL,
  -- 공격 이름과 같음  ATTACK_NAME
  `AM_NAME` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SOLUTION` text CHARACTER SET utf8 DEFAULT NULL,
  `INPUT_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`AM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 테이블 데이터 db_soteria_seoul.attack_mitigation:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `ATTACK_MITIGATION_INFO` DISABLE KEYS */;
INSERT INTO `ATTACK_MITIGATION_INFO` (`AM_ID`, `AM_NAME`, `SOLUTION`) VALUES
('AM_1', 'Error Based SQL Injection', '해당 언어에서 제공하는 디코딩 함수를 입력 데이터 수신 부분에 적용, 입력 데이터에서 싱글쿼터 등과 같은 부호를 적절한 함수를 통해 제거, SQL PreparedStatement 사용, 오류 메세지 출력 금지, 불필요한 계정 삭제, 모든 샘플 DB 삭제, DB에 불필요한 확장 프로시저 삭제, 모든 비번의 암호화, 웹 방화벽 설치 운영'),
('AM_2', 'Union SQL Injection', '해당 언어에서 제공하는 디코딩 함수를 입력 데이터 수신 부분에 적용, 입력 데이터에서 union 등과 같은 SQL 구문을 적절한 함수를 통해 제거, SQL PreparedStatement 사용, 오류 메세지 출력 금지, 불필요한 계정 삭제, 모든 샘플 DB 삭제, DB에 불필요한 확장 프로시저 삭제, 모든 비번의 암호화, 웹 방화벽 설치 운영'),
('AM_3', 'Stored Procedure SQL Injection','해당 언어에서 제공하는 디코딩 함수를 입력 데이터 수신 부분에 적용, 입력 데이터에서 운영 체제를 제어할 수 있는 저장 프로시저 구문을 적절한 함수를 통해 제거, SQL PreparedStatement 사용, 오류 메세지 출력 금지, 불필요한 계정 삭제, 모든 샘플 DB 삭제, DB에 불필요한 확장 프로시저 삭제, 모든 비번의 암호화, 웹 방화벽 설치 운영'),
('AM_4', 'Mass SQL Injection', '해당 언어에서 제공하는 디코딩 함수를 입력 데이터 수신 부분에 적용, 입력 데이터에서 script 등과 같은 HTML 태그를 적절한 함수를 통해 제거, SQL PreparedStatement 사용, 오류 메세지 출력 금지, 불필요한 계정 삭제, 모든 샘플 DB 삭제, DB에 불필요한 확장 프로시저 삭제, 모든 비번의 암호화, 웹 방화벽 설치 운영'),
('AM_5', 'Blind SQL Injection', '해당 언어에서 제공하는 디코딩 함수를 입력 데이터 수신 부분에 적용, 입력 데이터에서 script 등과 같은 HTML 태그를 적절한 함수를 통해 제거, SQL PreparedStatement 사용, 오류 메세지 출력 금지, 불필요한 계정 삭제, 모든 샘플 DB 삭제, DB에 불필요한 확장 프로시저 삭제, 모든 비번의 암호화, 웹 방화벽 설치 운영'),
('AM_6', 'Local File Inclusion', 'PHP 언어 등에서 제공하는 rawurldecode()와 urldecode() 등과 같은 디코딩 함수를 입력 데이터 수신 부분에 적용, 입력 데이터에서 .. 또는 / 등과 같은 부호를 str_replace() 함수를 통해 치환'),
('AM_7', 'Remote File Inclusion', 'PHP 언어인 경우 php.ini에서 allow_url_fopen = OFFallow_url_include = OFFdisplay_errors = OFF로 변경, PHP 언어인 경우 php.ini에서 allow_url_fopen = OFFallow_url_include = OFFdisplay_errors = OFF로 변경, 입력 데이터에서 .. 또는 / 등과 같은 부호를 str_replace() 함수를 통해 치환'),
('AM_8', 'URL Encoding', 'URLDecoder.decode() 등과 같이 디코딩 함수를 인터프리터 환경에 적용'),
('AM_9', 'Directory Listing', '웹 서버에서 디렉토리 인덱싱 또는 검색 기능을 해제, 웹 문서 저장 디렉토리에 대한 적절한 접근 권한 설정, 백업 파일 등 제거, 외부에서 추측하기 힘든 디렉토리 명칭 사용'),
('AM_10', 'Path Traversal', '해당 언어에서 제공하는 디코딩 함수를 입력 데이터 수신 부분에 적용, 입력 데이터에서 .. 또는 / 등과 같은 부호를 적절한 함수를 통해 제거하거나 치환 또는 경로와 파일명을 분리해 처리, POST 방식으로 요청 전송, 활성 Session에 대한 시간 제한 설정'),
('AM_11', 'Null Byte Injection', '업로드 파일에 대한 허용 가능한 확장자 목록 설정, 파일명에서 마지막 점을 기준으로 그 앞의 모든 이름을 문자열로 처리, 파일 크기와 속성 검사'),
('AM_12', 'File Download', '주요 페이지 접근 시 Session ID 등과 같은 접근 통제 적용, photo/bbs/bbsdownload/bun.hwp 등과 같이 정적 방식을 통해 다운로드 기능을 제공, 다운로드 위치는 특정 데이터 저장소를 지정, 파일 다운로드 시 게시판 이름과 게시물 번호를 이용해 서버 측 데이터베이스에서 재검색한 뒤 가능하도록 조치, 백업 파일 등 제거, 웹 서버에서 디렉토리 인덱싱 또는 검색 기능을 해제'),
('AM_13', 'File Upload','업로드 파일에 대한 허용 가능한 확장자 목록 설정, 파일명에서 마지막 점을 기준으로 그 앞의 모든 이름을 문자열로 처리, 파일 크기와 속성 검사, 업로드된 파일 이름을 해쉬 함수 등으로 난수화해 저장하고 업로드 경로를 은폐, 웹 서버와 분리된 저장 공간에 저장하거나 DBMS에 바이너리 형태로 저장, 업로드 디렉토리에서 실행 권한 제거'),
('AM_14', 'Cross Site Request Forgery', '민감한 데이터 변경 시 재인증 요구: 비번 변경 시 기존 비번 입력을 요구, HTTP 헤더의 Referer 항목 검사: 요청이 들어온 출처를 확인, 보안 토큰 사용, 인터프리터에 있는 모든 XSS 취약점 제거:   img 또는 iframe 등과 같은 태그 제거, CAPTCHA 사용, HTML form 태그 작성 시 POST 방식 사용'),
('AM_15', 'OS Command Injection', '해당 언어에서 제공하는 디코딩 함수를 입력 데이터 수신 부분에 적용, 입력 데이터에서 ; 또는 & 등과 같은 부호를 적절한 함수를 통해 제거, 서버의 권한을 최소의 권한으로 설정, 시스템 함수의 사용 제한'),
('AM_16', 'XPath Injection', '해당 언어에서 제공하는 디코딩 함수를 입력 데이터 수신 부분에 적용, 입력 데이터에서 or 등과 같은 부호를 적절한 함수를 통해 제거, SQL PreparedStatement 사용, 오류 메세지 출력 금지'),
('AM_17', 'Stored XSS', '해당 언어에서 제공하는 디코딩 함수를 입력 데이터 수신 부분에 적용, 입력 데이터에서 script 또는 iframe 등과 같은 HTML 태그를 적절한 함수를 통해 제거, HTML 태그 입력 허용 가능 목록 설정, DOM 기반의 XSS 사용 금지, HTTP Only 쿠키 플래그 사용, Flash 기본 실행 금지와 최신 상태의 바이러스 백신 유지, 중요한 정보의 쿠키 저장 금지, 서버에서 인증 토큰 관리, IDS/IPS 등 설치 운영'),
('AM_18', 'Reflected XSS', '해당 언어에서 제공하는 디코딩 함수를 입력 데이터 수신 부분에 적용, 입력 데이터에서 script 또는 iframe 등과 같은 HTML 태그를 적절한 함수를 통해 제거, HTML 태그 입력 허용 가능 목록 설정, DOM 기반의 XSS 사용 금지, HTTP Only 쿠키 플래그 사용, Flash 기본 실행 금지와 최신 상태의 바이러스 백신 유지, 중요한 정보의 쿠키 저장 금지, 서버에서 인증 토큰 관리, IDS/IPS 등 설치 운영'),
('AM_19', 'Dom Based XSS', '의심스러운 주소 링크 클릭 금지, 보안 강화 웹 브라우저 사용'),
('AM_20', 'HTTP Session Hijacking', '임의의 난수에 기반한 Session ID 생성: 추측 불가능하게 충분히 큰 값을 사용, Session ID 만료 기간 설정: 일정 시간 동안 활동이 없는 사용자는 자동 로그아웃, Session ID 재생성 기능: 장시간 동안 접속할 경우 일정 주기마다 Session ID 자동 갱신, 세션 ID 암호화: SSL VPN 등을 적용해 스니핑 공격에 대비, 잠금 정책 설정: 브루트 포싱에 대비, URL 매개 변수 검사: XSS 공격에 대비'),
('AM_21', 'Brute Force', '비번 작성 규칙 준수: 8자리 이상의 숫자와 문자 혼용 구성주기적인 비번 변경 등, 계정 잠금 정책 설정: 일정한 횟수까지만 로그인 허용, 주요 부분에 갭차 적용, 다중 인증 체계 구성'),
('AM_22', 'ShellShock','패치 버전 업데이트, CGI 사용 제한, HTTP 요청 헤더의 각 항목에서 () { :; }; 존재 여부 검사, '),
('AM_23', 'Heartbleed','1.0.1g 버전 이상으로 버전 업데이트, 비번 변경: 비번 유출 가능성 대비, 공인 인증서 교체: 비밀키 유출 가능성 대비'),
('AM_24', 'SSL Flooding', '임계치 설정을 통해 접속 차단: 임계치 초과 시 일정 시간 동안 접속 차단, L4 스위치를 이용한 부하 분산 처리'),
('AM_25', 'HTTP GET Flooding','임계치 설정을 통해 접속 차단: 임계치 초과 시 일정 시간 동안 접속 차단, L4 스위치를 이용한 부하 분산 처리'),
('AM_26', 'Slow HTTP Header(Slowloris)', '웹 서버의 환경 설정에서 Timeout 항목 기능을 조절, 보안 장비 등을 통해 시간 기반의 임계치를 설정'),
('AM_27', 'SLOW HTTP POST(Rudy)', '웹 서버의 환경 설정에서 Timeout 항목 기능을 조절, 보안 장비 등을 통해 시간 기반의 임계치를 설정'),
('AM_28', 'Slow HTTP Read', '아파치 웹 서버의 환경 설정에서 KeepAlive 기능을 off로 변경하고 KeepAliveTimeout을 5초 이하로 설정, 보안 장비 등을 통해 TCP 헤더의 Window Size 항목이 0인 패킷을 차단'),
('AM_29', 'HTTP Response Splitting(CRLF Injection)', 'HTTP 요청 헤더 항목 내용 중에서 개행 문자 CRLF(%0d%0a)가 있으면 제거'),
('AM_30', 'Stack Buffer Overflow', '보안 함수 사용: 경계 값 검사를 내장한 scanf_s() 함수 등, 주소 공간 임의 추출(ASLR) 공격 기법: 메모리 영역의 번지 주소를 임의로 출력, DEP/NX 공격 기법: 메모리 영역에서 실행 권한 제거, 스택 가드(Stack Guard) 공격 기법: 임의의 난수를 이용해 버퍼 오버플로우 탐지'),
('AM_31', 'Heap Buffer Overflow','보안 함수 사용: 경계 값 검사를 내장한 scanf_s() 함수 등, 주소 공간 임의 추출(ASLR) 공격 기법: 메모리 영역의 번지 주소를 임의로 출력, DEP/NX 공격 기법: 메모리 영역에서 실행 권한 제거'),
('AM_32', 'Format String', 'printf() 함수 사용 시 형식 문자열 설정 여부 확인, Wall 등과 같은 컴파일러 플래그 사용'),
('AM_33', 'Race Condition', 'RedCastle(SecureOS) 설치: root 계정에서 실행된 프로세스가 일반 소유자의 파일로 연결되는 심볼릭링크 실행 차단, 임시 파일 이름을 임의의 난수로 생성, 임시 파일에 접근하기 전 해당 파일에 대한 심볼릭 링크 설정 여부 검사'),
('AM_34', 'Remote Code Execution', '최신 버전으로 패치 또는 업데이트'),
('AM_35', 'Privileges Escalation','최신 버전으로 패치 또는 업데이트'),
('AM_36', 'Server Side Request Forgery(SSRF)', 'DMZ와 내부망 시스템에 대해 최신 버전으로 패치 또는 업데이트');
/*!40000 ALTER TABLE `ATTACK_MITIGATION_INFO` ENABLE KEYS */;




-- 테이블 db_soteria_seoul.attack_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `ATTACK_INFO` (
  `ATTACK_ID` varchar(12) UNIQUE NOT NULL,
  `ATTACK_NAME` varchar(50) NOT NULL,
  `ATTACK_DESCRIPTION` text NOT NULL DEFAULT '',
  `INPUT_DATE` datetime DEFAULT NULL,
  -- `CREATE_DATE` varchar(50) DEFAULT NULL,
  `AC_ID` varchar(12) DEFAULT NULL,
  `AS_ID` varchar(12) DEFAULT NULL,
  `AM_ID` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`ATTACK_ID`),
  CONSTRAINT attack_info_attack_classification_info_ac_id_fk FOREIGN KEY (`AC_ID`) REFERENCES ATTACK_CLASSIFICATION_INFO (`AC_ID`) ON DELETE CASCADE,
  CONSTRAINT attack_info_attack_severity_info_as_id_fk FOREIGN KEY (`AS_ID`) REFERENCES ATTACK_SEVERITY_INFO (`AS_ID`) ON DELETE CASCADE,
  CONSTRAINT attack_info_attack_mitigation_info_am_id_fk FOREIGN KEY (`AM_ID`) REFERENCES ATTACK_MITIGATION_INFO (`AM_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='본 테이블 지울때 같이 지워지게 CONSTRAINT 설정';


-- 테이블 데이터 db_soteria_seoul.ATTACK_INFO:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `ATTACK_INFO` DISABLE KEYS */;
INSERT INTO `ATTACK_INFO` (`ATTACK_ID`, `ATTACK_NAME`, `AC_ID`, `AS_ID`, `AM_ID`, `ATTACK_DESCRIPTION`) VALUES
    ('ATTACK_0', 'Unknown Attack', 'AC_1', 'AS_3',null,'등록안된 공격 발생, AC_1 AS_1 디폴트 값'),
	('ATTACK_1', 'Error Based SQL Injection', 'AC_3', 'AS_1', 'AM_1', '데이`AC_ID터, `베이스와 연동된 인터프리터에서 비정상적인 입력 데이터를 주입한 뒤 출력된 오류 내용에 기반해 데이터베이스 전체 내용을 유출시키는 공격 기법'),
	('ATTACK_2', 'Union SQL Injection', 'AC_3', 'AS_1', 'AM_2', '데이터베이스와 연동된 인터프리터에서 union 구문을 주입해 여러 테이블의 내용을 하나의 결과로 유출시키는 공격 기법'),
	('ATTACK_3', 'Stored Procedure SQL Injection', 'AC_3', 'AS_1', 'AM_3','데이터베이스와 연동된 인터프리터에서 저장 프로시저 구문을 주입해 테이블에 접근하거나 서버를 제어하는 공격 기법'),
	('ATTACK_4', 'Mass SQL Injection', 'AC_3', 'AS_1', 'AM_4', '데이터베이스와 연동된 인터프리터에서 SQL 구문에 악의적인 자바스크립트 코드를 설정해 데이터베이스의 모든 레코드에 해당 코드를 주입시키는 공격 기법'),
	('ATTACK_5', 'Blind SQL Injection', 'AC_3', 'AS_1', 'AM_5', '데이터베이스와 연동된 인터프리터에서 오류 메세지가 출력되지 않는 경우 SQL 질의문의 참거짓 동작으로 데이터베이스 구조를 파악하는 공격 기법'),
	('ATTACK_6', 'Local File Inclusion', 'AC_1', 'AS_1', 'AM_6', 'Path Traversal 취약점과 유사, 웹 서버 내 로컬 파일을 include() 계열의 함수를 사용해 해당 서버로 접근하는 공격 기법'),
	('ATTACK_7', 'Remote File Inclusion', 'AC_1', 'AS_1', 'AM_7', 'PHP 환경 등에서 include() 계열 함수가 포함된 파일을 작성해 원격에서 웹 서버로 주입시키는 공격 기법'),
	('ATTACK_8', 'URL Encoding', 'AC_1','AS_3', 'AM_8', '코드 난독화(Code Obfuscation)의 일환, 공격자가 보안 장비의 차단 정책을 우회하기 위해 입력 데이터를 URL 인코딩 방식으로 변환해 전송하는 공격 기법'),
	('ATTACK_9', 'Directory Listing', 'AC_1', 'AS_3', 'AM_9', '디렉토리 색인 기능을 통해 웹 서버의 주요 정보가 노출되는 공격 기법, File Upload/File Download/Path Traversal 공격과 상호 연결'),
	('ATTACK_10', 'Path Traversal', 'AC_1', 'AS_2', 'AM_10', 'URL 매개 변수를 파일명 등으로 설정해 웹 서버의 파일에 접근하거나 다운로드하는 공격 기법, File Upload/File Download 공격과 상호 연결'),
	('ATTACK_11', 'Null Byte Injection', 'AC_1', 'AS_2', 'AM_11', 'Path Traversal 취약점과 유사, 널 바이트(%00)를 이용해 확장자 검사를 우회하는 공격 기법'),
	('ATTACK_12', 'File Download', 'AC_1','AS_1', 'AM_12', 'URL 매개 변수를 이용해 비정상적으로 웹 서버의 파일을 다운로드 받거나 권한 상승(Privileges Escalation)하는 공격 기법'),
	('ATTACK_13', 'File Upload', 'AC_1','AS_1', 'AM_13', '게시판 추가 기능을 이용해 웹 서버로 악성 코드(webshell)를 주입시키는 공격 기법, File Download/Path Traversal 공격과 상호 연결'),
	('ATTACK_14', 'Cross Site Request Forgery', 'AC_1', 'AS_1', 'AM_14', '인증된 사용자와 웹 서버 사이에 형성된 신뢰 관계 사이에서 공격자가 웹 서버를 통해 가입자의 정보를 조작하는 공격 기법'),
	('ATTACK_15', 'OS Command Injection', 'AC_1', 'AS_1', 'AM_15', 'OS 명령어를 URL 매개 변수에 주입해 서버 운영 체제에 접근하는 공격 기법'),
	('ATTACK_16', 'XPath Injection', 'AC_1','AS_1', 'AM_16', '데이터베이스와 연동된 인터프리터에서 조작한 XPath 또는 XQuery 질의문을 주입해 XML 문서로부터 미인증 데이터를 열람할 수 있는 공격 기법'),
	('ATTACK_17', 'Stored XSS', 'AC_1','AS_1', 'AM_17', '웹 서버의 게시판에 악의적인 자바스크립트 코드를 저장한 게시물을 작성한 뒤 사용자의 ClickJacking을 유도해 사용자의 웹 브라우저로부터 정보를 탈취하는 공격 기법'),
	('ATTACK_18', 'Reflected XSS', 'AC_1','AS_1', 'AM_18', '악의적인 자바스크립트 코드를 삽입한 URL 주소를 전송한 뒤 사용자의 ClickJacking을 유도하면 웹 서버의 응답을 통해 사용자의 정보를 탈취하는 공격 기법'),
	('ATTACK_19', 'Dom Based XSS', 'AC_1','AS_1', 'AM_19', '악의적인 자바스크립트 코드를 삽입한 URL 주소를 작성한 뒤 사용자의 ClickJacking을 유도해 사용자의 정보를 탈취하는 일종의 스미싱 공격 기법, Reflected XSS 취약점에서는 경유할 서버가 필요하지만 DOM Based XSS 취약점에서는 경유할 서버가 불필요'),
	('ATTACK_20', 'HTTP Session Hijacking', 'AC_1','AS_1', 'AM_20', '스니핑 또는 무작위 대입 추측 등을 통해 타인의 HTTP Session ID를 탈취하는 공격 기법'),
	('ATTACK_21', 'Brute Force', 'AC_1', 'AS_1', 'AM_21','특정한 계정의 비번을 해독하기 위해 모든 경우의 수를 무작위로 대입하는 공격 기법, 반면, 사전(Dictionary) 대입은 사용 가능한 비번 목록에 기반해 순차적으로 대입하는 공격 기법을 의미'),
	('ATTACK_22', 'ShellShock', 'AC_1','AS_1', 'AM_22', 'GNU bash 환경에서 원격으로 OS 명령어를 실행시킬 수 있는 취약점'),
	('ATTACK_23', 'Heartbleed', 'AC_1', 'AS_1', 'AM_23','요청 문자열의 실제 길이와 문자열 길이 정보의 일치 여부 검사를 생략하는 문제 때문에 서버에 저장된 암호문 등이 외부에 유출되는 취약점'),
	('ATTACK_24', 'SSL Flooding', 'AC_1', 'AS_1', 'AM_24', 'SSL/TLS 통신을 시작하기 전에 수행하는 SSL/TLS Handshake 기능을 이용해 반복적으로 Client Hello 신호를 전송해 SSL 서버에 과부하를 가하는 공격 기법'),
	('ATTACK_25', 'HTTP GET Flooding', 'AC_1', 'AS_1', 'AM_25', '웹 서버는 GET 지시자를 받으면 기본 페이지로 응답을 보내는 속성을 악용해 반복적으로 GET 지시자를 전송해 웹 서버에 과부하를 가하는 공격 기법'),
	('ATTACK_26', 'Slow HTTP Header(Slowloris)', 'AC_1', 'AS_1', 'AM_26','HTTP 헤더와 HTTP 바디 사이의 구분자를 조작한 뒤 반복적으로 전송해 웹 서버에 과부하를 가하는 공격 기법'),
	('ATTACK_27', 'SLOW HTTP POST(Rudy)', 'AC_1','AS_1', 'AM_27', 'HTTP 바디 길이 정보를 조작한 뒤 반복적으로 전송해 웹 서버에 과부하를 가하는 공격 기법'),
	('ATTACK_28', 'Slow HTTP Read', 'AC_1','AS_1', 'AM_28', 'TCP 헤더의 Window Size 항목을 0으로 설정한 뒤 반복적으로 전송해 웹 서버에 과부하를 가하는 공격 기법'),
	('ATTACK_29', 'HTTP Response Splitting(CRLF Injection)', 'AC_1', 'AS_1', 'AM_29', '개행 문자(CLRF)의 속성을 이용해 HTTP 응답 헤더 안에 또 다른 HTTP 헤더를 생성하는 공격 기법'),
	('ATTACK_30', 'Stack Buffer Overflow', 'AC_2','AS_1', 'AM_30', '입력 데이터를 스택 버퍼 용량 이상으로 초과 입력해 인접한 복귀 주소 영역에서 공격자가 의도했던 악의적인 함수의 시작 번지를 덮어 쓴 뒤 해당 함수를 실행하거나 권한 상승하는 취약점'),
	('ATTACK_31', 'Heap Buffer Overflow', 'AC_2', 'AS_1', 'AM_31','입력 데이터를 힙 버퍼 용량 이상으로 초과 입력해 함수 포인터 등을 덮어 쓴 뒤 공격자가 설정한 악의적인 함수를 실행하거나 권한 상승하는 취약점'),
	('ATTACK_32', 'Format String', 'AC_2', 'AS_1', 'AM_32','C/C++ 언어 환경에서 %s 등과 같은 형식 문자열 설정 누락 때문에 메모리 번지 주소가 노출되는 취약점'),
	('ATTACK_33', 'Race Condition', 'AC_2', 'AS_1', 'AM_33', '프로세스들이 여러 번 실행하는 과정에서 실행 순서가 뒤바뀌면서 일반 사용자가 권리자 권한을 획득하는 일종의 Privileges Escalation 취약점'),
	('ATTACK_34', 'Remote Code Execution', 'AC_1', 'AS_1', 'AM_34','소프트웨어 버그 또는 구조적 한계 등에 기반해 악의적인 코드를 원격에서 주입시키는 취약점'),
	('ATTACK_35', 'Privileges Escalation', 'AC_1', 'AS_1', 'AM_35','소프트웨어 버그 또는 구조적 한계 등에 기반해 일반 사용자가 권리자 권한을 획득할 수 있는 취약점'),
	('ATTACK_36', 'Server Side Request Forgery(SSRF)', 'AC_1', 'AS_1', 'AM_36','DMZ에 있는 서버의 취약점을 경유해 내부망에 있는 서버나 클라이언트로 침투하는 일련의 기법');
/*!40000 ALTER TABLE `ATTACK_INFO` ENABLE KEYS */;




-- 전체 계정에 일괄적으로 같은 세팅 규칙이 적용됨
-- 테이블 db_soteria_seoul.attack_alert_setting 구조 내보내기
CREATE TABLE IF NOT EXISTS `ATTACK_ALERT_SETTING` (
  `ID` int AUTO_INCREMENT,
  `PUSH` char(10) DEFAULT NULL COMMENT 'Y|N',
  `EMAIL` char(10) DEFAULT NULL COMMENT 'Y|N',
  `SMS` char(10) DEFAULT NULL COMMENT 'Y|N',
  `AS_ID` varchar(12) NOT NULL COMMENT '통지받을 위헙도 수준',
  `INPUT_DATE` datetime DEFAULT NULL,
  PRIMARY KEY(`ID`),
  KEY `attack_alert_setting_attack_severity_info_as_id_fk` (`AS_ID`),
  CONSTRAINT attack_alert_setting_attack_severity_info_as_id_fk FOREIGN KEY (`AS_ID`) REFERENCES ATTACK_SEVERITY_INFO (`AS_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db_soteria_seoul.attack_alert_setting:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `ATTACK_ALERT_SETTING` DISABLE KEYS */;
INSERT INTO `ATTACK_ALERT_SETTING` (`PUSH`, `EMAIL`, `SMS`, `AS_ID`) VALUES
	('Y', 'Y', 'Y', 'AS_1');
/*!40000 ALTER TABLE `ATTACK_ALERT_SETTING` ENABLE KEYS */;




-- 테이블 db_soteria_seoul.attack_detection_log 구조 내보내기
CREATE TABLE IF NOT EXISTS `ATTACK_DETECTION_LOG` (
  `LOG_ID` varchar(12) UNIQUE NOT NULL,
  `ATTACK_ID` varchar(12) DEFAULT NULL,
-- `AC_ID` varchar(50) DEFAULT NULL COMMENT '공격분류 ID',
-- `AS_ID` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT '공격유형 ID',
  `PROTOCOL` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `SRC_IP` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `DST_IP` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `DST_PORT` int(11) DEFAULT NULL,
  -- Gang request this.
  `PAYLOAD` text DEFAULT NULL COMMENT '',
  -- `ATTACK_TIME` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `ATTACK_TIME` datetime DEFAULT NULL,
  `INPUTED_TIME` timestamp NOT NULL DEFAULT current_timestamp(),
--  `AM_ID` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT '대응방안 ID',
--  `IS_CONFIRM` int(11) DEFAULT NULL COMMENT '미확인(0)|대응완료(1)|보류(2)',
  -- KCOD adds
  `RESPONDER` int(11) DEFAULT NULL COMMENT '침해대응자/작성자, USERS 테이블 USER_ID',
  `MEASURE_TIME` datetime DEFAULT NULL,
  `MEASURE_STATUS` int(7) NOT NULL DEFAULT '0' COMMENT '대기중(0)|처리완료(1)|처리중(2)',
  `MEASURE_CONTENTS` text DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`),
  INDEX(`ATTACK_ID`),
  FOREIGN KEY (`ATTACK_ID`) REFERENCES ATTACK_INFO (`ATTACK_ID`),
  FOREIGN KEY (`RESPONDER`) REFERENCES USERS (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db_soteria_seoul.attack_detection_log:~84 rows (대략적) 내보내기
/*!40000 ALTER TABLE `ATTACK_DETECTION_LOG` DISABLE KEYS */;
INSERT INTO `ATTACK_DETECTION_LOG` (`LOG_ID`, `ATTACK_ID`, `PROTOCOL`, `SRC_IP`, `DST_IP`, `DST_PORT`, `ATTACK_TIME`, `MEASURE_STATUS`) VALUES
	('LOG_18', 'ATTACK_1', 'HTTP', '123.11.4.5', '172.111.11.123', 80, '2021-02-12 08:17:31.12', 0),
	('LOG_19', 'ATTACK_2', 'HTTP', '123.11.4.5', '172.111.11.123', 80, '2021-02-12 08:17:31.12', 0),
	('LOG_20', 'ATTACK_3', 'HTTP', '123.11.4.5', '172.111.11.123', 80, '2021-02-12 09:17:31.12', 0),
	('LOG_21', 'ATTACK_1', 'HTTP', '102.176.127.255', '172.111.11.123', 80, '2021-02-12 10:17:31.12', 0),
	('LOG_22', 'ATTACK_2', 'HTTP', '102.176.127.255', '172.111.11.123', 81, '2021-02-12 10:17:31.12', 0),
	('LOG_23', 'ATTACK_3', 'HTTP', '102.176.127.255', '172.111.11.123', 81, '2021-02-12 10:17:31.12', 0),
	('LOG_24', 'ATTACK_4', 'HTTP', '43.240.91.255', '172.111.11.123', 81, '2021-02-12 11:17:31.12', 0),
	('LOG_25', 'ATTACK_5', 'HTTP', '43.240.91.255', '172.111.11.123', 81, '2021-02-12 11:17:31.12', 0),
	('LOG_26', 'ATTACK_6', 'HTTP', '43.240.91.255', '172.111.11.123', 81, '2021-02-12 11:17:31.12', 0),
	('LOG_27', 'ATTACK_7', 'HTTP', '5.172.192.0', '172.111.11.123', 81, '2021-02-12 12:17:31.12', 0),
	('LOG_28', 'ATTACK_8', 'HTTP', '5.172.192.0', '172.111.11.123', 81, '2021-02-12 12:17:31.12', 0),
	('LOG_29', 'ATTACK_9', 'HTTP', '5.172.192.0', '172.111.11.123', 81, '2021-02-12 12:17:31.12', 0),
	('LOG_30', 'ATTACK_10', 'HTTP', '45.179.191.255', '172.111.11.123', 82, '2021-02-12 12:17:31.12', 0),
	('LOG_31', 'ATTACK_11', 'HTTP', '45.179.191.255', '172.111.11.123', 82, '2021-02-12 12:17:31.12', 0),
	('LOG_32', 'ATTACK_12', 'HTTP', '45.179.191.255', '172.111.11.123', 82, '2021-02-12 13:17:31.12', 0),
	('LOG_33', 'ATTACK_12', 'HTTP', '14.191.255.255', '172.111.11.123', 82, '2021-02-12 13:17:31.12', 0),
	('LOG_34', 'ATTACK_12', 'HTTP', '14.191.255.255', '172.111.11.123', 82, '2021-02-12 13:17:31.12', 0),
	('LOG_35', 'ATTACK_12', 'HTTP', '14.191.255.255', '172.111.11.123', 82, '2021-02-12 13:17:31.12', 0),
	('LOG_36', 'ATTACK_12', 'HTTP', '14.191.255.255', '172.111.11.123', 82, '2021-02-12 13:17:31.12', 0),
	('LOG_37', 'ATTACK_13', 'HTTP', '5.30.0.0', '172.111.11.123', 82, '2021-02-12 13:17:31.12', 0),
	('LOG_38', 'ATTACK_13', 'HTTP', '5.30.0.0', '172.111.11.123', 82, '2021-02-12 13:17:31.12', 0),
	('LOG_39', 'ATTACK_14', 'HTTP', '5.30.0.0', '172.111.11.123', 82, '2021-02-12 13:17:31.12', 0),
	('LOG_40', 'ATTACK_15', 'HTTP', '103.21.244.0', '172.111.11.123', 82, '2021-02-12 13:17:31.12', 0),
	('LOG_41', 'ATTACK_16', 'HTTP', '103.21.244.0', '172.111.11.123', 82, '2021-02-12 13:17:31.12', 0),
	('LOG_42', 'ATTACK_17', 'HTTP', '103.21.244.0', '172.111.11.123', 82, '2021-02-12 06:17:31.12', 0),
	('LOG_43', 'ATTACK_17', 'HTTP', '123.11.4.5', '172.111.11.123', 82, '2021-02-12 06:17:31.12', 0),
	('LOG_44', 'ATTACK_18', 'HTTP', '123.11.4.5', '172.111.11.123', 83, '2021-02-12 06:17:31.12', 0),
	('LOG_45', 'ATTACK_19', 'HTTP', '123.11.4.5', '172.111.11.123', 83, '2021-02-12 07:17:31.12', 0),
	('LOG_46', 'ATTACK_20', 'HTTP', '123.11.4.5', '172.111.11.123', 83, '2021-02-12 07:17:31.12', 0),
	('LOG_47', 'ATTACK_1', 'TCP', '123.11.4.5', '172.111.11.123', 83, '2021-02-12 07:17:31.12',  0),
	('LOG_48', 'ATTACK_2', 'TCP', '123.11.4.5', '172.111.11.123', 83, '2021-02-12 07:17:31.12',  0),
	('LOG_49', 'ATTACK_3', 'TCP', '123.11.4.5', '172.111.11.123', 83, '2021-02-12 08:17:31.12',  0),
	('LOG_50', 'ATTACK_5', 'TCP', '123.11.4.5', '172.111.11.123', 83, '2021-02-12 09:17:31.12',  0),
	('LOG_51', 'ATTACK_6', 'TCP', '123.11.4.5', '172.111.11.123', 83, '2021-02-12 09:17:31.12',  0);
/*!40000 ALTER TABLE `ATTACK_DETECTION_LOG` ENABLE KEYS */;




-- 통합 문서번호 관리 테이블
-- 테이블 db_soteria_seoul.attack_ids 구조 내보내기
CREATE TABLE IF NOT EXISTS `ATTACK_IDS` (
  `NAME` varchar(12) DEFAULT NULL,
  `NEXT_ID` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 초기 생성값에 맞춰서 카운트 맞춤
-- 테이블 데이터 db_soteria_seoul.attack_ids:~6 rows (대략적
/*!40000 ALTER TABLE `ATTACK_IDS` DISABLE KEYS */;
INSERT INTO `ATTACK_IDS` (`NAME`, `NEXT_ID`) VALUES
	('AM_', '37'),               -- ATTACK_MITIGATION_INFO
	('AC_', '4'),               -- ATTACK_CLASSIFICATION_INFO
	('LOG_', '52'),            -- ATTACK_DETECTION_INFO
	('ATTACK_', '37'),          -- ATTACK_INFO
	('AS_', '4'),               -- ATTACK_SEVERITY_INFO
	('MEASURE_', '0');          -- ATTACK_MEASURE
/*!40000 ALTER TABLE `ATTACK_IDS` ENABLE KEYS */;

-- Made by kcod
-- 테이블 db_soteria_seoul.attack_known_port 구조 내보내기
CREATE TABLE IF NOT EXISTS `ATTACK_KNOWN_PORT` (
  `PORT_NUM` int(11) DEFAULT NULL,
  `PROTCOL_NAME` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ATTACK_DETECTION_LOG 와 합처 놓음
-- 이 테이블의 의미는 대응 사후 조치 기록 테이블
-- 테이블 db_soteria_seoul.attack_measure 구조 내보내기
# CREATE TABLE IF NOT EXISTS `ATTACK_MEASURE` (
#   `MEASURE_ID` varchar(12) NOT NULL,
#   `LOG_ID` varchar(50) DEFAULT NULL,
#   `MEASURE_TITLE` varchar(255) DEFAULT NULL,
#   `MEASURE_CONTENTS` text DEFAULT NULL,
#   `RESPONDER` varchar(50) DEFAULT NULL COMMENT '침해대응자/작성자, USERS 테이블 USER_ID',
#   `MEASURE_STATUS` int(11) DEFAULT NULL COMMENT '미확인(0)|대응완료(1)|보류(2)',
#   `MEASURE_DATE` varchar(50) DEFAULT NULL,
#   PRIMARY KEY (`MEASURE_ID`),
#   KEY `FK_attack_measure_attack_detection_log` (`LOG_ID`),
#   CONSTRAINT `FK_attack_measure_attack_detection_log` FOREIGN KEY (`LOG_ID`) REFERENCES `attack_detection_log` (`LOG_ID`) ON DELETE CASCADE ON UPDATE CASCADE
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db_soteria_seoul.attack_measure:~0 rows (대략적) 내보내기
# /*!40000 ALTER TABLE `ATTACK_MEASURE` DISABLE KEYS */;
# /*!40000 ALTER TABLE `ATTACK_MEASURE` ENABLE KEYS */;






-- 테이블 db_soteria_seoul.users 구조 내보내기
CREATE TABLE IF NOT EXISTS `USERS` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` datetime DEFAULT NULL,
#   `LOGON_NAME` varchar(24) NOT NULL COMMENT '실질적인 아이디, 중복불가',
  `LOGON_NAME` varchar(24) NOT NULL COMMENT '실질적인 아이디, 중복가능',
  `LOGON_PWD` varchar(256) NOT NULL,
  `USER_TYPE` mediumint(11) DEFAULT NULL COMMENT '1 ADMIN, 100 USER',
  `USER_NAME` varchar(64) DEFAULT NULL COMMENT '중복허용 사용자명',
  `EMAIL` varchar(64) NOT NULL COMMENT '기본 아이디로 변경',
  `CONTACT` varchar(16) DEFAULT NULL COMMENT '연락처',
  `LAST_ACC_IP` varchar(32) DEFAULT NULL,
  `LAST_ACC_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TOKEN` varchar(256) DEFAULT NULL,
  `RETRY_CNT` tinyint(4) DEFAULT NULL,
  `LAST_PASS_MOD_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MOD_USER` int(11) DEFAULT NULL COMMENT 'The last user who modified record',
  `MOD_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `USE_YN` char(1) DEFAULT NULL COMMENT '활성화 비활성화 체크',
  `INIT_PASS_YN` char(1) DEFAULT NULL,
  `TMP_PASS` varchar(64) DEFAULT NULL,
  `OTP_TYPE` varchar(16) DEFAULT NULL,
  `OTP_SECRET` char(16) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `USERS_EMAIL_uindex` (`EMAIL`)
#   UNIQUE KEY `USERS_LOGON_NAME_uindex` (`LOGON_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- 테이블 데이터 db_soteria_seoul.users:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` (`USER_ID`, `CREATE_DATE`, `LOGON_NAME`, `LOGON_PWD`, `USER_TYPE`, `USER_NAME`, `EMAIL`, `CONTACT`, `LAST_ACC_IP`, `LAST_ACC_DATE`, `TOKEN`, `RETRY_CNT`, `LAST_PASS_MOD_DATE`, `MOD_USER`, `MOD_DATE`, `USE_YN`, `INIT_PASS_YN`, `TMP_PASS`, `OTP_TYPE`, `OTP_SECRET`) VALUES
	(1,'2021-02-02 11:07:44', 'admin', '*52EECD374DC53F10DB5774B75E8EF36A59AA0411', 1, '시큐리티어드민 사용자', 'admin@soteria-sys.com', '01011112222', NULL, '2020-09-02 11:07:44', NULL, 0, '2020-09-01 10:15:02', 0, '2020-08-03 13:59:38', 'Y', 'Y', '', NULL, NULL),
	(2,'2021-02-02 11:08:00', 'user', '*52EECD374DC53F10DB5774B75E8EF36A59AA0411', 100, '사용자', 'user@soteria-sys.com', '01000000002', NULL, '2020-09-07 15:05:28', NULL, 0, '2020-09-01 10:15:02', 0, '2020-09-07 15:05:28', 'Y', 'Y', '', 'web', 'EKXNCFYN3N3572KA'),
	(3,'2021-02-02 11:09:00', 'operator', '*52EECD374DC53F10DB5774B75E8EF36A59AA0411', 200, '오퍼레이터', 'operator@soteria-sys.com', '0103333333', '', '2020-08-17 16:46:28', '', 0, '2020-08-03 10:15:02', 0, '2019-11-04 05:21:25', 'Y', 'Y', '', NULL, '');
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;

	/* admin - user types      is    hard coding   on  ISbbAdminEnv.java
	public static final int USERTYPE_SECURITY_ADMIN = 1;
	public static final int USERTYPE_ADMIN 			= 100;
	public static final int USERTYPE_OPERATOR 		= 200;
    */










-- 테이블 db_soteria_seoul.spring_session 구조 내보내기
CREATE TABLE IF NOT EXISTS `SPRING_SESSION` (
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SESSION_ID`),
  KEY `SPRING_SESSION_IX1` (`LAST_ACCESS_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db_soteria_seoul.spring_session:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `SPRING_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `SPRING_SESSION` ENABLE KEYS */;

-- 테이블 db_soteria_seoul.spring_session_attributes 구조 내보내기
CREATE TABLE IF NOT EXISTS `SPRING_SESSION_ATTRIBUTES` (
  `SESSION_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob DEFAULT NULL,
  PRIMARY KEY (`SESSION_ID`,`ATTRIBUTE_NAME`),
  KEY `SPRING_SESSION_ATTRIBUTES_IX1` (`SESSION_ID`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_ID`) REFERENCES `SPRING_SESSION` (`SESSION_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db_soteria_seoul.spring_session_attributes:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `SPRING_SESSION_ATTRIBUTES` DISABLE KEYS */;
/*!40000 ALTER TABLE `SPRING_SESSION_ATTRIBUTES` ENABLE KEYS */;
-- 테이블 db_soteria_seoul.user_pwd_his 구조 내보내기
CREATE TABLE IF NOT EXISTS `USER_PWD_HIS` (
  `HIS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `LOGON_PWD` varchar(256) DEFAULT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`HIS_ID`),
  KEY `USER_PWD_HIS_USER_ID_index` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 테이블 db_soteria_seoul.user_session 구조 내보내기
CREATE TABLE IF NOT EXISTS `USER_SESSION` (
  `USER_ID` int(11) NOT NULL,
  `SESSION_ID` char(36) NOT NULL DEFAULT '',
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db_soteria_seoul.user_session:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `USER_SESSION` DISABLE KEYS */;
INSERT INTO `USER_SESSION` (`USER_ID`, `SESSION_ID`, `MOD_DATE`) VALUES
	(1, '8ee47148-925c-4234-a967-dede0fdb492c', '2020-09-01 00:33:49'),
	(2, '1d5a7717-3786-4ca6-8e6e-64277614dca9', '2020-09-07 17:03:44'),
	(3, '9baff1c8-352f-43d0-91d9-2bc2f2382442', '2020-08-17 16:46:31');
/*!40000 ALTER TABLE `USER_SESSION` ENABLE KEYS */;



-- 테이블 db_soteria_seoul.sbb_host_rel 구조 내보내기
CREATE TABLE IF NOT EXISTS `SBB_HOST_REL` (
  `REL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SBB_ID` int(11) NOT NULL,
  `HOST_ID` int(11) NOT NULL,
  `MOD_USER` int(11) NOT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`REL_ID`),
  UNIQUE KEY `SBB_HOST_REL_SBB_ID_HOST_ID_uindex` (`SBB_ID`,`HOST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- 테이블 데이터 db_soteria_seoul.sbb_host_rel:~30 rows (대략적) 내보내기
/*!40000 ALTER TABLE `SBB_HOST_REL` DISABLE KEYS */;
INSERT INTO `SBB_HOST_REL` (`REL_ID`, `SBB_ID`, `HOST_ID`, `MOD_USER`, `MOD_DATE`) VALUES
(1, 1, 1, 1, '2019-10-29 02:11:21'),
(2, 3, 2, 1, '2019-11-06 09:05:26'),
(3, 4, 3, 1, '2019-11-06 09:13:35'),
(4, 5, 4, 1, '2019-11-14 05:54:49'),
(5, 6, 5, 1, '2019-11-18 05:41:19'),
(6, 7, 6, 17, '2019-11-18 07:54:52'),
(7, 8, 7, 17, '2019-11-18 07:55:07'),
(8, 9, 8, 17, '2019-11-18 07:55:21'),
(9, 10, 9, 17, '2019-11-18 07:56:22'),
(10, 11, 10, 1, '2019-11-20 05:28:09'),
(11, 12, 11, 1, '2019-11-20 05:28:39'),
(12, 13, 12, 1, '2019-11-20 05:29:34'),
(13, 14, 13, 1, '2019-11-20 05:29:39'),
(14, 15, 14, 35, '2019-11-27 05:38:29'),
(15, 151, 151, 1, '2019-12-05 17:03:50'),
(16, 152, 152, 1, '2019-12-05 17:03:50'),
(17, 153, 153, 1, '2019-12-05 17:04:04'),
(18, 154, 154, 1, '2019-12-05 17:03:50'),
(19, 156, 156, 45, '2020-03-18 16:11:00'),
(20, 157, 157, 45, '2020-03-19 10:38:15'),
(21, 158, 158, 1, '2020-03-20 15:13:00'),
(22, 159, 159, 45, '2020-03-23 15:01:02'),
(23, 160, 160, 1, '2020-04-08 14:46:58'),
(24, 169, 169, 1, '2020-04-09 16:32:19'),
(25, 170, 170, 1, '2020-04-09 16:33:56'),
(26, 171, 171, 1, '2020-04-09 16:34:05'),
(27, 172, 172, 1, '2020-04-09 16:34:11'),
(28, 173, 173, 1, '2020-04-09 17:01:24'),
(29, 174, 174, 1, '2020-04-09 17:01:42'),
(30, 175, 175, 1, '2020-05-26 16:02:49');
/*!40000 ALTER TABLE `SBB_HOST_REL` ENABLE KEYS */;


-- 테이블 db_soteria_seoul.system_config 구조 내보내기
CREATE TABLE IF NOT EXISTS `SYSTEM_CONFIG` (
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

-- 테이블 데이터 db_soteria_seoul.system_config:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `SYSTEM_CONFIG` DISABLE KEYS */;
INSERT INTO `SYSTEM_CONFIG` (`CONF_ID`, `CONF_NAME`, `CONF_VALUE`, `OTHER_NAME`, `UNIT`, `MOD_USER`, `MOD_DATE`) VALUES
(1, 'PASSWD_EXP_MONTH', '1', '암호 만료 기간', '개월', 1, '2020-01-13 14:49:36'),
(2, 'LOGIN_MAX_RETRY_CNT', '5', '로그인 자동 차단', '회', 17, '2019-12-24 16:26:44'),
(3, 'REFRESH_RATE', '5', '화면 자동 갱신 주기', '초', 176, '2020-07-28 11:22:31'),
(4, 'GOOGLE_OTP_SUFFIX', 'www.soteria-sys.com/soteria-admin/', 'GOOGLE OTP SUFFIX', '문자열', 1, '2019-12-10 17:37:56');
/*!40000 ALTER TABLE `SYSTEM_CONFIG` ENABLE KEYS */;


-- 테이블 db_soteria_seoul.user_ips 구조 내보내기
CREATE TABLE IF NOT EXISTS `USER_IPS` (
  `EXT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `IP` varchar(32) DEFAULT NULL,
  `MOD_USER` int(11) DEFAULT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`EXT_ID`),
  UNIQUE KEY `USER_IPS_USER_ID_IP_uindex` (`USER_ID`,`IP`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- 테이블 데이터 db_soteria_seoul.user_ips:~7 rows (대략적) 내보내기
/*!40000 ALTER TABLE `USER_IPS` DISABLE KEYS */;
INSERT INTO `USER_IPS` (`EXT_ID`, `USER_ID`, `IP`, `MOD_USER`, `MOD_DATE`) VALUES
(14, 11, '0.0.0.1', 0, '2019-11-06 02:19:09'),
(15, 10, '0.0.0.0', 0, '2019-11-06 02:19:25'),
(61, 62, '10.10.10.1', 0, '2019-12-11 10:02:14'),
(62, 63, '10.10.10.2', 0, '2019-12-11 10:02:54'),
(63, 64, '11.22.33.44', 0, '2019-12-11 10:14:26'),
(64, 65, '10.10.10.1', 0, '2019-12-11 10:18:41'),
(70, 66, '1.1.1.1', 0, '2019-12-11 13:57:10');
/*!40000 ALTER TABLE `USER_IPS` ENABLE KEYS */;


-- 테이블 db_soteria_seoul.user_sbb_rel 구조 내보내기
CREATE TABLE IF NOT EXISTS `USER_SBB_REL` (
  `USER_ID` int(11) NOT NULL,
  `SBB_ID` int(11) NOT NULL,
  `MOD_USER` int(11) NOT NULL,
  `MOD_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`USER_ID`,`SBB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db_soteria_seoul.user_sbb_rel:~44 rows (대략적) 내보내기
/*!40000 ALTER TABLE `USER_SBB_REL` DISABLE KEYS */;
INSERT INTO `USER_SBB_REL` (`USER_ID`, `SBB_ID`, `MOD_USER`, `MOD_DATE`) VALUES
(19, 1, 1, '2019-12-06 02:57:29'),
(19, 3, 1, '2019-11-14 09:30:56'),
(19, 4, 1, '2019-11-14 09:30:54'),
(19, 5, 1, '2019-11-14 09:30:52'),
(19, 13, 1, '2019-12-21 01:35:04'),
(19, 151, 1, '2019-12-06 02:40:25'),
(19, 152, 1, '2019-12-06 02:40:28'),
(33, 15, 17, '2019-12-23 15:29:31'),
(33, 152, 17, '2019-12-23 15:29:34'),
(33, 153, 17, '2019-12-23 15:29:36'),
(33, 154, 17, '2019-12-23 15:29:33'),
(42, 151, 1, '2019-12-05 17:06:37'),
(42, 152, 1, '2019-12-05 17:06:39'),
(42, 153, 1, '2019-12-05 17:06:42'),
(42, 154, 1, '2019-12-05 17:06:44'),
(63, 10, 45, '2020-03-16 15:43:36'),
(76, 151, 17, '2019-12-30 15:34:38'),
(76, 152, 17, '2019-12-30 15:34:36'),
(76, 153, 17, '2019-12-30 15:34:40'),
(76, 154, 17, '2019-12-30 15:34:35'),
(77, 1, 85, '2020-04-16 14:30:15'),
(77, 3, 85, '2020-04-16 14:30:14'),
(77, 4, 85, '2020-04-16 14:30:13'),
(77, 6, 85, '2020-04-16 14:30:17'),
(77, 151, 76, '2020-01-14 09:47:08'),
(77, 152, 76, '2020-01-14 09:23:33'),
(77, 153, 76, '2020-01-14 09:47:05'),
(77, 154, 76, '2020-01-14 09:47:01'),
(78, 151, 45, '2020-03-06 09:47:10'),
(78, 152, 45, '2020-03-06 09:47:11'),
(78, 153, 45, '2020-03-06 09:47:06'),
(78, 154, 45, '2020-03-06 09:47:07'),
(78, 159, 45, '2020-03-23 15:01:53'),
(80, 160, 1, '2020-04-09 16:44:43'),
(80, 170, 1, '2020-04-09 16:44:39'),
(80, 173, 1, '2020-04-10 09:45:41'),
(80, 174, 1, '2020-04-10 09:45:38'),
(80, 175, 1, '2020-05-26 16:05:39'),
(82, 15, 45, '2020-03-18 16:45:03'),
(86, 1, 85, '2020-04-06 17:10:00'),
(86, 3, 85, '2020-04-06 17:10:01'),
(86, 4, 85, '2020-04-06 17:10:03'),
(86, 15, 85, '2020-04-06 17:08:31'),
(86, 154, 85, '2020-04-06 17:09:58');
/*!40000 ALTER TABLE `USER_SBB_REL` ENABLE KEYS */;


-- 테이블 db_soteria_seoul.hosts 구조 내보내기
CREATE TABLE IF NOT EXISTS `HOSTS` (
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

-- 테이블 데이터 db_soteria_seoul.hosts:~22 rows (대략적) 내보내기
/*!40000 ALTER TABLE `HOSTS` DISABLE KEYS */;
INSERT INTO `HOSTS` (`HOST_ID`, `HOST_NAME`, `IP`, `MAC`, `OS_TYPE`, `OS_VER`, `KERNEL_VER`, `MOD_USER`, `MOD_DATE`) VALUES
(1, 'host100', '192.168.0.3', 'AA:BB:CC:DD:EE:FF', 'LINUX', NULL, NULL, 0, '2019-12-30 00:42:01'),
(2, 'Host 2', '192.168.0.101', NULL, 'LINUX', NULL, NULL, 0, '2019-11-18 07:54:31'),
(3, '호스트03', '192.168.0.103', NULL, 'LINUX', NULL, NULL, 0, '2019-11-18 07:54:24'),
(4, 'Apache Host 01', '10.0.1.10', NULL, 'LINUX', NULL, NULL, 0, '2019-11-18 07:54:10'),
(5, 'test host', '1.1.1.1', NULL, NULL, NULL, NULL, 0, '2019-11-18 07:53:51'),
(9, 'HOST 09', '', NULL, NULL, NULL, NULL, 0, '2019-11-20 05:06:16'),
(10, 'Host10', '1.1.1.10', NULL, NULL, NULL, NULL, 1, '2019-11-20 05:28:09'),
(11, 'HOST 11', '1.1.1.11', NULL, NULL, NULL, NULL, 0, '2019-12-06 15:30:53'),
(12, 'Host 12', '1.1.1.12', NULL, NULL, NULL, NULL, 0, '2019-12-02 14:56:15'),
(13, 'Host 13', '1.1.1.13', NULL, NULL, NULL, NULL, 0, '2019-11-20 05:30:05'),
(14, '단위테스트서버1', '192.168.56.103', NULL, NULL, NULL, NULL, 35, '2019-11-27 05:38:29'),
(151, 'HOST단위테스트1', '192.168.56.51', NULL, 'LINUX', NULL, NULL, 1, '2019-12-06 02:41:19'),
(152, 'HOST단위테스트2', '192.168.56.52', NULL, 'LINUX', NULL, NULL, 1, '2019-12-06 02:41:21'),
(153, 'HOST단위테스트3', '192.168.56.53', NULL, 'LINUX', NULL, NULL, 1, '2019-12-06 02:41:22'),
(154, 'HOST단위테스트4', '192.168.56.54', NULL, 'LINUX', NULL, NULL, 1, '2019-12-06 02:41:24'),
(156, '123', '123', NULL, NULL, NULL, NULL, 45, '2020-03-18 16:11:00'),
(157, '1.1.1.1', 'default1', NULL, NULL, NULL, NULL, 45, '2020-03-19 10:38:15'),
(158, '', '', NULL, NULL, NULL, NULL, 1, '2020-03-20 15:13:00'),
(159, 'HOST_250_4', '192.168.56.14', NULL, NULL, NULL, NULL, 45, '2020-03-23 15:01:02'),
(173, '', '192.168.56.11', NULL, NULL, NULL, NULL, 0, '2020-05-26 11:24:42'),
(174, '', '호스트2', NULL, NULL, NULL, NULL, 0, '2020-05-26 11:25:21'),
(175, '', '', NULL, NULL, NULL, NULL, 1, '2020-05-26 16:02:49');
/*!40000 ALTER TABLE `HOSTS` ENABLE KEYS */;



-- 테이블 db_soteria_seoul.sbbs 구조 내보내기
CREATE TABLE IF NOT EXISTS `SBBS` (
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

-- 테이블 데이터 db_soteria_seoul.sbbs:~35 rows (대략적) 내보내기
/*!40000 ALTER TABLE `SBBS` DISABLE KEYS */;
INSERT INTO `SBBS` (`SBB_ID`, `SBB_NAME`, `ALIAS`, `IP`, `MAC`, `UUID`, `OS_TYPE`, `OS_VER`, `KERNEL_VER`, `NEUROTRON_VER`, `SSH_PORT`, `MOD_USER`, `MOD_DATE`) VALUES
(1, 'soSBBH_05', 'Host 01', '192.168.0.58', NULL, NULL, NULL, '', NULL, '', 22, 1, '2019-12-30 00:42:01'),
(3, 'soSBBH_04', 'TEST222', '192.168.0.100', NULL, NULL, NULL, '', NULL, '', 22, 17, '2019-11-18 07:54:31'),
(4, 'soSBBH_03', 'TEST 03', '192.168.0.102', NULL, NULL, NULL, '', NULL, '', 22, 17, '2019-11-18 07:54:24'),
(5, 'soSBBH_02', 'New SBB', '10.0.0.10', NULL, NULL, NULL, '', NULL, '', 22, 17, '2019-11-18 07:54:10'),
(6, 'soSBBH_01', 'test server', '1.1.1.2', NULL, NULL, NULL, 'Linux', NULL, '', 22, 17, '2019-11-18 07:53:51'),
(7, 'soSBBH_06', 'Card info', '', NULL, NULL, NULL, '', NULL, '', 22, 17, '2019-11-18 07:57:23'),
(8, 'soSBBH_07', 'Client info', '', NULL, NULL, NULL, '', NULL, '', 22, 17, '2019-11-18 07:57:01'),
(9, 'soSBBH_08', 'Fintech server', '', NULL, NULL, NULL, '', NULL, '', 22, 17, '2019-11-18 07:56:49'),
(10, 'soSBBH_09', 'Test Setting', '123.123.123.123', NULL, NULL, NULL, '', NULL, '', 22, 1, '2020-03-19 13:51:36'),
(11, 'aaSBBH_10', '10', '1.1.1.10', NULL, NULL, NULL, '', NULL, '', 22, 1, '2019-11-20 05:28:09'),
(12, 'aaSBBH_11', '11', '1.1.1.110', NULL, NULL, NULL, '', NULL, '', 22, 1, '2019-12-06 15:30:53'),
(13, 'aaSBBH_12', '12', '1.1.1.12', NULL, NULL, NULL, '', NULL, '', 22, 17, '2019-12-02 14:56:15'),
(14, 'aaSBBH_13', '13', '1.1.1.13', NULL, NULL, NULL, '', NULL, '', 22, 1, '2019-11-20 05:30:05'),
(15, '단위테스트', '단위테스트서버1', '192.168.56.101', NULL, NULL, NULL, '', NULL, '', 22, 35, '2019-11-27 05:38:29'),
(151, 'SBB단위테스트1', '단위테스트1', '192.168.56.151', NULL, NULL, NULL, '', NULL, '', NULL, 1, '2019-12-05 14:38:50'),
(152, 'SBB단위테스트2', '단위테스트2', '192.168.56.152', NULL, NULL, NULL, '', NULL, '', NULL, 1, '2019-12-05 14:38:50'),
(153, 'SBB단위테스트3', '단위테스트3', '192.168.56.153', NULL, NULL, NULL, '', NULL, '', NULL, 1, '2019-12-05 14:38:51'),
(154, 'SBB단위테스트4', '단위테스트4', '192.168.56.154', NULL, NULL, NULL, '', NULL, '', NULL, 1, '2019-12-05 14:38:51'),
(156, '123', '', '123', NULL, NULL, NULL, '', NULL, '', NULL, 45, '2020-03-18 16:11:00'),
(157, 'default1', '', '1.1.1.1', NULL, NULL, NULL, '', NULL, '', NULL, 45, '2020-03-19 10:38:15'),
(158, 'dasfads', '', 'adsfads', NULL, NULL, NULL, '', NULL, '', NULL, 1, '2020-03-20 15:13:00'),
(159, 'SBB_250_4', '', '192.168.56.104', NULL, NULL, NULL, '', NULL, '', NULL, 45, '2020-03-23 15:01:02'),
(161, 'Market_SBB_01', 'Market_SBB_01', '192.168.56.50', NULL, NULL, NULL, 'CentOS Linux release 7.5.1804', NULL, '', NULL, 1, '2020-04-07 16:08:56'),
(162, 'Market_SBB_02', 'Market_SBB_02', '192.168.56.51', NULL, NULL, NULL, 'CentOS Linux release 7.5.1804', NULL, '', NULL, 1, '2020-04-07 18:55:01'),
(163, 'Market_SBB_03', 'Market_SBB_03', '192.168.56.52', NULL, NULL, NULL, 'CentOS Linux release 7.5.1804', NULL, '', NULL, 1, '2020-04-07 16:08:20'),
(164, 'Market_SBB_04', 'Market_SBB_04', '192.168.56.53', NULL, NULL, NULL, 'CentOS Linux release 7.5.1804', NULL, '', NULL, 1, '2020-04-07 17:55:22'),
(165, 'Market_SBB_05', 'Market_SBB_05', '192.168.56.54', NULL, NULL, NULL, 'CentOS Linux release 7.5.1804', NULL, '', NULL, 1, '2020-04-08 10:43:53'),
(166, 'Market_SBB_06', 'Market_SBB_06', '192.168.56.55', NULL, NULL, NULL, 'CentOS Linux release 7.5.1804', NULL, '', NULL, 1, '2020-04-07 18:52:21'),
(167, 'Market_SBB_07', 'Market_SBB_07', '192.168.56.56', NULL, NULL, NULL, 'CentOS Linux release 7.5.1804', NULL, '', NULL, 1, '2020-04-07 18:52:45'),
(168, 'Market_SBB_08', 'Market_SBB_08', '192.168.56.57', NULL, NULL, NULL, 'CentOS Linux release 7.5.1804', NULL, '', NULL, 1, '2020-04-08 18:37:15'),
(171, 'Market_SBB_01', 'Market_SBB_01', '192.168.56.50', NULL, NULL, NULL, 'CentOS Linux release 7.5.1804', NULL, '', NULL, 1, '2020-04-09 16:44:03'),
(172, 'Market_SBB_02', 'Market_SBB_02', '192.168.56.51', NULL, NULL, NULL, 'CentOS Linux release 7.5.1804', NULL, '', NULL, 1, '2020-04-09 16:43:52'),
(173, 'TG_SBB1', '', '192.168.0.175', NULL, NULL, NULL, '', NULL, '', NULL, 1, '2020-05-26 11:24:42'),
(174, 'TG_SBB2', '', '192.168.0.173', NULL, NULL, NULL, '', NULL, '', NULL, 1, '2020-05-26 11:25:21'),
(175, 'Market_HOST_01', '태광SBB', '192.168.0.12', NULL, NULL, NULL, 'Centos7.5', NULL, 'r1.14', NULL, 1, '2020-05-26 16:04:37');
/*!40000 ALTER TABLE `SBBS` ENABLE KEYS */;




-- 테이블 db_soteria_seoul.push_queue 구조 내보내기
CREATE TABLE IF NOT EXISTS `PUSH_QUEUE` (
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

-- 테이블 데이터 db_soteria_seoul.push_queue:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `PUSH_QUEUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `PUSH_QUEUE` ENABLE KEYS */;