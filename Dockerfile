FROM rabbitmq:3.11.9-management-alpine

ADD rabbitmq_delayed_message_exchange-3.11.1.ez /plugins/

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange \
    && rabbitmq-plugins enable --offline rabbitmq_web_stomp

EXPOSE 61613
EXPOSE 15674
EXPOSE 5672
EXPOSE 15672
