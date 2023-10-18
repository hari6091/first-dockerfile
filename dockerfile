FROM nginx:latest

WORKDIR app/apiv1

RUN apt-get update && apt-get upgrade -y && apt-get install python3 telnet git -y

RUN git clone https://github.com/hari6091/first-dockerfile.git /app/apiv1

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]