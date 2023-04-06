FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_proj create-db
RUN flask_proj populate-db
RUN flask_proj add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_proj", "run"]
