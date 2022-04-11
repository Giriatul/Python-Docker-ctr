
# FROM tells Docker which image you base your image on (in the example, Python 3).
FROM python:3

ADD good_string.py /

WORKDIR /code

COPY requirements.txt requirements.txt

# RUN tells Docker which additional commands to execute.
RUN pip3 install -r requirement.txt

# CMD tells Docker to execute the command when the image loads.
CMD [ "python", "./good_string.py" ]




