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

EXPOSE 8080

CMD sh -c "streamlit run streamlit_app.py --server.address 0.0.0.0 --server.port ${PORT:-8080}"
