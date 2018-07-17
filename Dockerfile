FROM	ubuntu
RUN	apt-get update
RUN	apt-get install -y python python-dev python-distribute python-pip
COPY .	/flaskr
WORKDIR /flaskr
RUN pip install -r requirements.txt
CMD	gunicorn --bind 0.0.0.0:5000 wsgi:app

