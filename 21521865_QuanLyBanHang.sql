﻿CREATE DATABASE QuanLyBanHang
USE QuanLyBanHang

CREATE TABLE KHACHHANG
(
	MAKH CHAR(4),
	HOTEN VARCHAR(40),
	DCHI VARCHAR(50),
	SODT VARCHAR(20),
	NGSINH SMALLDATETIME,
	NGDK SMALLDATETIME,
	DOANHSO MONEY,
	CONSTRAINT KHACHHANG_PK PRIMARY KEY (MAKH)
)

CREATE TABLE NHANVIEN
(
	MANV CHAR(4),
	HOTEN VARCHAR(40),
	SODT VARCHAR(20),
	NGVL SMALLDATETIME
	CONSTRAINT NHANVIEN_PK PRIMARY KEY (MANV)
)

CREATE TABLE SANPHAM
(
	MASP CHAR(4),
	TENSP VARCHAR(40),
	DVT VARCHAR(20),
	NUOCSX VARCHAR(40),
	GIA MONEY
	CONSTRAINT SANPHAM_PK PRIMARY KEY (MASP)
)

CREATE TABLE HOADON
(
	SOHD INT,
	NGHD SMALLDATETIME,
	MAKH CHAR(4),
	MANV CHAR(4),
	TRIGIA MONEY
	CONSTRAINT HOADON_PK PRIMARY KEY (SOHD)
)

CREATE TABLE CTHD
(
	SOHD INT,
	MASP CHAR(4),
	SL INT,
	CONSTRAINT CTHD_PK PRIMARY KEY (SOHD, MASP),
)
set dateformat dmy
-- Nhập dữ liệu cho NHANVIEN
INSERT INTO NHANVIEN VALUES('NV01','Nguyen Nhu Nhut','0927345678','13/04/2006')
INSERT INTO NHANVIEN VALUES('NV02','Le Thi Phi Yen','0987567390','21/4/2006')
INSERT INTO NHANVIEN VALUES('NV03','Nguyen Van B','0997047382','27/04/2006')
INSERT INTO NHANVIEN VALUES('NV04','Ngo Thanh Tuan','0913758498','24/06/2006')
INSERT INTO NHANVIEN VALUES('NV05','Nguyen Thi Thanh Truc','0913758498','20/07/2006')

