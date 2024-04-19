FROM python:3.9-bookworm
RUN pip install pre-commit
WORKDIR /opt/repo
CMD ["/bin/sh"]
