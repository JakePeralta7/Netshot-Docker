FROM springci/graalvm-ce:java11-0.12.x
RUN gu install python
RUN gu install js
RUN mkdir /opt/netshot
COPY netshot.jar /opt/netshot
COPY ./etc/netshot.conf /etc/netshot.conf
CMD ["java", "-jar", "/opt/netshot/netshot.jar"]