-- Nhập dữ liệu cho KHACHHANG
INSERT INTO KHACHHANG VALUES('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','08823451','22/10/1960','22/07/2006',13060000,NULL)
INSERT INTO KHACHHANG VALUES('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','0908256478','03/04/1974','30/07/2006',280000,NULL)
INSERT INTO KHACHHANG VALUES('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','0938776266','12/06/1980','08/05/2006',3860000,NULL)
INSERT INTO KHACHHANG VALUES('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','0917325476','09/03/1965','10/02/2006',250000,NULL)
INSERT INTO KHACHHANG VALUES('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','08246108','10/03/1950','28/10/2006',21000,NULL)
INSERT INTO KHACHHANG VALUES('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','08631738','31/12/1981','24/11/2006',915000,NULL)
INSERT INTO KHACHHANG VALUES('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','0916783565','06/04/1971','12/01/2006',12500,NULL)
INSERT INTO KHACHHANG VALUES('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','0938435756','10/01/1971','13/12/2006',365000,NULL)
INSERT INTO KHACHHANG VALUES('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','08654763','03/09/1979','14/01/2007',70000,NULL)
INSERT INTO KHACHHANG VALUES('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','08768904','02/05/1983','16/01/2007',67500,NULL)
SELECT *FROM KHACHHANG
-- Nhập dữ liệu cho SANPHAM
INSERT INTO SANPHAM VALUES('BC01','But chi','cay','Singapore',3000)
INSERT INTO SANPHAM VALUES('BC02','But chi','cay','Singapore',5000)
INSERT INTO SANPHAM VALUES('BC03','But chi','cay','Viet Nam',3500)
INSERT INTO SANPHAM VALUES('BC04','But chi','hop','Viet Nam',30000)
INSERT INTO SANPHAM VALUES('BB01','But bi','cay','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('BB02','But bi','cay','Trung Quoc',7000)
INSERT INTO SANPHAM VALUES('BB03','But bi','hop','Thai Lan',100000)
INSERT INTO SANPHAM VALUES('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500)
INSERT INTO SANPHAM VALUES('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500)
INSERT INTO SANPHAM VALUES('TV03','Tap 100 giay tot','quyen','Viet Nam',3000)
INSERT INTO SANPHAM VALUES('TV04','Tap 200 giay tot','quyen','Viet Nam',5500)
INSERT INTO SANPHAM VALUES('TV05','Tap 100 trang','chuc','Viet Nam',23000)
INSERT INTO SANPHAM VALUES('TV06','Tap 200 trang','chuc','Viet Nam',53000)
INSERT INTO SANPHAM VALUES('TV07','Tap 100 trang','chuc','Trung Quoc',34000)
INSERT INTO SANPHAM VALUES('ST01','So tay 500 trang','quyen','Trung Quoc',40000)
INSERT INTO SANPHAM VALUES('ST02','So tay loai 1','quyen','Viet Nam',55000)
INSERT INTO SANPHAM VALUES('ST03','So tay loai 2','quyen','Viet Nam',51000)
INSERT INTO SANPHAM VALUES('ST04','So tay','quyen','Thai Lan',55000)
INSERT INTO SANPHAM VALUES('ST05','So tay mong','quyen','Thai Lan',20000)
INSERT INTO SANPHAM VALUES('ST06','Phan viet bang','hop','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('ST07','Phan khong bui','hop','Viet Nam',7000)
INSERT INTO SANPHAM VALUES('ST08','Bong bang','cai','Viet Nam',1000)
INSERT INTO SANPHAM VALUES('ST09','But long','cay','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('ST10','But long','cay','Trung Quoc',7000)

-- Nhập dữ liệu cho HOADON
INSERT INTO HOADON VALUES(1001,'23/07/2006','KH01','NV01',320000)
INSERT INTO HOADON VALUES(1002,'12/08/2006','KH01','NV02',840000)
INSERT INTO HOADON VALUES(1003,'23/08/2006','KH02','NV01',100000)
INSERT INTO HOADON VALUES(1004,'01/09/2006','KH02','NV01',180000)
INSERT INTO HOADON VALUES(1005,'20/10/2006','KH01','NV02',3800000)
INSERT INTO HOADON VALUES(1006,'16/10/2006','KH01','NV03',2430000)
INSERT INTO HOADON VALUES(1007,'28/10/2006','KH03','NV03',510000)
INSERT INTO HOADON VALUES(1008,'28/10/2006','KH01','NV03',440000)
INSERT INTO HOADON VALUES(1009,'28/10/2006','KH03','NV04',200000)
INSERT INTO HOADON VALUES(1010,'01/11/2006','KH01','NV01',5200000)
INSERT INTO HOADON VALUES(1011,'04/11/2006','KH04','NV03',250000)
INSERT INTO HOADON VALUES(1012,'30/11/2006','KH05','NV03',21000)
INSERT INTO HOADON VALUES(1013,'12/12/2006','KH06','NV01',5000)
INSERT INTO HOADON VALUES(1014,'31/12/2006','KH03','NV02',3150000)
INSERT INTO HOADON VALUES(1015,'01/01/2007','KH06','NV01',910000)
INSERT INTO HOADON VALUES(1016,'01/01/2007','KH07','NV02',12500)
INSERT INTO HOADON VALUES(1017,'02/01/2007','KH08','NV03',35000)
INSERT INTO HOADON VALUES(1018,'13/01/2007','KH08','NV03',330000)
INSERT INTO HOADON VALUES(1019,'13/01/2007','KH01','NV03',30000)
INSERT INTO HOADON VALUES(1020,'14/01/2007','KH09','NV04',70000)
INSERT INTO HOADON VALUES(1021,'16/01/2007','KH10','NV03',67500)
INSERT INTO HOADON VALUES(1022,'16/01/2007',Null,'NV03',7000)
INSERT INTO HOADON VALUES(1023,'17/01/2007',Null,'NV01',330000)

-- Nhập dữ liệu cho CTHD
INSERT INTO CTHD VALUES(1001,'TV02',10)
INSERT INTO CTHD VALUES(1001,'ST01',5)
INSERT INTO CTHD VALUES(1001,'BC01',5)
INSERT INTO CTHD VALUES(1001,'BC02',10)
INSERT INTO CTHD VALUES(1001,'ST08',10)
INSERT INTO CTHD VALUES(1002,'BC04',20)
INSERT INTO CTHD VALUES(1002,'BB01',20)
INSERT INTO CTHD VALUES(1002,'BB02',20)
INSERT INTO CTHD VALUES(1003,'BB03',10)
INSERT INTO CTHD VALUES(1004,'TV01',20)
INSERT INTO CTHD VALUES(1004,'TV02',10)
INSERT INTO CTHD VALUES(1004,'TV03',10)
INSERT INTO CTHD VALUES(1004,'TV04',10)
INSERT INTO CTHD VALUES(1005,'TV05',50)
INSERT INTO CTHD VALUES(1005,'TV06',50)
INSERT INTO CTHD VALUES(1006,'TV07',20)
INSERT INTO CTHD VALUES(1006,'ST01',30)
INSERT INTO CTHD VALUES(1006,'ST02',10)
INSERT INTO CTHD VALUES(1007,'ST03',10)
INSERT INTO CTHD VALUES(1008,'ST04',8)
INSERT INTO CTHD VALUES(1009,'ST05',10)
INSERT INTO CTHD VALUES(1010,'TV07',50)
INSERT INTO CTHD VALUES(1010,'ST07',50)
INSERT INTO CTHD VALUES(1010,'ST08',100)
INSERT INTO CTHD VALUES(1010,'ST04',50)
INSERT INTO CTHD VALUES(1010,'TV03',100)
INSERT INTO CTHD VALUES(1011,'ST06',50)
INSERT INTO CTHD VALUES(1012,'ST07',3)
INSERT INTO CTHD VALUES(1013,'ST08',5)
INSERT INTO CTHD VALUES(1014,'BC02',80)
INSERT INTO CTHD VALUES(1014,'BB02',100)
INSERT INTO CTHD VALUES(1014,'BC04',60)
INSERT INTO CTHD VALUES(1014,'BB01',50)
INSERT INTO CTHD VALUES(1015,'BB02',30)
INSERT INTO CTHD VALUES(1015,'BB03',7)
INSERT INTO CTHD VALUES(1016,'TV01',5)
INSERT INTO CTHD VALUES(1017,'TV02',1)
INSERT INTO CTHD VALUES(1017,'TV03',1)
INSERT INTO CTHD VALUES(1017,'TV04',5)
INSERT INTO CTHD VALUES(1018,'ST04',6)
INSERT INTO CTHD VALUES(1019,'ST05',1)
INSERT INTO CTHD VALUES(1019,'ST06',2)
INSERT INTO CTHD VALUES(1020,'ST07',10)
INSERT INTO CTHD VALUES(1021,'ST08',5)
INSERT INTO CTHD VALUES(1021,'TV01',7)
INSERT INTO CTHD VALUES(1021,'TV02',10)
INSERT INTO CTHD VALUES(1022,'ST07',1)
INSERT INTO CTHD VALUES(1023,'ST04',6)
SELECT *FROM CTHD



ALTER TABLE HOADON ADD  CONSTRAINT MAKH_FK FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)
ALTER TABLE HOADON ADD CONSTRAINT MANV_FK FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
ALTER TABLE CTHD ADD CONSTRAINT SOHD_FK FOREIGN KEY (SOHD) REFERENCES HOADON(SOHD)
ALTER TABLE CTHD ADD CONSTRAINT MASP_FK FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)

ALTER TABLE SANPHAM ADD GHICHU VARCHAR(20)

ALTER TABLE KHACHHANG ADD LOAIKH TINYINT

ALTER TABLE SANPHAM ALTER COLUMN GHICHU VARCHAR(100)

ALTER TABLE SANPHAM DROP COLUMN GHICHU

ALTER TABLE KHACHHANG ALTER COLUMN LOAIKH VARCHAR(12)
ALTER TABLE KHACHHANG ADD CONSTRAINT LOAIKH_CHK_ CHECK (LOAIKH IN ('Vang lai', 'Thuong xuyen', 'Vip'))

ALTER TABLE SANPHAM ADD CONSTRAINT DVT_CHK CHECK (DVT IN ('cay', 'hop', 'cai', 'quyen', 'chuc'))

ALTER TABLE SANPHAM ADD CONSTRAINT GIA_CHK CHECK (GIA >= 500)

ALTER TABLE KHACHHANG ADD CONSTRAINT NGDK_CHK CHECK (NGDK > NGSINH)


-- I.11.	
CREATE TRIGGER TRG_HD_KH ON HOADON FOR INSERT
AS
BEGIN
	DECLARE @NGHD SMALLDATETIME, @NGDK SMALLDATETIME, @MAKH CHAR(4)
	SELECT @NGHD = NGHD, @MAKH = MAKH FROM INSERTED
	SELECT	@NGDK = NGDK FROM KHACHHANG WHERE MAKH = @MAKH

	PRINT @NGHD 
	PRINT @NGDK

	IF (@NGHD >= @NGDK)
		PRINT N'Thêm mới một hóa đơn thành công.'
	ELSE
	BEGIN
		PRINT N'Lỗi: Ngày mua hàng của một khách hàng thành viên sẽ lớn hơn hoặc bằng ngày khách hàng đó đăng ký thành viên.'
		ROLLBACK TRANSACTION
	END
END


INSERT INTO HOADON(SOHD, NGHD, MAKH, MANV, TRIGIA) VALUES('1024', '22/07/2005', 'KH01', 'NV01', '320000')
delete from HOADON where SOHD = '1024'


-- I.12.	
CREATE TRIGGER TRG_HD_NV ON HOADON FOR INSERT
AS
BEGIN
	DECLARE @NGHD SMALLDATETIME, @NGVL SMALLDATETIME, @MANV CHAR(4)
	SELECT @NGHD = NGHD, @MANV = MANV FROM INSERTED
	SELECT	@NGVL = NGVL FROM NHANVIEN WHERE MANV = @MANV

	IF (@NGHD >= @NGVL)
		PRINT N'Thêm mới một hóa đơn thành công.'
	ELSE
	BEGIN
		PRINT N'Lỗi: Ngày bán hàng của một nhân viên phải lớn hơn hoặc bằng ngày nhân viên đó vào làm.'
		ROLLBACK TRANSACTION
	END
END


-- I.13.
CREATE TRIGGER TRG_HD_CTHD ON HOADON FOR INSERT
AS
BEGIN
	DECLARE @SOHD INT, @COUNT_SOHD INT
	SELECT @SOHD = SOHD FROM INSERTED
	SELECT @COUNT_SOHD = COUNT(SOHD) FROM CTHD WHERE SOHD = @SOHD

	IF (@COUNT_SOHD >= 1)
		PRINT N'Thêm mới một hóa đơn thành công.'
	ELSE
	BEGIN
		PRINT N'Lỗi: Mỗi một hóa đơn phải có ít nhất một chi tiết hóa đơn.'
		ROLLBACK TRANSACTION
	END
END


-- I.14.	
CREATE TRIGGER TRG_CTHD ON CTHD FOR INSERT, DELETE
AS
BEGIN
	DECLARE @SOHD INT, @TONGGIATRI INT

	SELECT @TONGGIATRI = SUM(SL * GIA), @SOHD = SOHD 
	FROM INSERTED INNER JOIN SANPHAM
	ON INSERTED.MASP = SANPHAM.MASP
	GROUP BY SOHD

	UPDATE HOADON
	SET TRIGIA += @TONGGIATRI
	WHERE SOHD = @SOHD
END


CREATE TRIGGER TR_DEL_CTHD ON CTHD FOR DELETE
AS
BEGIN
	DECLARE @SOHD INT, @GIATRI INT

	SELECT @SOHD = SOHD, @GIATRI = SL * GIA 
	FROM DELETED INNER JOIN SANPHAM 
	ON SANPHAM.MASP = DELETED.MASP

	UPDATE HOADON
	SET TRIGIA -= @GIATRI
	WHERE SOHD = @SOHD
END


-- II.2
SELECT * INTO SANPHAM1 FROM SANPHAM
SELECT * INTO KHACHHANG1 FROM KHACHHANG

-- II.3
UPDATE SANPHAM1
SET Gia = 1.05 * Gia
WHERE NuocSX = 'Thai Lan'

-- II.4
UPDATE SANPHAM1
SET GIA = 0.95 * GIA
WHERE NUOCSX = 'Trung Quoc' AND GIA <= 10000

-- II.5
UPDATE KHACHHANG1
SET LOAIKH = 'Vip'
WHERE (NGDK < '1/1/2007' AND DOANHSO >= 10000000)
OR (NGDK >= '1/1/2007' AND DOANHSO >= 2000000)

-- III.1
SELECT MaSP, TenSP
FROM SanPham
WHERE NuocSX = 'Trung Quoc'

-- III.2 
SELECT MaSP, TenSP
FROM SanPham
WHERE DVT IN ('cay', 'quyen')

-- III.3 
SELECT MaSP, TenSP
FROM SanPham
WHERE MaSP LIKE 'B%01'

-- III.4 
SELECT MaSP, TenSP
FROM SanPham
WHERE 
	NuocSX = 'Trung Quoc'
	AND Gia BETWEEN 30000 AND 40000

-- III.5 
SELECT MaSP, TenSP
FROM SanPham
WHERE 
	NuocSX IN ('Trung Quoc', 'Thai Lan')
	AND Gia BETWEEN 30000 AND 40000

-- III.6 
SELECT SoHD, TriGia
FROM HoaDon
WHERE NgHD IN ('1/1/2007', '2/1/2007')

-- III.7 
SELECT SoHD, TriGia
FROM HoaDon
WHERE MONTH(NgHD) = 1 AND YEAR(NgHD) = 2007
ORDER BY NgHD ASC, TriGia DESC

-- III.8 
SELECT DISTINCT KhachHang.MaKH, HoTen
FROM KhachHang, HoaDon
WHERE 
	KhachHang.MaKH = HoaDon.MaKH 
	AND NgHD = '1/1/2007'

-- III.9 
SELECT SoHD, TriGia
FROM HoaDon, NhanVien
WHERE
	HoaDon.MaNV = NhanVien.MaNV
	AND HoTen = 'Nguyen Van B'
	AND NgHD = '28/10/2006'

-- III.10 
SELECT DISTINCT SanPham.MaSP, TenSP
FROM SanPham, CTHD, KhachHang, HoaDon
WHERE
	CTHD.MaSP = SanPham.MaSP
	AND CTHD.SoHD = HoaDon.SoHD
	AND HoaDon.MaKH = KhachHang.MaKH
	AND HoTen = 'Nguyen Van A'
	AND MONTH(NgHD) = 10 AND YEAR(NgHD) = 2006

-- III.11 
SELECT DISTINCT SoHD
FROM CTHD
WHERE MaSP IN ('BB01', 'BB02')

-- III.12
SELECT DISTINCT SoHD
FROM CTHD
WHERE 
	MaSP IN ('BBO1','BB02')
	AND SL BETWEEN 10 AND 20

-- III.13
SELECT DISTINCT SoHD
FROM CTHD
WHERE MaSP = 'BB01' AND SL BETWEEN 10 AND 20
INTERSECT
(
	SELECT DISTINCT SoHD
	FROM CTHD
	WHERE MaSP = 'BB02' AND SL BETWEEN 10 AND 20
)

-- III.14 
SELECT DISTINCT SanPham.MaSP, TenSP
FROM HoaDon, SanPham, CTHD
WHERE
	HoaDon.SoHD = CTHD.SoHD
	AND CTHD.MaSP = SanPham.MaSP
	AND (NuocSX = 'Trung Quoc'
	OR NgHD = '1/1/2007')

-- III.15
SELECT MaSP, TenSP
FROM SanPham
WHERE MaSP NOT IN (SELECT MaSP FROM CTHD)

-- III.16 
SELECT MaSP, TenSP
FROM SanPham
WHERE MaSP NOT IN
(
	SELECT MaSP 
	FROM CTHD, HoaDon
	WHERE 
		CTHD.SoHD = HoaDon.SoHD
		AND YEAR(NgHD) = 2006
)

-- III.17  
SELECT MaSP, TenSP
FROM SanPham
WHERE
	NuocSX = 'Trung Quoc'
	AND MaSP NOT IN
	(
		SELECT MaSP 
		FROM CTHD, HoaDon
		WHERE 
			CTHD.SoHD = HoaDon.SoHD
			AND YEAR(NgHD) = 2006
	)

-- III.18 
SELECT SoHD
FROM HoaDon
WHERE NOT EXISTS
(
	SELECT *
	FROM SanPham
	WHERE NuocSX = 'Singapore'
	AND NOT EXISTS
	(
		SELECT *
		FROM CTHD
		WHERE CTHD.SoHD = HoaDon.SoHD
		AND CTHD.MaSP = SanPham.MaSP
	)
)
-- 20.	Có bao nhiêu hóa đơn không phải của khách hàng đăng ký thành viên mua?
SELECT COUNT(*) FROM HOADON
WHERE MAKH NOT IN(
	SELECT MAKH FROM KHACHHANG 
	WHERE KHACHHANG.MAKH = HOADON.MAKH
)
GO

-- 21.	Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.
SELECT COUNT(DISTINCT MASP) 
FROM CTHD CT INNER JOIN HOADON HD
ON CT.SOHD = HD.SOHD
WHERE YEAR(NGHD) = '2006'
GO

-- 22.	Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu ?
SELECT MIN(TRIGIA) GIAMIN, MAX(TRIGIA) GIAMAX FROM HOADON
GO

-- 23.	Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?
SELECT AVG(TRIGIA) FROM HOADON WHERE YEAR(NGHD) = '2006'
GO

-- 24.	Tính doanh thu bán hàng trong năm 2006.
SELECT SUM(TRIGIA) FROM HOADON WHERE YEAR(NGHD) = '2006'
GO

-- 25.	Tìm số hóa đơn có trị giá cao nhất trong năm 2006.
SELECT SOHD FROM HOADON
WHERE YEAR(NGHD) = '2006' AND TRIGIA = (
	SELECT MAX(TRIGIA) FROM HOADON
)
GO

-- 26.	Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006.
SELECT HOTEN FROM HOADON HD INNER JOIN KHACHHANG KH
ON HD.MAKH = KH.MAKH
WHERE YEAR(NGHD) = '2006' AND TRIGIA = (
	SELECT MAX(TRIGIA) FROM HOADON
)
GO

-- 27.	In ra danh sách 3 khách hàng (MAKH, HOTEN) có doanh số cao nhất.
SELECT TOP 3 MAKH, HOTEN FROM KHACHHANG ORDER BY DOANHSO DESC
GO

-- 28.	In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.
SELECT MASP, TENSP FROM SANPHAM
WHERE GIA IN(
	SELECT DISTINCT TOP 3 GIA FROM SANPHAM
	ORDER BY GIA DESC
)
GO

-- 29.	In ra danh sách các sản phẩm (MASP, TENSP) do “Thai Lan” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của tất cả các sản phẩm).
SELECT MASP, TENSP FROM SANPHAM
WHERE NUOCSX = 'Thai Lan' AND GIA IN(
	SELECT DISTINCT TOP 3 GIA FROM SANPHAM
	ORDER BY GIA DESC
)
GO

-- 30.	In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của sản phẩm do “Trung Quoc” sản xuất).
SELECT MASP, TENSP FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc' AND GIA IN(
	SELECT DISTINCT TOP 3 GIA FROM SANPHAM
	WHERE NUOCSX = 'Trung Quoc'
	ORDER BY GIA DESC
)
GO

