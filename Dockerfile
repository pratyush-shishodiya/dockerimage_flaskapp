FROM ubuntu

RUN apt-get update

RUN apt-get -y install  pip python3 

RUN pip  install Flask flask_sqlalchemy flask_mail config.json

COPY ./coding_spot /opt/coding_spot

WORKDIR "/opt/coding_spot"

CMD ["python3","./website.py"]


