# Golf Swing Analysis - AI-Powered Swing Analyzer

Web application phân tích cú swing golf sử dụng AI và Computer Vision.

**Live Demo:** [s](https://golf-swing-analysis-vtkteam.up.railway.app)

**GitHub Repository:** [https://github.com/khiemdztv/golf-swing-analysis](https://github.com/khiemdztv/golf-swing-analysis)

---

## 📋 Tổng quan

Ứng dụng giúp người chơi golf:
- Upload video swing và nhận phân tích tự động
- Nhận diện pose bằng MediaPipe AI
- Phân tích các giai đoạn swing (address, backswing, downswing, impact, follow-through)
- So sánh với swing của pro golfers
- Nhận gợi ý cải thiện kỹ thuật

---

## 🗂️ Cấu trúc thư mục

Code/
│
├── streamlit_app.py # Main web application
│
├── 📁 Data Processing Scripts
│ ├── 01_extract_features_pro.py # Trích xuất features từ video pro
│ ├── create_amateur_data.py # Tạo dữ liệu amateur
│ ├── dataset_metadata_pro.csv # Metadata cho pro dataset
│ 
│
├── 📁 Training Scripts
│ ├── 02train_model.py # Train model phân loại
│ ├── train_pro_amateur_classifier.py # Train classifier pro/amateur
│
├── 📁 Trained Models (.pkl files)
│ ├── classifier_back_v3.pkl # Model phân loại back view
│ ├── classifier_side_v3.pkl # Model phân loại side view
│ ├── model_back_v2.pkl # Model regression back view
│ ├── model_side_v2.pkl # Model regression side view
│ ├── scaler_back_v2.pkl # Scaler cho back view
│ ├── scaler_side_v2.pkl # Scaler cho side view
│ ├── scaler_classifier_back_v3.pkl # Scaler cho classifier back
│ └── scaler_classifier_side_v3.pkl # Scaler cho classifier side
│
├── 📁 Feature Data (.pkl files)
│ ├── features_back_amateur.pkl # Features amateur back view
│ ├── features_back_view.pkl # Features back view
│ ├── features_side_amateur.pkl # Features amateur side view
│ ├── features_side_view.pkl # Features side view
│ ├── golf_pro_distance_back.pkl # Distance features back
│ └── golf_pro_distance_side.pkl # Distance features side
│
├── 📁 Results & Data
│ ├── classifier_results/ # Kết quả training classifier
│ ├── training_results/ # Kết quả training models
│ └── scan_data/ # Dữ liệu scan từ videos
│
├── README.md
