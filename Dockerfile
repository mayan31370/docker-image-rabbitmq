FROM rabbitmq:3.11.9-alpine

ADD rabbitmq_delayed_message_exchange-3.11.1.ez /plugins/

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange \
    && rabbitmq-plugins enable --offline rabbitmq_stomp \
    && rabbitmq-plugins enable --offline rabbitmq_management

EXPOSE 61613
EXPOSE 5672
EXPOSE 15672