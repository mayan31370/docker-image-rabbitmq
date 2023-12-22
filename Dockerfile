FROM rabbitmq:3.11.9-management-alpine

RUN rabbitmq-plugins enable --offline rabbitmq_web_stomp

EXPOSE 15674
EXPOSE 61613
EXPOSE 5672
EXPOSE 15672
