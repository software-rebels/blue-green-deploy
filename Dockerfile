FROM python:3-alpine
WORKDIR /usr/local/src/
COPY ./app/hello.py ./
ENTRYPOINT ["python", "/usr/local/src/hello.py"]
