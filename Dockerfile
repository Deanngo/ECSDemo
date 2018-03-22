FROM dean791/ecshelloworld:standard

RUN rm -rf /usr/share/nginx/html
RUN rm -rf /etc/nginx/conf.d/*
COPY ./docker-config/nginx/* /etc/nginx/conf.d/
COPY ./build /tmp/test
RUN mv /tmp/test /usr/share/nginx/html