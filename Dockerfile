# pull base fapi image
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

# set working directory
WORKDIR ./

# install system dependencies
RUN apt-get update \
  && apt-get -y install netcat gcc \
  && apt-get clean

# install python dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# add app
COPY ./ .