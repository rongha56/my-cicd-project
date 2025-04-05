# 1. Base Image
FROM openjdk:17-jdk-slim

# 2. Jar 파일을 컨테이너에 복사
COPY build/libs/jenkins-0.0.1-SNAPSHOT.jar app.jar

# 3. 포트 오픈
EXPOSE 8081

# 4. 실행 명령어
ENTRYPOINT ["java", "-jar", "app.jar"]

#"openjdk 17 환경에서 Spring Boot JAR을 복사하고, 8081 포트를 열어서 앱을 실행해줘!"