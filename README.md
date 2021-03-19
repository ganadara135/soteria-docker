# 실행 방법
1. DB 먼저 실행
docker-compose -f docker-mariadb.yml up
2. 톰캣 실행
docker-compose up


# docker-compose 환경설정 예제
 volume bind 할때 참고용,
 source 와 target  양쪽에 폴더를 위치 시킴
 설정 파일이나 배포 파일을 그 안에 위치 시킴


 volumes:                                           <br>
    - type: bind                                    <br>
        source: /home/ubuntu2/soteria/conf          <br>
        target: /usr/local/tomcat/conf              <br>
    - type: bind                                    <br>
        source: /home/ubuntu2/soteria/webapps       <br>
        target: /usr/local/tomcat/webapps           <br>
    - type: bind                                    <br>
        source: /home/ubuntu2/soteria/logs          <br>
        target: /soteria/ManagerFiles/log           <br>