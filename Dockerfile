FROM python:3.9.0

WORKDIR /home/

RUN echo 'chuniscute'

RUN git clone https://github.com/hale-in/web-app1.git

WORKDIR /home/web-app1/

#RUN echo "SECRET_KEY=django-insecure-+ba@zl&_h6fy#4z352f83ud53gmkkp*l&be)u+0umpymegtxm+'" > .env

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=gwangya1.settings.deploy && python manage.py migrate --settings=gwangya1.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=gwangya1.settings.deploy gwangya1.wsgi --bind 0.0.0.0:8000"]