# syntax=docker/dockerfile:1
FROM python:latest
ENV PYTHONUNBUFFERED=1
RUN mkdir /etc/modbus/
RUN apt install git
WORKDIR /etc/modbus/
RUN git clone https://github.com/tienvinhle/IOTGateway-modbus.git /etc/modbus/
RUN pip install 'asyncio' 'pymodbus==2.5.3' 'aioredis==1.3.1'
CMD ["python", "appConnectivity.py"]