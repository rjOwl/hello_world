FROM python:3.7-alpine
ADD code/
WORKDIR /code
COPY . /code/
RUN pip install django
EXPOSE 8000
