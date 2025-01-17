FROM python:3.10.12
WORKDIR /fasterrcnn-pytorch-training-pipeline

COPY . .
RUN pip install -r /fasterrcnn-pytorch-training-pipeline/requirements.txt
CMD [ "python","my_api.py" ]
