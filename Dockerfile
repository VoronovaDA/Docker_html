FROM python:3.11-alpine

COPY ./requirements.txt /app/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /app/requirements.txt

COPY . /app

ENV MY_ENV=.env
WORKDIR app
EXPOSE 3000


CMD ["python3", "manage.py", "runserver", "0.0.0.0:3000"]