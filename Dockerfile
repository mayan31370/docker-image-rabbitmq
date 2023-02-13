FROM rabbitmq:3.9-management-alpine

ADD rabbitmq_delayed_message_exchange-3.9.0.ez /plugins/

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange \
    && rabbitmq-plugins enable --offline rabbitmq_web_stomp

EXPOSE 61613
EXPOSE 5672
EXPOSE 15672
EXPOSE 15674