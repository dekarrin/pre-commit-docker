FROM python:3.9-bookworm
RUN apt-get install git
RUN pip install pre-commit
RUN git config --global --add safe.directory /opt/repo
RUN mkdir /root/.cache/pre-commit
WORKDIR /opt/repo
VOLUME /root/.cache/pre-commit
ENTRYPOINT ["/usr/local/bin/pre-commit"]
