FROM python:3.12.5
WORKDIR /Users/c/Downloads/fastercnn-pytorch-training-pipeline
COPY . .
RUN pip3.12 install --upgrade pip
RUN pip3.12 install -r /Users/c/Downloads/fastercnn-pytorch-training-pipeline/requirements.txt --no-cache-dir
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
CMD [ "python3.12", "/Users/c/Downloads/fastercnn-pytorch-training-pipeline/onnx_web_inference_camera.py"]