CREATE DATABASE QuanLyVatTu;

USE QuanLyVatTu;

CREATE TABLE NHACC (
                       MaNCC VARCHAR(10) PRIMARY KEY,
                       TenNCC VARCHAR(100),
                       DiaChi VARCHAR(255),
                       SDT VARCHAR(15)
);

CREATE TABLE VATTU (
                       MaVTU VARCHAR(10) PRIMARY KEY,
                       TenVTU VARCHAR(100)
);

CREATE TABLE PHIEUXUAT (
                           SoPX VARCHAR(10) PRIMARY KEY,
                           NgayXuat DATE
);

CREATE TABLE PHIEUNHAP (
                           SoPN VARCHAR(10) PRIMARY KEY,
                           NgayNhap DATE
);

CREATE TABLE DONHANG (
                         SoDH VARCHAR(10) PRIMARY KEY,
                         NgayDH DATE,
                         MaNCC VARCHAR(10),
                         FOREIGN KEY (MaNCC) REFERENCES NHACC(MaNCC)
);

CREATE TABLE CT_PHIEUXUAT (
                              SoPX VARCHAR(10),
                              MaVTU VARCHAR(10),
                              DGXuat DECIMAL(10,2),
                              SLXuat INT,
                              PRIMARY KEY (SoPX, MaVTU),
                              FOREIGN KEY (SoPX) REFERENCES PHIEUXUAT(SoPX),
                              FOREIGN KEY (MaVTU) REFERENCES VATTU(MaVTU)
);

CREATE TABLE CT_PHIEUNHAP (
                              SoPN VARCHAR(10),
                              MaVTU VARCHAR(10),
                              DGNhap DECIMAL(10,2),
                              SLNhap INT,
                              PRIMARY KEY (SoPN, MaVTU),
                              FOREIGN KEY (SoPN) REFERENCES PHIEUNHAP(SoPN),
                              FOREIGN KEY (MaVTU) REFERENCES VATTU(MaVTU)
);

CREATE TABLE CT_DONDH (
                          SoDH VARCHAR(10),
                          MaVTU VARCHAR(10),
                          PRIMARY KEY (SoDH, MaVTU),
                          FOREIGN KEY (SoDH) REFERENCES DONHANG(SoDH),
                          FOREIGN KEY (MaVTU) REFERENCES VATTU(MaVTU)
);

