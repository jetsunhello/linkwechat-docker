#!/usr/bin/bash

rabbitmqctl delete_user guest
rabbitmqctl add_user lw lw
rabbitmqctl set_user_tags lw administrator
rabbitmqctl add_vhost linkWeChatCloud
rabbitmq-plugins enable rabbitmq_management
rabbitmqctl set_permissions -p linkWeChatCloud lw ".*" ".*" ".*"