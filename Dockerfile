# Added Dockerfile following Step 2 instructions in the Udacity 'Containerizing
# and Running Locally Lesson'

FROM python:3.7.9-stretch

COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]