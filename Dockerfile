FROM ubuntu:18.04
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . ./

# ENTRYPOINT [  ]
CMD ["python", "app.py"]
