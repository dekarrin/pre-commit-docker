FROM python:3.9-bookworm
RUN apt-get install git
RUN pip install pre-commit
RUN git config --global --add safe.directory /opt/repo
WORKDIR /opt/repo
CMD ["/bin/sh"]
