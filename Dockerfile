FROM python:3.7-alpine3.16

COPY . . 
RUN apk --no-cache add curl
RUN pip install -r requirements.txt

ENV container_port=80

EXPOSE ${container_port}
 
CMD ["python", "./server.py"]
