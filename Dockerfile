FROM python:3.11

ENV TEXT "Hello!"

COPY main.py main.py
COPY model.py model.py


RUN pip install fastapi fastapi-cli uvicorn

CMD ["fastapi", "run", "main.py"]

