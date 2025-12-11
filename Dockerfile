FROM python:3.14.2-slim

RUN apt-get update
RUN apt-get -y install jq

COPY run_action.py entrypoint.sh /action/

RUN pip3 install requests pyyaml

ENTRYPOINT ["/action/entrypoint.sh"]
