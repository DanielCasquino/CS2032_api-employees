FROM python:3-slim
WORKDIR /programas/api-employees
RUN pip3 install fastapi
RUN pip3 install pydantic
RUN pip3 install mysql-connector-python

RUN pip3 install python-dotenv

COPY . .
CMD ["fastapi", "run", "./main.py", "--port", "8000"]
