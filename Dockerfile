FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY ./app /app
EXPOSE 8000
CMD ["hello.wsgi:application", "-b", "0.0.0.0:8000"]