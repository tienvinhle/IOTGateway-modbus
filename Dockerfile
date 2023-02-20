# syntax=docker/dockerfile:1
FROM python:latest
ENV PYTHONUNBUFFERED=1
RUN mkdir /etc/modbus/
RUN apk add --no-cache git
RUN apk add --no-cache openssh
WORKDIR /etc/modbus/
RUN git clone https://github.com/tienvinhle/IOTGateway/modbus /etc/modbus/
RUN pip install 'asyncio' 'pymodbus' 'aioredis==1.3.1'
CMD ["python", "appConnectivity.py"]