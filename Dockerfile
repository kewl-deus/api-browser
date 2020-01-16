#FROM nginx
FROM swaggerapi/swagger-generator
RUN mkdir -p /generator/api
COPY static.xml /generator/static.xml
COPY *.yaml /generator/api/
CMD ["java", "-jar", "/generator/jetty-runner.jar", "/generator/swagger-generator.war", "/generator/static.xml"]

