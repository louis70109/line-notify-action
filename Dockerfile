FROM python:3.7.4-alpine3.10

COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

COPY entrypoint.sh line_notify.py /
RUN chmod +x /entrypoint.sh /line_notify.py

ENTRYPOINT ["/entrypoint.sh"]