-- 31.	* In ra danh sách 3 khách hàng có doanh số cao nhất (sắp xếp theo kiểu xếp hạng).
SELECT TOP 3 MAKH, HOTEN, RANK() OVER (ORDER BY DOANHSO DESC) RANK_KH FROM KHACHHANG
GO

-- 32.	Tính tổng số sản phẩm do “Trung Quoc” sản xuất.
SELECT COUNT(MASP) FROM SANPHAM WHERE NUOCSX = 'Trung Quoc'
GO

-- 33.	Tính tổng số sản phẩm của từng nước sản xuất.
SELECT NUOCSX, COUNT(MASP) SOSP FROM SANPHAM GROUP BY NUOCSX
GO

-- 34.	Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm.
SELECT NUOCSX, MAX(GIA) GIAMAX, MIN(GIA) GIAMIN, AVG(GIA) TRUNGBINH FROM SANPHAM GROUP BY NUOCSX
GO

-- 35.	Tính doanh thu bán hàng mỗi ngày.
SELECT NGHD, SUM(TRIGIA) DOANHTHU FROM HOADON GROUP BY NGHD
GO

-- 36.	Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006.
SELECT  CT.MASP, SUM(SL) SL
FROM CTHD CT INNER JOIN HOADON HD 
ON CT.SOHD = HD.SOHD
WHERE YEAR(NGHD) = '2006' AND MONTH(NGHD) = '10'
GROUP BY CT.MASP
GO

