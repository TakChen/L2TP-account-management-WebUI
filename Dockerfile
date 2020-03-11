FROM python:3.7-alpine

RUN pip install --no-cache-dir \
    -i https://mirrors.aliyun.com/pypi/simple/ \
    flask

WORKDIR /data
COPY . /data

CMD ["python manager.py /dev/null 2>&1" ]