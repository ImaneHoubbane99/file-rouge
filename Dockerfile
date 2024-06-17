FROM python:3.6-alpine 
WORKDIR /opt 
RUN pip install flask 
EXPOSE 8080 
ENV ODOO_URL="ValeurParDefautOdoo" \ PGADMIN_URL="ValeurParDefautPgAdmin" 
COPY app.py . 
ENTRYPOINT ["python", "app.py"]