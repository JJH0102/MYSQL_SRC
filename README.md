### 2024년 08월 02일 MYSQL 수업

#### 1. Window에서 MySQL 설치

가. MySQL 설치 파일 다운

MySQL 공식 다운로드 사이트를 통해 파일을 다운로드

나. MySQL 설치

MySQL 공식 사이트에서 다운 받은 파일을 Window에서 실행 후 Mysql 설치

------------------------------------------------------------------------
* 참고 링크
https://dev.mysql.com/downloads/installer/ (MySQL 다운로드 공식 사이트)
------------------------------------------------------------------------

#### 2. Linux에서 MySQL 설치

가. MySQL 설치

$ sudo apt update
$ sudo apt install mysql-server

- 위 2개의 명령어를 터미널에서 실행하여 Mysql 설치

+ update & upgrade의 차이
update는 이미 설치된 소프트웨어의 업데이트 목록을 가지고 오는 것이고,
upgrade는 업데이트 된 소프트웨어를 실제로 설치하는 것이다.

나. MySQL 설정

$ sudo systemctl start mysql
$ sudo systemctl enable mysql

- start 명령어를 사용하여 MySQL을 시작하고,
enable 명령어를 사용하여 Ubuntu를 켤 때마다 MySQL이 자동으로 시작되도록 한다.

$ sudo mysql -u root

- Mysql에 접속

$ ALTER user 'root'@'localhost' IDENTIFIED BY '****';

- '****'에 설정하고자 하는 비밀번호를 입력하여 MySQL 비밀번호 설정

$ FLUSH PRIVILEGES;

- 위에서 MySQL의 설정들을 변경해줬기 때문에 'FLUSH PRIVILEGES;' 명령어를 사용하여 MySQL의 캐시를 삭제하고 새로운 설정을 적용시킨다.

$ create database madangdb;
$ create user madang@localhost identified by 'madang';
$ grant all privileges on madangdb.* to madang@localhost;
$ commit;

- 

-------------------------------------------------------------------------------
* 참고 링크
https://apost.dev/sql-ubuntu-mysql-seolci-mic-hwangyeong-seoljeong/ (MySQL 설치)
https://ko.linux-console.net/?p=14987 (MySQL Workbenan 설치)

https://www.cyberciti.biz/faq/upgrade-update-ubuntu-using-terminal/ (update & upgrade의 차이)

---------------------------------------------------------------------------------------



