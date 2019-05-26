#Grab the latest alpine image
#FROM alpine:latest
FROM python:latest

# Install python and pip
#RUN apk add --no-cache --update python3 py3-pip bash
ADD ./webapp/requirements.txt /tmp/requirements.txt

# Install dependencies
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -v -r /tmp/requirements.txt

# Add our code
ADD ./webapp /opt/webapp/
WORKDIR /opt/webapp

# Expose is NOT supported by Heroku
# EXPOSE 5000 		

# Run the image as a non-root user
#RUN adduser -D myuser
#USER myuser

# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku			
CMD gunicorn --timeout 30 --bind 0.0.0.0:$PORT wsgi

