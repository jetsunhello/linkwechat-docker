#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
unzip ../link-wechat/sql/lw-cloud.zip -d ./mysql/db
unzip ../link-wechat/sql/tables_xxl_job.zip -d ./mysql/db


# copy html
echo "begin copy html "
cp -r ../link-we-chat-front/vue3-lw-pc/dist/** ./nginx/html/pc
# cp -r ../link-we-chat-front/linkwe-pc/pc/** ./nginx/html/pc
# cp -r ../link-we-chat-front/linkwe-mobile/h5/** ./nginx/html/mobile


# copy jar
echo "begin copy lw-gateway "
cp ../link-wechat/linkwe-gateway/target/lw-gateway.jar ./lw/gateway/jar

echo "begin copy lw-auth "
cp ../link-wechat/linkwe-auth/target/lw-auth.jar ./lw/auth/jar

echo "begin copy lw-api"
cp ../link-wechat/linkwe-api/target/lw-api.jar ./lw/modules/api/jar

echo "begin copy lw-file"
cp ../link-wechat/linkwe-fileservice/target/lw-file.jar ./lw/modules/file/jar

echo "begin copy lw-scheduler"
cp ../link-wechat/linkwe-scheduler/target/lw-scheduler.jar ./lw/modules/scheduler/jar

echo "begin copy lw-wecom"
cp ../link-wechat/linkwe-wecom/target/lw-wecom.jar ./lw/modules/wecom/jar

echo "begin copy lw-wx"
cp ../link-wechat/linkwe-wx-api/target/lw-wx.jar ./lw/modules/wx/jar



