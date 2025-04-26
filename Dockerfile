FROM python:3.12

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN apt-get -y update --fix-missing
RUN apt-get -y install libcurl4-openssl-dev libssl-dev software-properties-common python3-launchpadlib
RUN pip install -r requirements.txt

# setting env
ENV PYTHONUNBUFFERED=1
ENV DJANGO_SETTINGS_MODULE=api.settings

EXPOSE 8080

CMD ["bash", "/config/start_server.sh"]
