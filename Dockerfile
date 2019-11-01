FROM alpine:latest

ADD tk102-server-milekz /
ADD POSHandler.py /

RUN apk add --no-cache python py-pip py-psycopg2 && pip install geopy

CMD [ "python", "./tk102-server-milekz" ]

EXPOSE 14600
