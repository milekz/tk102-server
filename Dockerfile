FROM alpine:latest

RUN apk add --no-cache python py-pip py-psycopg2 && pip install geopy && mkdir -p /tk102

ADD tk102-server-milekz /tk102
ADD POSHandler.py /tk102

WORKDIR /tk102

CMD [ "./tk102-server-milekz" ]

EXPOSE 14600
