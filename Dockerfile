FROM rabbitmq:3.11.9-alpine

RUN rabbitmq-plugins enable --offline rabbitmq_stomp \
    && rabbitmq-plugins enable --offline rabbitmq_management

EXPOSE 61613
EXPOSE 5672
EXPOSE 15672