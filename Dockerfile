FROM python:3.11-slim

# System deps cho mediapipe + opencv-headless
RUN apt-get update && apt-get install -y \
    libgl1 \
    libglib2.0-0 \
    libsm6 \
    libxrender1 \
    libxext6 \
    libgomp1 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# 🔥 QUAN TRỌNG
ENV STREAMLIT_SERVER_ADDRESS=0.0.0.0

EXPOSE 8080

# ❌ KHÔNG truyền --server.port
CMD ["streamlit", "run", "streamlit_app.py"]
