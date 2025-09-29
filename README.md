# End_to_End_Pipeline_Taffic_Safety_Using_Object_Detection


# 🚦 Traffic Safety Object Detection Pipeline

This project implements an **end-to-end pipeline** for traffic safety using object detection with **YOLOv5**, containerization with **Docker**, and automation using **Jenkins** and **GitHub Actions**.

---

## 📌 Project Workflow

1. **Dataset Preparation**
   - Created custom images and labels using [Jheta AI](https://jheta.ai/).
   - Exported labeled data in YOLO format.

2. **Model Training**
   - Used the labeled dataset in a Jupyter Notebook for training.
   - Generated custom weights (`best.pt`) for object detection.
   - Framework: [YOLOv5](https://github.com/ultralytics/yolov5).

3. **Object Detection**
   - Implemented detection pipeline using YOLOv5.
   - Configured necessary project files (`data.yaml`, `custom_yolov5m.yaml`, etc.).
   - Tested inference on sample images and videos.

4. **CI/CD Pipeline**
   - Created a **Dockerfile** to containerize the application.
   - Integrated **Jenkins** for continuous integration and deployment.
   - Configured **GitHub Actions workflow** for automated testing and builds.

---

## ⚙️ Tech Stack

- **Python 3.10**
- **PyTorch & YOLOv5**
- **Jheta AI** (for dataset labeling)
- **Docker**
- **Jenkins**
- **GitHub Actions**

---

## 🚀 How to Run

1. Clone this repo:
   ```bash
   git clone https://github.com/TheMatrix31415926/End_to_End_Pipeline_Taffic_Safety_Using_Object_Detection.git
   cd End_to_End_Pipeline_Taffic_Safety_Using_Object_Detection

## Build Docker image:

docker build -t traffic-safety-objdet .


## Run container:

docker run -p 5000:5000 traffic-safety-objdet


## Test object detection:

Place your input image in data/

Run detection inside container

Results will be saved in runs/detect/exp*


🎯 Results

Successfully trained a custom YOLOv5 model for traffic safety detection (bikes, helmets, persons, etc.).

Integrated end-to-end automation with Docker + Jenkins + GitHub Actions.