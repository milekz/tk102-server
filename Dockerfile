FROM python:2

ADD tk102-server-milekz /

RUN pip install psycopg2 geopy

CMD [ "python", "./tk102-server-milekz" ]
