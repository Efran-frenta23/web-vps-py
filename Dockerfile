FROM python:3.12-slim
WORKDIR /app
COPY . /app
EXPOSE 8000
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "nginx.wsgi:application"]