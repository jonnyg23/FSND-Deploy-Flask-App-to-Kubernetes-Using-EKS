# Added Dockerfile following Step 2 instructions in the Udacity 'Containerizing
# and Running Locally Lesson'

FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]