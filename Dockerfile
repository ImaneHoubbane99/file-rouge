FROM python:3.6-alpine
LABEL maintainer="DOBE HOUBBANE BOUNAIDJA"
WORKDIR /opt
RUN  pip install flask
ADD . /opt/
VOLUME /opt
EXPOSE 8080
ENV ODOO_URL="https://www.odoo.com/"
ENV PGADMIN_URL="https://www.pgadmin.org/"
ENTRYPOINT ["python"]
CMD [ "app.py" ]
# docker build -t file_rouge:v1 .
# docker login
# docker tag file_rouge:v1 imane123456788/file_rouge:v1
# docker push  imane123456788/file_rouge:v1

 