docker pull rabbitmq:3.11.23-management

docker run -d --hostname rabbit --name schoolgate-rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq:3.11.23-management

