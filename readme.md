

1. 安装docker-compose 

2. 创建目录并拉取代码

   ```shell
   mkdir link-wechat && cd link-wechat
   git clone https://gitee.com/LinkWeChat/link-wechat
   git clone https://gitee.com/LinkWeChat/link-we-chat-front
   git clone https://gitee.com/LinkWeChat_admin/linkwechat-docker
   
   ```

3. 打包文件

   ```shell
   # 服务端打包
   cd link-wechat
   # 重要
   cp ../docker-compose/bootstrap.yml config/run/bootstrap.yml
   mvn clean package
   # pc前端
   cd link-we-chat-front/linkwe-pc
   yarn install
   yarn build
   # mobile前端
   cd link-we-chat-front/linkwe-mobile
   yarn install
   yarn build
   ```

4. 修改配置和sql

   1. sql文件

      没有变动不需要操作,有需要就加到mysql/db文件夹内

   2. 增加nacos配置文件

      默认已添加到 `mysql/db/config.sql`

   3. 增加xxl-job配置文件

      默认已添加

5. 到 compose 目录依次执行

   ```sh
   # 拷贝指定文件到对应目录
   sh copy.sh
   # 启动基础模块
   sh deploy.sh base
   # 启动项目其他模块
   sh deploy.sh modules
   ```

6. 搞定







