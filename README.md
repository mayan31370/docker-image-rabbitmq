# docker-jvm

## RabbitMQ的Docker镜像
1. 开启管理平台 15672
2. 开启 Stomp 协议 61613
3. 开启 Web-Stomp 15674
4. 开启 Delayed-Exchange

## 使用
```shell
docker run -d --name umx-rabbit -e RABBITMQ_DEFAULT_USER=lianpin -e RABBITMQ_DEFAULT_PASS=lianpin -p 15672:15672 -p 15674:15674 -p 5672:5672 -p 61613:61613 dev-registry.umxverse.com/basic/rabbitmq
```