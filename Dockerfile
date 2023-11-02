FROM python:3.8

RUN mkdir /fastapi_app

WORKDIR /fastapi_app

COPY requirements .

RUN pip install -r requirements

COPY . .

RUN chmod a+x docker/*.sh

RUN alembic upgrade head

WORKDIR src

CMD gunicorn main:app --workers 1 --worker-class uvicorn.workers.UvicornWorker --bind=0.0.0.0:8000