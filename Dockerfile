FROM rabbitmq:3.11.9-management-alpine

ADD rabbitmq_delayed_message_exchange-3.11.1.ez /plugins/

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange

EXPOSE 5672
EXPOSE 15672