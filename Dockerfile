FROM centos:latest

RUN mkdir -p /installer \
    && chmod 777 /installer \
    && cd /installer

ADD "https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-6.1.2-x64.bin" /installer/

COPY ./response.varfile /installer/
COPY ./setenv.sh /installer/

RUN chmod -R 777 /installer/ \
    && cd /installer \
    && ls -la \
    && ./atlassian-confluence-6.1.2-x64.bin -q -varfile response.varfile \
    && rm -f /var/atlassian/application-data/lock \
    && mv -f /installer/setenv.sh /opt/atlassian/confluence/bin/ \
    && rm -rf /installer \
    && ls -ls /

EXPOSE 8090
WORKDIR /opt/atlassian/confluence
CMD ["/opt/atlassian/confluence/bin/start-confluence.sh", "-fg"]
