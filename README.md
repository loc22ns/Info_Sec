# Info_Sec

## Giới thiệu

Info_Sec là dự án mô phỏng hệ thống giám sát và phân tích bảo mật thông tin sử dụng ELK Stack (Elasticsearch, Logstash, Kibana) kết hợp với PHP, MySQL và Docker.

Hệ thống cho phép thu thập log từ máy chủ web, xử lý và lưu trữ tập trung để phục vụ việc giám sát, phát hiện bất thường và hỗ trợ phân tích các sự kiện bảo mật.

---

## Kiến trúc hệ thống

```text
+------------+
|  PHP Web   |
+------------+
      |
      v
+------------+
|  Filebeat  |
+------------+
      |
      v
+------------+
|  Logstash  |
+------------+
      |
      v
+---------------+
| Elasticsearch |
+---------------+
      |
      v
+------------+
|   Kibana   |
+------------+
```

---

## Công nghệ sử dụng

### Backend

* PHP
* MySQL

### Logging & Monitoring

* Filebeat
* Logstash
* Elasticsearch
* Kibana

### DevOps

* Docker
* Docker Compose

---

## Chức năng chính

### Website PHP

* Trang người dùng
* Trang quản trị
* Kết nối cơ sở dữ liệu MySQL
* Ghi nhận log truy cập

### Thu thập Log

* Thu thập log Apache/PHP
* Thu thập log hệ thống
* Gửi log về Logstash

### Xử lý Log

* Chuẩn hóa dữ liệu log
* Lọc và phân loại log
* Chuyển dữ liệu đến Elasticsearch

### Giám sát

* Lưu trữ log tập trung
* Tìm kiếm log theo thời gian
* Phân tích hoạt động hệ thống
* Hỗ trợ phát hiện các hành vi bất thường

---

## Cấu trúc thư mục

```text
Info_Sec
│
├── web/
│   ├── src/
│   └── Dockerfile
│
├── DB/
│   └── init.sql
│
├── beat/
│   ├── Dockerfile
│   └── filebeat.yml
│
├── LogStash/
│   └── pipeline/
│
├── logs/
│
├── docker-compose.yml
└── docker-compose.v1.yaml
```

---

## Yêu cầu hệ thống

* Docker >= 20.x
* Docker Compose >= 2.x

Kiểm tra:

```bash
docker --version
docker compose version
```

---

## Cài đặt

### Clone project

```bash
git clone https://github.com/loc22ns/Info_Sec.git
cd Info_Sec
```

### Khởi động hệ thống

```bash
docker-compose up -d
```

hoặc

```bash
docker compose up -d
```

### Kiểm tra container

```bash
docker ps
```

---

## Truy cập hệ thống

### Website

```text
http://localhost
```

### Kibana

```text
http://localhost:5601
```

### Elasticsearch

```text
http://localhost:9200
```

---

## Database

Database được khởi tạo từ:

```text
DB/init.sql
```

Tài khoản quản trị mặc định:

```text
Username: AbeDo
Password: 1234
```

Lưu ý: Nên thay đổi mật khẩu trước khi triển khai thực tế.

---

## Một số trường hợp sử dụng

* Thu thập log truy cập website
* Giám sát hoạt động người dùng
* Phân tích lỗi hệ thống
* Hỗ trợ điều tra sự cố bảo mật
* Thực hành và nghiên cứu ELK Stack

---

## Bảo mật

Không nên công khai:

* Mật khẩu MySQL
* Elasticsearch Password
* API Key
* Telegram Bot Token

Nên sử dụng file:

```text
.env
```

để quản lý các thông tin nhạy cảm.

---

## Tác giả

Đinh Viết Lộc

Sinh viên ngành Công nghệ Thông tin

GitHub:
https://github.com/loc22ns

---

## Giấy phép

Dự án được xây dựng phục vụ mục đích học tập, nghiên cứu và thực hành về bảo mật thông tin.
