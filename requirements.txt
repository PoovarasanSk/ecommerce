python -m venv env1

env1\Scripts\activate.bat

pip install django

django-admin startproject ecommerce

cd ecommerce

pip install mysqlclient

python manage.py startapp shop




pip install pillow

python manage.py makemigrations

python manage.py migrate

python manage.py createsuperuser 




pip install jazzmin
or
pip install -U django-jazzmin







color-website:
    https://colorhunt.co/palette/1904827752fe8e8ffac2d9ff