FROM ubuntu:18.04
FROM python:3.6

ENV PYTHONUNBUFFERED 1
EXPOSE 8000

RUN mkdir /project
WORKDIR /project

COPY requirements.txt /project/
RUN pip install -r requirements.txt

COPY ./project /project/

# CMD [ "python", "./manage.py runserver 0.0.0.0:8000" ]

CMD ["bash"]