FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/hale-in/web-app1.git

WORKDIR /home/web-app1/

RUN echo "SECRET_KEY=django-insecure-+ba@zl&_h6fy#4z352f83ud53gmkkp*l&be)u+0umpymegtxm+'" > .env

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]