-- 37.	Tính doanh thu bán hàng của từng tháng trong năm 2006.
SELECT MONTH(NGHD) THANG, SUM(TRIGIA) DOANHTHU
FROM HOADON 
WHERE YEAR(NGHD) = '2006'
GROUP BY MONTH(NGHD)
GO

-- 38.	Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau.
SELECT SOHD FROM CTHD
GROUP BY SOHD 
HAVING COUNT(DISTINCT MASP) >= 4
GO

-- 39.	Tìm hóa đơn có mua 3 sản phẩm do “Viet Nam” sản xuất (3 sản phẩm khác nhau).
SELECT SOHD FROM CTHD CT INNER JOIN SANPHAM SP
ON CT.MASP = SP.MASP
WHERE NUOCSX = 'Viet Nam'
GROUP BY SOHD 
HAVING COUNT(DISTINCT CT.MASP) = 3
GO

-- 40.	Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất. 
SELECT MAKH, HOTEN FROM (
	SELECT HD.MAKH, HOTEN, RANK() OVER (ORDER BY COUNT(HD.MAKH) DESC) RANK_SOLAN 
	FROM HOADON HD INNER JOIN KHACHHANG KH 
	ON HD.MAKH = KH.MAKH
	GROUP BY HD.MAKH, HOTEN
) A
WHERE RANK_SOLAN = 1
GO

