# RabbitMQ
当前RabbitMQ版本为：`v3.11.9`
### 快速开始
```shell
docker run -d -p 5672:5672 mayan31370/docker-image-rabbitmq
```
默认的用户名是`guest`/`guest`
### 打开全部插件
```shell
docker run -d --name rabbitmq -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=your_admin_password -p 15672:15672 -p 5672:5672 -p 61613:61613 mayan31370/docker-image-rabbitmq:delayed-exchange_stomp
```

## Tags 说明
- `latest`: 标准`RabbitMQ`
- `management`: 打开管理界面插件
- `delayed-exchange`: 打开`管理界面`和`延迟队列`插件
- `stomp`: 打开`管理界面`和`STOMP`插件
- `delayed-exchange_stomp`: 打开`管理界面`、`延迟队列`和`STOMP`插件

## 端口号说明
- `5672`: 消息端口
- `15672`: Web管理平台端口
- `61613`: STOMP端口

## 环境变量说明
详细的参数列表可以参考`RabbitMQ`官方文档，[详情](https://www.rabbitmq.com/configure.html#supported-environment-variables)。
这里列出一些常用的变量
| 变量 | 说明 |
| ---： | ：--- |
| RABBITMQ_DEFAULT_USER | 默认用户用户名 |
| RABBITMQ_DEFAULT_PASS | 默认用户密码 |
```shell
docker run -d --name umx-rabbit -e RABBITMQ_DEFAULT_USER=lianpin -e RABBITMQ_DEFAULT_PASS=lianpin -p 15672:15672 -p 15674:15674 -p 5672:5672 -p 61613:61613 dev-registry.umxverse.com/basic/rabbitmq
```