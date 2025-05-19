## Cơ sở dữ liệu quan hệ
- `Tạo CSDL`: CREATE DATABASE test_database DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
- `Xóa CSDL`: DROP DATABASE new_database;
- `Tạo bảng`: 
CREATE TABLE Student(
  ID int,
  name varchar(200),
  age int,
  country varchar(50)
);