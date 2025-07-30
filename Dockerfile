FROM python:3.12-slim
WORKDIR /app
COPY ./web .
EXPOSE 8000
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "hello.wsgi:application"]