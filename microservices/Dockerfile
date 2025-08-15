FROM python:3.8-slim-buster

RUN groupadd -r appuser && useradd -r -g appuser appuser

WORKDIR /python-docker

ENV FLASK_APP=run.py

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chown -R appuser:appuser /python-docker

USER appuser

EXPOSE 5000

CMD [ "python3", "run.py" ]