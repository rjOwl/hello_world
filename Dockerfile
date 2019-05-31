<<<<<<< HEAD
FROM python:3.7-alpine
WORKDIR /code
COPY . /code/
RUN pip install django
EXPOSE 8000

=======
FROM python:3.7

ADD . /usr/src/app
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install django
EXPOSE 8000
CMD exec gunicorn hello_world.wsgi:application --bind 0.0.0.0:8000 --workers 3
>>>>>>> ada45f1d575df3fce885c866a371cd6466a7585e

