# 基础镜像
FROM redis
# author
MAINTAINER lw

# 挂载目录
VOLUME /home/lw/redis
# 创建目录
RUN mkdir -p /home/lw/redis
# 指定路径
WORKDIR /home/lw/redis
# 复制conf文件到路径
COPY ./conf/redis.conf /home/lw/redis/redis.conf