-- 41.	Tháng mấy trong năm 2006, doanh số bán hàng cao nhất ?
SELECT THANG FROM (
	SELECT MONTH(NGHD) THANG, RANK() OVER (ORDER BY SUM(TRIGIA) DESC) RANK_TRIGIA FROM HOADON
	WHERE YEAR(NGHD) = '2006' 
	GROUP BY MONTH(NGHD)
) A
WHERE RANK_TRIGIA = 1
GO

-- 42.	Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006.
SELECT A.MASP, TENSP FROM (
	SELECT MASP, RANK() OVER (ORDER BY SUM(SL)) RANK_SL
	FROM CTHD CT INNER JOIN HOADON HD
	ON CT.SOHD = HD.SOHD
	WHERE YEAR(NGHD) = '2006'
	GROUP BY MASP
) A INNER JOIN SANPHAM SP
ON A.MASP = SP.MASP
WHERE RANK_SL = 1
GO

-- 43.	*Mỗi nước sản xuất, tìm sản phẩm (MASP,TENSP) có giá bán cao nhất.
SELECT NUOCSX, MASP, TENSP FROM (
	SELECT NUOCSX, MASP, TENSP, GIA, RANK() OVER (PARTITION BY NUOCSX ORDER BY GIA DESC) RANK_GIA FROM SANPHAM
) A 
WHERE RANK_GIA = 1
GO

-- 44.	Tìm nước sản xuất sản xuất ít nhất 3 sản phẩm có giá bán khác nhau.
SELECT NUOCSX FROM SANPHAM 
GROUP BY NUOCSX
HAVING COUNT(DISTINCT GIA) >= 3
GO

-- 45.	*Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất.
SELECT MAKH, HOTEN FROM (
	SELECT TOP 10 HD.MAKH, HOTEN, DOANHSO, RANK() OVER (ORDER BY COUNT(HD.MAKH) DESC) RANK_SOLAN 
	FROM HOADON HD INNER JOIN KHACHHANG KH 
	ON HD.MAKH = KH.MAKH
	GROUP BY HD.MAKH, HOTEN, DOANHSO
	ORDER BY DOANHSO DESC
) A
WHERE RANK_SOLAN = 1
GO