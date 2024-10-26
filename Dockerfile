FROM python:3.12

ENV TEXT "Hello!"

COPY requirements.txt requirements.txt
COPY main.py main.py
COPY model.py model.py


RUN pip install --no-cache-dir -r requirements.txt

CMD ["fastapi", "run", "main.py"]

