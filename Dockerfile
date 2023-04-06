FROM ghcr.io/graalvm/graalvm-ce:java11-21.3.0
#RUN gu install python
#RUN gu install js
COPY netshot.jar /root
COPY ./etc/netshot.conf /etc/netshot.conf
CMD ["java", "-jar", "/root/netshot.jar"]