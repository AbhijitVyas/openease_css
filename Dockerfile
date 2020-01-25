FROM ubuntu

RUN apt-get update && \
  apt-get install -y ruby-full build-essential rubygems && \
  gem install sass --no-user-install -v 3.5.5 && \
  apt-get clean

ADD . /opt/webapp/webrob/static/css/
WORKDIR /opt/webapp/webrob/static/css/SCSS
RUN sass --update .:.

VOLUME /opt/webapp/webrob/static/css/

CMD /bin/sh
