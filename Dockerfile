FROM python:3.8-slim-buster

ADD . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["gunicorn", "-w", "4", "-b", ":5000", "app:app"]