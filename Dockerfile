FROM alpine:latest

ADD tk102-server-milekz /tk102
ADD POSHandler.py /tk102

RUN apk add --no-cache python py-pip py-psycopg2 && pip install geopy

WORKDIR /tk102

CMD [ "python", "./tk102-server-milekz" ]

EXPOSE 14600
