FROM python:3-alpine
ENV port=9201
RUN apk update \
    && apk --no-cache add bash \
    && pip install jetson-stats prometheus-client \
    && rm -rf /var/cache/apk/*
ADD jetson-exporter.py /jetson-exporter.py
CMD python3 /jetson-exporter.py  --port ${port}