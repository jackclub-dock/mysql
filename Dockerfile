FROM mysql

#时区设置
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

ADD my.cnf /etc/mysql/my.cnf

RUN mkdir -p /data
RUN usermod -u 1000 mysql
RUN groupmod -g 1000 mysql
RUN groupmod -g 999 mysql

ENV MYSQL_ROOT_PASSWORD root