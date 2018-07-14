FROM	ubuntu
RUN	apt-get update
RUN	apt-get install -y python python-dev python-distribute python-pip
COPY .	/flaskr
WORKDIR /flaskr
RUN pip install -r requirements.txt
CMD	["python", "testapp.py"]