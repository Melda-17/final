FROM public.ecr.aws/docker/library/python:3.9-slim

WORKDIR /app

COPY app.py /app
COPY requirements.txt /app
RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "app.py"]
