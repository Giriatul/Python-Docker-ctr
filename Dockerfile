
# FROM tells Docker which image you base your image on (in the example, Python 3).
# FROM python:3

# ADD good_string.py /

# WORKDIR /code

# RUN tells Docker which additional commands to execute.
# RUN pip3 install -r requirement.txt

# CMD tells Docker to execute the command when the image loads.
# CMD [ "python", "./good_string.py" ]




# Base image
FROM python:alpine

# Add app code to /code inside container image
ADD . /code

# Set working directory for subsequent commands
WORKDIR /code

# Install dependencies
RUN pip install -r requirements.txt

# Command to run when container starts
ENTRYPOINT ["python", "good_string.py"]


