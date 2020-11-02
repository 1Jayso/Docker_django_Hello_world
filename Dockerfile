# Pull base image

FROM python:3.8.2

# Set environment variables 

ENV PYHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working directory
WORKDIR /Projects

ENV venv=/Projects
RUN python3 -m venv $venv
ENV PATH="$venv/bin:$PATH"

# Install dependencies 
COPY requirements.txt /Projects/requirements.txt
RUN pip install -r requirements.txt

# Copy Project
COPY . /Projects/
