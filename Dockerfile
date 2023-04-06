FROM springci/graalvm-ce:java11-0.12.x
RUN mkdir /opt/netshot
COPY netshot.jar /opt/netshot
COPY netshot.conf /etc/netshot.conf
CMD ["java", "-jar", "/opt/netshot/netshot.jar"]