# Image พื้นฐานเป็น Python
FROM python:3.12-slim

# โฟลเดอร์ทำงานใน container
WORKDIR /app

# copy requirements เข้าไปแล้วติดตั้ง
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy โค้ด src ทั้งหมดเข้าไปใน /app
COPY src/ .

# ตั้งค่าตัวแปรสำหรับ flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# เปิด port 5000
EXPOSE 5000

# คำสั่งเริ่มต้นเมื่อ container รัน
CMD ["flask", "run"]
