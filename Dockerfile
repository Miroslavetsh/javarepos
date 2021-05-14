FROM amazoncorretto:11-alpine-jdk
maintainer obrii.org

copy src/main/java/org/obrii/mit/dp2021/toloshnyi/dockerspring/springMVCThymleafCRUD-0.0.1-SNAPSHOT.jar dockerLab8.jar
entrypoint ["java", "-jar", "dockerLab8.jar"]