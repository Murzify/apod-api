FROM python:3-alpine

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 80
ENTRYPOINT ["python"]
CMD ["application.py"]
