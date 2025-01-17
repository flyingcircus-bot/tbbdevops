FROM python:3.6

EXPOSE 5001

WORKDIR /app

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY app.py /app
CMD python app.py

ENV MYSQL_USERNAME="root"
ENV MYSQL_PASSWORD="12345"
ENV MYSQL_INSTANCE_NAME="myapp"
ENV MYSQL_PORT_3306_TCP_ADDR="mydb"
ENV MYSQL_PORT_3306_TCP_PORT=3306
