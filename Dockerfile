FROM python:3.7.0-alpine3.7

LABEL maintainer="https://github.com/m3talstorm/devpi"

LABEL version="0.0.1"
LABEL description="Dev environment"

WORKDIR /

COPY requirements.txt requirements.txt

RUN apk update && apk add --no-cache \
    alpine-sdk=0.5-r0 \
    libffi-dev=3.2.1-r4 \
    nano=2.9.1-r0

RUN pip install --no-cache-dir -U -r requirements.txt

RUN devpi-server --version
RUN devpi-server --init
RUN devpi-server --recreate-search-index --offline

EXPOSE 3141

VOLUME /root/.devpi/server/

COPY ./entrypoint.sh /

RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
