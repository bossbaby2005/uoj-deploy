FROM ubuntu:18.04
MAINTAINER bossbaby <3064273390@qq.com>

WORKDIR /opt
#Update apt and install git
RUN sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
RUN apt-get update && apt-get install -y git
#Clone the latest UOJ Community verison to local
RUN git clone https://git.dev.tencent.com/bossbaby/uoj-deploy.git uoj
#Install environment and set startup script
RUN cd uoj/install/bundle && sh install.sh -p && echo "\
#!/bin/sh\n\
chown -R mysql:mysql /var/lib/mysql /var/run/mysqld\n\
if [ ! -f \"/var/uoj_data/.UOJSetupDone\" ]; then\n\
  cd /opt/uoj/install/bundle && sh install.sh -i\n\
fi\n\
service ntp start\n\
service mysql start\n\
service apache2 start\n\
su local_main_judger -c \"/opt/uoj/judger/judge_client start\"\n\
exec bash\n" >/opt/up && chmod +x /opt/up

ENV LANG=C.UTF-8 TZ=Asia/Shanghai
EXPOSE 80 3690
CMD /opt/up
