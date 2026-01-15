FROM python:3.14-slim-buster

WORKDIR /usr/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "-m" , "flask", "run"]