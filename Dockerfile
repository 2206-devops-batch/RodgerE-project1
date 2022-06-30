# Pull an official base image
FROM python:3.10.5-slim-bullseye

# Setting work directory
WORKDIR /RodgerE-project1

# Install dependencies
COPY ./requirements.txt /RodgerE-project1/requirements.txt
RUN pip install -r requirements.txt

# Copy src files
COPY . /RodgerE-project1

# Run Server
CMD ["flask", "run", "--host=0.0.0.0"]