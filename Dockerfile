FROM alpine:latest

ADD tk102-server-milekz /
ADD POSHandler.py /

RUN apk --update --no-cache add python3 \
  && apk --update --no-cache add --virtual build-dependencies postgresql-dev gcc python3-dev musl-dev \
  && pip3 install psycopg2 geopy \
  && apk del build-dependencies



CMD [ "python3", "./tk102-server-milekz" ]


EXPOSE 14600

