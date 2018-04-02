FROM python:3.7-rc
ENV PYTHONUNBUFFERED=true
ADD . /opt/ellishelp
WORKDIR /opt/ellishelp
RUN pip install -e .
EXPOSE 8000
#CMD gunicorn -w 4 --proxy-protocol --paste development.ini -b 0.0.0.0:8000 --reload
CMD pserve --reload development.ini
