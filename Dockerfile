FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN cp example.env .env

RUN bash configure.sh

CMD [ "python", "wsgi.py" ]
