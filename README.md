🐱 CatShop API – การทำงานและการเรียกใช้งาน

CatShop API เป็น RESTful API สำหรับจัดการสินค้าแมว ทั้ง ดู เพิ่ม แก้ไข ลบ ทำงานบน PHP + MySQL ผ่าน XAMPP

🌟 1. หลักการทำงานของ CatShop API

CatShop API ใช้โครงสร้าง CRUD (Create, Read, Update, Delete)

ส่วนประกอบ	หน้าที่
db.php	เชื่อมต่อฐานข้อมูล MySQL (catshop)
api.php	ตัวจัดการ API ทั้งหมด ตรวจสอบ HTTP Method และ Parameter ส่งคำสั่ง SQL
MySQL Table products	เก็บข้อมูลสินค้าแมวทั้งหมด

หลักการทำงาน

ผู้ใช้เรียก API ผ่าน HTTP Method:

GET → อ่านข้อมูลสินค้า

POST → เพิ่มสินค้า

PUT → แก้ไขสินค้า

DELETE → ลบสินค้า

API ตรวจสอบ Request และ Parameter

ดึงหรือปรับข้อมูลใน Table products

ส่ง JSON Response กลับ

🌐 2. Base URL
http://localhost/catshop-api/api.php

📌 3. API Endpoints และวิธีเรียกใช้งาน

GET
<img width="1009" height="817" alt="image" src="https://github.com/user-attachments/assets/18ed3a45-18e4-448b-a69f-916e5f9e1ec7" />

POST
<img width="1011" height="618" alt="image" src="https://github.com/user-attachments/assets/b490add1-dafc-4414-8154-3c94ee6a9230" />

PUT
<img width="1020" height="565" alt="image" src="https://github.com/user-attachments/assets/973a643f-4881-47c7-b259-6d5b9e266255" />

DELETE
<img width="1015" height="350" alt="image" src="https://github.com/user-attachments/assets/0ff833c9-3c9e-4dd8-a3f0-39918eded398" />
