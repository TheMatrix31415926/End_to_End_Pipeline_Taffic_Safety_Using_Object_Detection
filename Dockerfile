
# FROM python:3.10-slim

# RUN apt update -y && apt install awscli -y
# WORKDIR /app

# COPY . /app
# RUN pip install -r requirements.txt

# CMD ["python3", "app.py"]

FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip aws/

WORKDIR /app

# Copy requirements and install packages
COPY requirements.txt .

# Install packages (skip problematic ones if they fail)
RUN pip install --upgrade pip && \
    pip install --no-cache-dir \
    --extra-index-url https://pypi.nvidia.com/ \
    -r requirements.txt || \
    pip install --no-cache-dir \
    flask flask-cors numpy opencv-python-headless pillow pyyaml requests torch torchvision ultralytics

# Copy application code
COPY . .

CMD ["python3", "app.py"]