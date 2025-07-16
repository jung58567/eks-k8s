# Java 17이 설치된 runtime 이미지 준비
From bellsoft/liberica-openjdk-alpine:17

# 작업 디렉토리 설정
WORKDIR /app

# 빌드된 JAR파일 복사 (깃허브 액션즈에서 빌드된 파일을 복사해서 넣는다)
COPY target/*.jar app.jar

# 포트 노출
EXPOSE 8080

# 시간대설정
ENV TZ=Asia/Seoul

# 앱 실행
ENTRYPOINT [ "java", "-jar", "/app/app.jar" ]