/*CREAT TABLE*/

CREATE TABLE NHACUNGCAP (
MaNhaCC NVARCHAR(255) PRIMARY KEY,
TenNhaCungCap NVARCHAR(255) NULL,
DiaChi NVARCHAR(255) NULL,
SoDT NVARCHAR(255) NULL,
MaSoThue NVARCHAR(255) NULL
)
GO
CREATE TABLE LOAIDICHVU (
MaLoaiDV NVARCHAR(255) PRIMARY KEY,
TenLoaiDV NVARCHAR(255) NULL
)
GO
CREATE TABLE MUCPHI(
MaMP NVARCHAR(255) PRIMARY KEY,
DonGia NVARCHAR(255) NULL,
MoTa NVARCHAR(255) NULL)
GO
CREATE TABLE DONGXE (
DongXe NVARCHAR(255) PRIMARY KEY,
HangXe NVARCHAR(255) NULL,
SoChoNgoi NVARCHAR(255) NULL)
GO
CREATE TABLE DANGKYCUNGCAP(
MaDKCC NVARCHAR(255) PRIMARY KEY,
MaNhaCC NVARCHAR(255) NOT NULL,
MaLoaiDV NVARCHAR(255) NOT NULL,
DongXe NVARCHAR(255) NOT NULL,
MaMP NVARCHAR(255) NOT NULL,
NgayBatDauCungCap NVARCHAR(255) NULL,
NgayKetThucCungCap NVARCHAR(255) NULL,
SoLuongXeDangKy NVARCHAR(255) NULL)


/*CREAT DIAGRAM
--nhiều trước 1 sau
AlTER TABLE (tênBảngNhiều)
ADD CONSTRAINT FK_Products_suppliers(tên khóa tùy chọn)
FOREIGN KEY (Thuộc Tính Chung)
REFERENCES (TênBảngít)(ThuộcTínhChung)
ON UPDATE CASCADE
ON DELETE NO ACTION*/

ALTER TABLE dbo.DANGKYCUNGCAP
ADD CONSTRAINT FK_DKCC_NCC
FOREIGN KEY (MaNhaCC)
REFERENCES dbo.NHACUNGCAP(MaNhaCC)
ON UPDATE CASCADE
ON DELETE NO ACTION
/**/
ALTER TABLE dbo.DANGKYCUNGCAP
ADD CONSTRAINT FK_DKCC_LDV
FOREIGN KEY (MaLoaiDV)
REFERENCES dbo.LOAIDICHVU(MaLoaiDV)
ON UPDATE CASCADE
ON DELETE NO ACTION
/**/
ALTER TABLE dbo.DANGKYCUNGCAP
ADD CONSTRAINT FK_DKCC_MP
FOREIGN KEY (MaMP)
REFERENCES dbo.MUCPHI(MaMP)
ON UPDATE CASCADE
ON DELETE NO ACTION
/**/
ALTER TABLE dbo.DANGKYCUNGCAP
ADD CONSTRAINT FK_DKCC_DX
FOREIGN KEY (DongXe)
REFERENCES dbo.DONGXE(DongXe)
ON UPDATE CASCADE
ON DELETE NO ACTION

GO
/*Inser Data*/
/*NHACUNGCAP*/
INSERT dbo.NHACUNGCAP( MaNhaCC ,TenNhaCungCap ,DiaChi ,SoDT ,MaSoThue) 
VALUES (N'NCC001', N'Cty TNHH Toàn Pháp', N'Hai Chau', N'05113999888',N'568941')
INSERT dbo.NHACUNGCAP( MaNhaCC ,TenNhaCungCap ,DiaChi ,SoDT ,MaSoThue) 
VALUES (N'NCC002', N'Cty Cổ Phần Đông Du', N'Lien Chieu', N'05113999889',N'456789')
INSERT dbo.NHACUNGCAP( MaNhaCC ,TenNhaCungCap ,DiaChi ,SoDT ,MaSoThue) 
VALUES (N'NCC003', N'Ông Nguyễn Văn A', N'Hoa Thuan', N'05113999889',N'321456')
INSERT dbo.NHACUNGCAP( MaNhaCC ,TenNhaCungCap ,DiaChi ,SoDT ,MaSoThue) 
VALUES (N'NCC004', N'Cty cổ phần toàn cầu xanh', N'Lien Chieu', N'05113999889',N'513364')
INSERT dbo.NHACUNGCAP( MaNhaCC ,TenNhaCungCap ,DiaChi ,SoDT ,MaSoThue) 
VALUES (N'NCC005', N'Cty TNHH AMA', N'Thanh Ke',N'05113999889',N'546546')
INSERT dbo.NHACUNGCAP( MaNhaCC ,TenNhaCungCap ,DiaChi ,SoDT ,MaSoThue) 
VALUES (N'NCC006', N'Bà Trần Thị Bích Vân', N'Lien Chieu', N'05113999889',N'524545')
INSERT dbo.NHACUNGCAP( MaNhaCC ,TenNhaCungCap ,DiaChi ,SoDT ,MaSoThue) 
VALUES (N'NCC007', N'Cty TNHH Phan Thành', N'Thanh Khe', N'05113999889',N'113021')
INSERT dbo.NHACUNGCAP( MaNhaCC ,TenNhaCungCap ,DiaChi ,SoDT ,MaSoThue) 
VALUES (N'NCC008', N'ông Phan đình nam', N'Hoa Thuan', N'05113999889',N'121230')
INSERT dbo.NHACUNGCAP( MaNhaCC ,TenNhaCungCap ,DiaChi ,SoDT ,MaSoThue) 
VALUES (N'NCC009', N'Tập đoàn đông nam á', N'Lien Chieu', N'05113999889',N'5336554')
INSERT dbo.NHACUNGCAP( MaNhaCC ,TenNhaCungCap ,DiaChi ,SoDT ,MaSoThue) 
VALUES (N'NCC010', N'Cty cổ phần rạng đông', N'Lien Chieu', N'05113569654',N'187864')
/*LOAIDICHVU*/
INSERT INTO dbo.LOAIDICHVU
        ( MaLoaiDV, TenLoaiDV )
VALUES  ( N'DV01', -- MaLoaiDV - nvarchar(255)
          N'Dịch Vụ Xe TAXI'  -- TenLoaiDV - nvarchar(255)
          )
INSERT INTO dbo.LOAIDICHVU
        ( MaLoaiDV, TenLoaiDV )
VALUES  ( N'DV02', -- MaLoaiDV - nvarchar(255)
          N'Dịch Vụ xe buýt công cộng theo tuyến cố định'  -- TenLoaiDV - nvarchar(255)
          )
INSERT INTO dbo.LOAIDICHVU
        ( MaLoaiDV, TenLoaiDV )
VALUES  ( N'DV03', -- MaLoaiDV - nvarchar(255)
          N'Dịch Vụ xe cho thuê theo hợp đồng'  -- TenLoaiDV - nvarchar(255)
          )
/*MUCPHI*/

INSERT INTO dbo.MUCPHI
        ( MaMP, DonGia, MoTa )
VALUES  ( N'MP01', -- MaMP - nvarchar(255)
          N'10000', -- DonGia - nvarchar(255)
          N'áp dụng từ 1/2015'  -- MoTa - nvarchar(255)
          )
INSERT INTO dbo.MUCPHI
        ( MaMP, DonGia, MoTa )
VALUES  ( N'MP02', -- MaMP - nvarchar(255)
          N'15000', -- DonGia - nvarchar(255)
          N'áp dụng từ 2/2015'  -- MoTa - nvarchar(255)
          )
INSERT INTO dbo.MUCPHI
        ( MaMP, DonGia, MoTa )
VALUES  ( N'MP03', -- MaMP - nvarchar(255)
          N'20000', -- DonGia - nvarchar(255)
          N'áp dụng từ 1/2010'  -- MoTa - nvarchar(255)
          )
INSERT INTO dbo.MUCPHI
        ( MaMP, DonGia, MoTa )
VALUES  ( N'MP04', -- MaMP - nvarchar(255)
          N'25000', -- DonGia - nvarchar(255)
          N'áp dụng từ 2/2011'  -- MoTa - nvarchar(255)
          )
/*DONGXE*/
INSERT INTO dbo.DONGXE
        ( DongXe, HangXe, SoChoNgoi )
VALUES  ( N'Hiace', -- DongXe - nvarchar(255)
          N'Toyota', -- HangXe - nvarchar(255)
          N'16'  -- SoChoNgoi - nvarchar(255)
          )
INSERT INTO dbo.DONGXE
        ( DongXe, HangXe, SoChoNgoi )
VALUES  ( N'Vios', -- DongXe - nvarchar(255)
          N'Toyota', -- HangXe - nvarchar(255)
          N'5'  -- SoChoNgoi - nvarchar(255)
          )
 INSERT INTO dbo.DONGXE
        ( DongXe, HangXe, SoChoNgoi )
VALUES  ( N'Escape', -- DongXe - nvarchar(255)
          N'Ford', -- HangXe - nvarchar(255)
          N'5'  -- SoChoNgoi - nvarchar(255)
          )
 INSERT INTO dbo.DONGXE
        ( DongXe, HangXe, SoChoNgoi )
VALUES  ( N'Cerato', -- DongXe - nvarchar(255)
          N'KIA', -- HangXe - nvarchar(255)
          N'7'  -- SoChoNgoi - nvarchar(255)
          )
 INSERT INTO dbo.DONGXE
        ( DongXe, HangXe, SoChoNgoi )
VALUES  ( N'Forte', -- DongXe - nvarchar(255)
          N'KIA', -- HangXe - nvarchar(255)
          N'5'  -- SoChoNgoi - nvarchar(255)
          )
INSERT INTO dbo.DONGXE
        ( DongXe, HangXe, SoChoNgoi )
VALUES  ( N'Starex', -- DongXe - nvarchar(255)
          N'Huyndai', -- HangXe - nvarchar(255)
          N'7'  -- SoChoNgoi - nvarchar(255)
          )
INSERT INTO dbo.DONGXE
        ( DongXe, HangXe, SoChoNgoi )
VALUES  ( N'Grand-i10', -- DongXe - nvarchar(255)
          N'Huyndai', -- HangXe - nvarchar(255)
          N'7'  -- SoChoNgoi - nvarchar(255)
          )


/*DANGKYCUNGCAP*/
				INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK001' , -- MaDKCC - nvarchar(255)
           N'NCC001' , -- MaNhaCC - nvarchar(255)
           N'DV01' , -- MaLoaiDV - nvarchar(255)
           N'Hiace' , -- DongXe - nvarchar(255)
           N'MP01' , -- MaMP - nvarchar(255)
           N'2015-11-20' , -- NgayBatDauCungCap - nvarchar(255)
           N'2016-11-20' , -- NgayKetThucCungCap - nvarchar(255)
           N'4'  -- SoLuongXeDangKy - nvarchar(255)
         )
				INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK002' , -- MaDKCC - nvarchar(255)
           N'NCC002' , -- MaNhaCC - nvarchar(255)
           N'DV02' , -- MaLoaiDV - nvarchar(255)
           N'Vios' , -- DongXe - nvarchar(255)
           N'MP02' , -- MaMP - nvarchar(255)
           N'2015-11-20' , -- NgayBatDauCungCap - nvarchar(255)
           N'2017-11-20' , -- NgayKetThucCungCap - nvarchar(255)
           N'3'  -- SoLuongXeDangKy - nvarchar(255)
         )
				INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK003' , -- MaDKCC - nvarchar(255)
           N'NCC003' , -- MaNhaCC - nvarchar(255)
           N'DV03' , -- MaLoaiDV - nvarchar(255)
           N'Escape' , -- DongXe - nvarchar(255)
           N'MP03' , -- MaMP - nvarchar(255)
           N'2017-11-20' , -- NgayBatDauCungCap - nvarchar(255)
           N'2018-11-20' , -- NgayKetThucCungCap - nvarchar(255)
           N'5'  -- SoLuongXeDangKy - nvarchar(255)
         )
				INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK004' , -- MaDKCC - nvarchar(255)
           N'NCC005' , -- MaNhaCC - nvarchar(255)
           N'DV01' , -- MaLoaiDV - nvarchar(255)
           N'Cerato' , -- DongXe - nvarchar(255)
           N'MP04' , -- MaMP - nvarchar(255)
           N'2015-11-20' , -- NgayBatDauCungCap - nvarchar(255)
           N'2019-11-20' , -- NgayKetThucCungCap - nvarchar(255)
           N'7'  -- SoLuongXeDangKy - nvarchar(255)
         )
				 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK005' , -- MaDKCC - nvarchar(255)
           N'NCC002' , -- MaNhaCC - nvarchar(255)
           N'DV02' , -- MaLoaiDV - nvarchar(255)
           N'Forte' , -- DongXe - nvarchar(255)
           N'MP03' , -- MaMP - nvarchar(255)
           N'2019-11-20' , -- NgayBatDauCungCap - nvarchar(255)
           N'2020-11-20' , -- NgayKetThucCungCap - nvarchar(255)
           N'1'  -- SoLuongXeDangKy - nvarchar(255)
         )
				 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK006' , -- MaDKCC - nvarchar(255)
           N'NCC004' , -- MaNhaCC - nvarchar(255)
           N'DV03' , -- MaLoaiDV - nvarchar(255)
           N'Starex' , -- DongXe - nvarchar(255)
           N'MP04' , -- MaMP - nvarchar(255)
           N'2016-11-10' , -- NgayBatDauCungCap - nvarchar(255)
           N'2021-11-20' , -- NgayKetThucCungCap - nvarchar(255)
           N'2'  -- SoLuongXeDangKy - nvarchar(255)
         )
				 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK007' , -- MaDKCC - nvarchar(255)
           N'NCC005' , -- MaNhaCC - nvarchar(255)
           N'DV01' , -- MaLoaiDV - nvarchar(255)
           N'Cerato' , -- DongXe - nvarchar(255)
           N'MP03' , -- MaMP - nvarchar(255)
           N'2015-11-30' , -- NgayBatDauCungCap - nvarchar(255)
           N'2016-11-25' , -- NgayKetThucCungCap - nvarchar(255)
           N'8'  -- SoLuongXeDangKy - nvarchar(255)
         )
				 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK008' , -- MaDKCC - nvarchar(255)
           N'NCC006' , -- MaNhaCC - nvarchar(255)
           N'DV01' , -- MaLoaiDV - nvarchar(255)
           N'Vios' , -- DongXe - nvarchar(255)
           N'MP02' , -- MaMP - nvarchar(255)
           N'2016-02-28' , -- NgayBatDauCungCap - nvarchar(255)
           N'2016-08-15' , -- NgayKetThucCungCap - nvarchar(255)
           N'9'  -- SoLuongXeDangKy - nvarchar(255)
         )
				 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK009' , -- MaDKCC - nvarchar(255)
           N'NCC005' , -- MaNhaCC - nvarchar(255)
           N'DV03' , -- MaLoaiDV - nvarchar(255)
           N'Grand-i10' , -- DongXe - nvarchar(255)
           N'MP02' , -- MaMP - nvarchar(255)
           N'2016-04-27' , -- NgayBatDauCungCap - nvarchar(255)
           N'2016-04-30' , -- NgayKetThucCungCap - nvarchar(255)
           N'10'  -- SoLuongXeDangKy - nvarchar(255)
         )
				 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK010' , -- MaDKCC - nvarchar(255)
           N'NCC006' , -- MaNhaCC - nvarchar(255)
           N'DV01' , -- MaLoaiDV - nvarchar(255)
           N'Forte' , -- DongXe - nvarchar(255)
           N'MP02' , -- MaMP - nvarchar(255)
           N'2015-11-21' , -- NgayBatDauCungCap - nvarchar(255)
           N'2016-02-22' , -- NgayKetThucCungCap - nvarchar(255)
           N'4'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK011' , -- MaDKCC - nvarchar(255)
           N'NCC007' , -- MaNhaCC - nvarchar(255)
           N'DV01' , -- MaLoaiDV - nvarchar(255)
           N'Forte' , -- DongXe - nvarchar(255)
           N'MP01' , -- MaMP - nvarchar(255)
           N'2016-12-25' , -- NgayBatDauCungCap - nvarchar(255)
           N'2017-02-20' , -- NgayKetThucCungCap - nvarchar(255)
           N'5'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK012' , -- MaDKCC - nvarchar(255)
           N'NCC007' , -- MaNhaCC - nvarchar(255)
           N'DV03' , -- MaLoaiDV - nvarchar(255)
           N'Cerato' , -- DongXe - nvarchar(255)
           N'MP01' , -- MaMP - nvarchar(255)
           N'2016-04-14' , -- NgayBatDauCungCap - nvarchar(255)
           N'2017-12-20' , -- NgayKetThucCungCap - nvarchar(255)
           N'6'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK013' , -- MaDKCC - nvarchar(255)
           N'NCC003' , -- MaNhaCC - nvarchar(255)
           N'DV02' , -- MaLoaiDV - nvarchar(255)
           N'Cerato' , -- DongXe - nvarchar(255)
           N'MP01' , -- MaMP - nvarchar(255)
           N'2015-12-21' , -- NgayBatDauCungCap - nvarchar(255)
           N'2016-12-21' , -- NgayKetThucCungCap - nvarchar(255)
           N'8'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK014' , -- MaDKCC - nvarchar(255)
           N'NCC008' , -- MaNhaCC - nvarchar(255)
           N'DV02' , -- MaLoaiDV - nvarchar(255)
           N'Cerato' , -- DongXe - nvarchar(255)
           N'MP01' , -- MaMP - nvarchar(255)
           N'2016-05-20' , -- NgayBatDauCungCap - nvarchar(255)
           N'2016-12-30' , -- NgayKetThucCungCap - nvarchar(255)
           N'1'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK015' , -- MaDKCC - nvarchar(255)
           N'NCC003' , -- MaNhaCC - nvarchar(255)
           N'DV01' , -- MaLoaiDV - nvarchar(255)
           N'Hiace' , -- DongXe - nvarchar(255)
           N'MP02' , -- MaMP - nvarchar(255)
           N'2018-04-24' , -- NgayBatDauCungCap - nvarchar(255)
           N'2019-11-20' , -- NgayKetThucCungCap - nvarchar(255)
           N'6'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK016' , -- MaDKCC - nvarchar(255)
           N'NCC001' , -- MaNhaCC - nvarchar(255)
           N'DV03' , -- MaLoaiDV - nvarchar(255)
           N'Grand-i10' , -- DongXe - nvarchar(255)
           N'MP02' , -- MaMP - nvarchar(255)
           N'2016-06-21' , -- NgayBatDauCungCap - nvarchar(255)
           N'2016-12-21' , -- NgayKetThucCungCap - nvarchar(255)
           N'8'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK017' , -- MaDKCC - nvarchar(255)
           N'NCC002' , -- MaNhaCC - nvarchar(255)
           N'DV03' , -- MaLoaiDV - nvarchar(255)
           N'Cerato' , -- DongXe - nvarchar(255)
           N'MP03' , -- MaMP - nvarchar(255)
           N'2016-09-30' , -- NgayBatDauCungCap - nvarchar(255)
           N'2019-09-30' , -- NgayKetThucCungCap - nvarchar(255)
           N'4'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK018' , -- MaDKCC - nvarchar(255)
           N'NCC008' , -- MaNhaCC - nvarchar(255)
           N'DV03' , -- MaLoaiDV - nvarchar(255)
           N'Escape' , -- DongXe - nvarchar(255)
           N'MP04' , -- MaMP - nvarchar(255)
           N'2017-12-13' , -- NgayBatDauCungCap - nvarchar(255)
           N'2018-09-30' , -- NgayKetThucCungCap - nvarchar(255)
           N'2'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK019' , -- MaDKCC - nvarchar(255)
           N'NCC008' , -- MaNhaCC - nvarchar(255)
           N'DV03' , -- MaLoaiDV - nvarchar(255)
           N'Escape' , -- DongXe - nvarchar(255)
           N'MP03' , -- MaMP - nvarchar(255)
           N'2016-01-24' , -- NgayBatDauCungCap - nvarchar(255)
           N'2016-12-30' , -- NgayKetThucCungCap - nvarchar(255)
           N'8'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK020' , -- MaDKCC - nvarchar(255)
           N'NCC002' , -- MaNhaCC - nvarchar(255)
           N'DV03' , -- MaLoaiDV - nvarchar(255)
           N'Cerato' , -- DongXe - nvarchar(255)
           N'MP04' , -- MaMP - nvarchar(255)
           N'2016-05-03' , -- NgayBatDauCungCap - nvarchar(255)
           N'2017-10-21' , -- NgayKetThucCungCap - nvarchar(255)
           N'7'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK021' , -- MaDKCC - nvarchar(255)
           N'NCC006' , -- MaNhaCC - nvarchar(255)
           N'DV01' , -- MaLoaiDV - nvarchar(255)
           N'Forte' , -- DongXe - nvarchar(255)
           N'MP02' , -- MaMP - nvarchar(255)
           N'2015-01-30' , -- NgayBatDauCungCap - nvarchar(255)
           N'2016-12-30' , -- NgayKetThucCungCap - nvarchar(255)
           N'9'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK022' , -- MaDKCC - nvarchar(255)
           N'NCC002' , -- MaNhaCC - nvarchar(255)
           N'DV02' , -- MaLoaiDV - nvarchar(255)
           N'Cerato' , -- DongXe - nvarchar(255)
           N'MP04' , -- MaMP - nvarchar(255)
           N'2016-07-25' , -- NgayBatDauCungCap - nvarchar(255)
           N'2017-12-30' , -- NgayKetThucCungCap - nvarchar(255)
           N'6'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK023' , -- MaDKCC - nvarchar(255)
           N'NCC002' , -- MaNhaCC - nvarchar(255)
           N'DV01' , -- MaLoaiDV - nvarchar(255)
           N'Forte' , -- DongXe - nvarchar(255)
           N'MP03' , -- MaMP - nvarchar(255)
           N'2017-11-30' , -- NgayBatDauCungCap - nvarchar(255)
           N'2018-05-20' , -- NgayKetThucCungCap - nvarchar(255)
           N'5'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK024' , -- MaDKCC - nvarchar(255)
           N'NCC003' , -- MaNhaCC - nvarchar(255)
           N'DV03' , -- MaLoaiDV - nvarchar(255)
           N'Forte' , -- DongXe - nvarchar(255)
           N'MP04' , -- MaMP - nvarchar(255)
           N'2017-12-23' , -- NgayBatDauCungCap - nvarchar(255)
           N'2019-11-30' , -- NgayKetThucCungCap - nvarchar(255)
           N'8'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 		 INSERT INTO dbo.DANGKYCUNGCAP
         ( MaDKCC ,
           MaNhaCC ,
           MaLoaiDV ,
           DongXe ,
           MaMP ,
           NgayBatDauCungCap ,
           NgayKetThucCungCap ,
           SoLuongXeDangKy
         )
 VALUES  ( N'DK025' , -- MaDKCC - nvarchar(255)
           N'NCC003' , -- MaNhaCC - nvarchar(255)
           N'DV03' , -- MaLoaiDV - nvarchar(255)
           N'Hiace' , -- DongXe - nvarchar(255)
           N'MP02' , -- MaMP - nvarchar(255)
           N'2016-08-24' , -- NgayBatDauCungCap - nvarchar(255)
           N'2017-10-25' , -- NgayKetThucCungCap - nvarchar(255)
           N'1'  -- SoLuongXeDangKy - nvarchar(255)
         )
		 go
/* ======BÀI LÀM======*/
								/*CÂU 1*/
/* 1A) Tạo một khung nhìn có tên là V_NhaCungCap để lấy được thông tin của tất cả
nhà cung cấp có địa chỉ là "Lien Chieu" và đã từng đăng ký cung cấp phương tiện có ngày bắt
đầu đăng ký là "20/11/2015"*/
 CREATE VIEW V_NhaCungCap 
 AS 
	SELECT * FROM dbo.NHACUNGCAP WHERE DiaChi=N'Lien Chieu'
	AND MaNhaCC IN(	SELECT MaNhaCC FROM dbo.DANGKYCUNGCAP WHERE NgayBatDauCungCap='2015-11-20')

GO
SELECT * FROM dbo.V_NhaCungCap 
/* 1B )Thông qua khung nhìn V_NhaCungCap thực hiện cập nhật địa chỉ thành "Thanh
Khe" đối với tất cả các nhà cung cấp được nhìn thấy bởi khung nhìn này.*/
UPDATE dbo.V_NhaCungCap SET DiaChi =N'Thanh Khe'
GO
							/*CÂU 2 Tạo 2 Stored Procedure*/
/*2A) Stored Procedure Sp_1: Dùng để xóa thông tin của một dòng xe nào đó (tức là xóa
1 bản ghi trong bảng DONGXE) với tên dòng xe được truyền vào như một tham số của
Stored Procedure*/
GO
CREATE PROCEDURE Sp_1 @DongXe NVARCHAR(255)
AS
 BEGIN
     DELETE FROM dbo.DONGXE
	 WHERE DongXe=@DongXe
 END

/*Test*/
SELECT * FROM dbo.DANGKYCUNGCAP
DECLARE @test INT
EXECUTE @test=dbo.Sp_1 @DongXe = N'hahaha' -- nvarchar(255)
go
/*2B) Stored Procedure Sp_2: Dùng để bổ sung thêm bản ghi mới vào bảng
DANGKYCUNGCAP với yêu cầu Sp_2 phải thực hiện kiểm tra tính hợp lệ của dữ liệu được
bổ sung, với nguyên tắc là không được trùng khóa chính và đảm bảo toàn vẹn dữ liệu tham
chiếu đến các bảng có liên quan*/
CREATE PROCEDURE SP_2 @MaDKCC NVARCHAR(50),@MaNCC NVARCHAR(50),@MaLDV NVARCHAR(50),@dongxe NVARCHAR(50),@MaMP NVARCHAR(50),
@NgayBatDauCungCap NVARCHAR(50), @NgayKetThucCungCap NVARCHAR(50),@SoLuongXeDangKy NVARCHAR(50)
AS
	BEGIN
	    DECLARE @ncc INT
		--kiem tra MaDKCC nếu MaDKCC nhập vào đã tồn tại trong bảng DKCC thì mới được chèn vào
		SELECT @ncc=COUNT(*)
		FROM dbo.DANGKYCUNGCAP
		WHERE MaDKCC=@MaDKCC
		IF(@ncc>0)
			BEGIN
				PRINT N'Mã DKCC ĐÃ TỒN TẠI !! => KHÔNG THỂ CHÈN'
			 	GOTO KETTHUC
			END
		--kiem tra dongxe nếu dòng xe đã tồn tại ở bảng dòng xe thì mới được phép đưa vào bảng DKCC
		SELECT @ncc=    COUNT(*)
		FROM dbo.DONGXE 
		WHERE DongXe=@dongxe 
				IF(@ncc=0)
					BEGIN
						PRINT N'Mã Dongxe Chưa Tồn tại ở Bảng DONGXE!! => KHÔNG THỂ CHÈN'
						GOTO KETTHUC
					END
				
			--kiểm tra MaDV nếu MaDV nhập vào tồn tại trong bảng MaDV thì mới được quyền insert vào bảng DKCC
			SELECT @ncc=COUNT(*)
			FROM dbo.LOAIDICHVU
			WHERE MaLoaiDV=@MaLDV
				IF(@ncc=0)
					BEGIN
						PRINT N'Mã DichVu Chưa Tồn tại ở Bảng LOAIDICHVU!! => KHÔNG THỂ CHÈN'
						GOTO KETTHUC
					END
			-- kiểm tra mã mức phí nếu mã mức phí nhập vào tồn tại trong bảng thì mới được chèn vào bảng DKCC
			SELECT @ncc=COUNT(*)
			FROM dbo.MUCPHI
			WHERE MaMP=@MaMP
			IF(@ncc=0)
				BEGIN 
					PRINT N'Mã MUCPHI Chưa Tồn tại ở Bảng MUCPHI!! => KHÔNG THỂ CHÈN'
					GOTO KETTHUC
				END
				
			--kiểm tra mã nhà cung cấp nhập vào nếu nó tồn tại trong bảng nhà cc thì mới được phép chèn vào DKCC
			SELECT @ncc=COUNT(*)
			FROM dbo.NHACUNGCAP
			WHERE MaNhaCC=@MaNCC
				IF(@ncc=0)
				BEGIN 
					PRINT N'Mã NHACUNGCAP Chưa Tồn tại ở Bảng NHACUNGCAP!! => KHÔNG THỂ CHÈN'
					GOTO KETTHUC
				END

-- nếu các điều kiện trên đều đúng thì tiến hành insert 
	INSERT INTO dbo.DANGKYCUNGCAP
	(
	    MaDKCC,
	    MaNhaCC,
	    MaLoaiDV,
	    DongXe,
	    MaMP,
	    NgayBatDauCungCap,
	    NgayKetThucCungCap,
	    SoLuongXeDangKy
	)
	VALUES
	( @MaDKCC,@MaNCC,@MaLDV,@dongxe,@MaMP,@NgayBatDauCungCap,@NgayKetThucCungCap,@SoLuongXeDangKy
	    )
			KETTHUC:
	END
GO
/*test*/
DECLARE @test INT
EXECUTE @test=dbo.SP_2 @MaDKCC = N'DK025', -- nvarchar(50) //  khi thực hiện EXECUSE Sẽ báo không chèn được do mã 'DK025' đã tồn tại
    @MaNCC = N'NCC001', -- nvarchar(50)
    @MaLDV = N'DV01', -- nvarchar(50)
    @dongxe = N'Hiace', -- nvarchar(50)
    @MaMP = N'MP01', -- nvarchar(50)
    @NgayBatDauCungCap = N'2016-11-12', -- nvarchar(50)
    @NgayKetThucCungCap = N'2019-11-21', -- nvarchar(50)
    @SoLuongXeDangKy = N'10' -- nvarchar(50)
GO
				/*Câu 3 Viết 2 Trigger cho bảng DANGKYCUNGCAP theo yêu cầu sau:*/
/*3A) Trigger_1: Khi thực hiện xóa bản ghi trong bảng DANGKYCUNGCAP thì hiển
thị tổng số lượng bản ghi còn lại có trong bảng DANGKYCUNGCAP ra giao diện console
của database server*/
CREATE TRIGGER dbo.Trigger_1 
   ON  dbo.DangKyCungCap 
   AFTER DELETE
AS 
BEGIN
    DECLARE @n int
    SELECT @n = COUNT(*) FROM DangKyCungCap
    PRINT N'Số lượng bản ghi còn lại sau khi xoá: ' + CAST(@n AS nvarchar(100))
END
/*Test*/
DELETE FROM dbo.DANGKYCUNGCAP WHERE MaDKCC='DK026'
go
/*3B) Trigger_2: Khi cập nhật giá trị của cột NgayKetThucCungCap, cần kiểm tra xem
thời gian cập nhật có phù hợp hay không, với quy tắc như sau: Khoảng thời gian tính từ
ngày bắt đầu cho thuê đến hết ngày kết thúc cho thuê phải nhỏ hơn 4 năm. Nếu dữ liệu
hợp lệ thì cho phép cập nhật, nếu không thì sẽ hiển thị thông báo "Khoảng thời gian đăng ký
cung cấp phương tiện tính từ ngày bắt đầu cung cấp đến hết ngày kết thúc cung cấp phải nhỏ
hơn 4 năm" ra giao diện console của database server.*/
CREATE TRIGGER Trigger_2
ON dbo.DANGKYCUNGCAP
AFTER UPDATE
AS
BEGIN
	IF UPDATE(NgayKetThucCungCap)
		BEGIN
		   DECLARE @khonghople INT
			SELECT @khonghople=COUNT(*) FROM Inserted 
			WHERE Inserted.NgayBatDauCungCap>Inserted.NgayKetThucCungCap
			IF(@khonghople>0)
			BEGIN
				PRINT N'Ngày Kết Thúc Cung Cấp Phải Lớn Hơn Ngày Bắt Đầu Cung Cấp';
				ROLLBACK TRANSACTION
			END
			DECLARE @namchenhlech INT
			SELECT @namchenhlech=DATEDIFF(YEAR,Inserted.NgayBatDauCungCap,Inserted.NgayKetThucCungCap) FROM Inserted
			IF(@namchenhlech>4)
			BEGIN
				PRINT N'Phải Nhỏ Hơn 4 năm Mới Cho Chèn !!';
				ROLLBACK TRANSACTION
			END
		END
END
SELECT * FROM dbo.DANGKYCUNGCAP
/*Test*/
UPDATE dbo.DANGKYCUNGCAP SET NgayKetThucCungCap='2021-11-21' WHERE MaDKCC='DK001' 
/*Truy Vấn Báo Lỗi Vì Chênh lệch lớn hơn 4 năm*/
UPDATE dbo.DANGKYCUNGCAP SET NgayKetThucCungCap='2014-11-21' WHERE MaDKCC='DK001' 
/*Truy Vấn Báo Lỗi Vì NgayBatDauCungCap nhỏ hơn NgayKetThucCungCap*/
GO
				
							/*Câu 4Tạo 2 User-defined function để thực hiện các yêu cầu sau:*/
/*4A) User-defined function func1: Đếm tổng số lượng xe đã được đăng ký cho thuê với
mức phí là 10.000 VNĐ/km.*/
    CREATE FUNCTION func1()
	RETURNS INT
	AS
		BEGIN
			DECLARE @dem INT
			SELECT @dem=SUM(CONVERT(INT,dbo.DANGKYCUNGCAP.SoLuongXeDangKy)) FROM dbo.DANGKYCUNGCAP 
			INNER JOIN dbo.MUCPHI ON MUCPHI.MaMP = DANGKYCUNGCAP.MaMP
			WHERE dbo.MUCPHI.DonGia=10000
			RETURN @dem
		END
	
GO
SELECT dbo.func1()
SELECT * FROM dbo.DANGKYCUNGCAP INNER JOIN dbo.MUCPHI ON MUCPHI.MaMP = DANGKYCUNGCAP.MaMP
WHERE dbo.MUCPHI.DonGia=10000
GO
/*4B)User-defined function func2: Tính khoảng thời gian dài nhất (kể từ lúc bắt đầu
đăng ký cho thuê đến lúc kết thúc đăng ký cho thuê) mà nhà cung cấp nào đó đã từng thực
hiện đăng ký cho thuê xe. (Lưu ý: Chỉ xét các khoảng thời gian dựa theo từng lần đăng ký
cho thuê xe, không xét trên toàn bộ các lần đăng ký). Mã của nhà cung cấp được truyền vào
như là một tham số của function này*/
  
CREATE FUNCTION func2 
(
    
    @pMaNhaCC nvarchar(6)
)
RETURNS int
AS
BEGIN

    DECLARE @Result int
    SELECT @Result = MAX(DATEDIFF(day, NgayBatDauCungCap, NgayKetThucCungCap))
    FROM            DangKyCungCap
    WHERE        (MaNhaCC = @pMaNhaCC)
    RETURN @Result

END
GO
SELECT dbo.func2('NCC001')
go

					/*Câu 5Tạo Stored Procedure Sp_Xe để tìm những dòng xe đã được các nhà cung cấp (bất
kỳ) đăng ký cho thuê với loại hình dịch vụ là "Dịch vụ xe cho thuê theo hợp đồng" từ đầu
năm 2015 đến hết năm 2016 để xóa thông tin về những dòng xe đó (tức là phải xóa
những bản ghi trong bảng DONGXE có liên quan) và xóa những lần đăng ký cung cấp
cho thuê xe liên quan đến dòng xe đó (tức là phải xóa những bản ghi trong bảng
DANGKYCUNGCAP có liên quan)*/
CREATE PROCEDURE sp_Xe
AS
 BEGIN
	CREATE TABLE DX(
		DongXee NVARCHAR(50)
	)
	INSERT INTO dbo.DX
	        ( DongXee )
	SELECT DISTINCT DongXe FROM dbo.DANGKYCUNGCAP INNER JOIN dbo.LOAIDICHVU ON LOAIDICHVU.MaLoaiDV = DANGKYCUNGCAP.MaloaiDV
	WHERE  (LoaiDichVu.TenLoaiDV = N'Dịch vụ xe cho thuê theo hợp đồng') 
            AND (YEAR(DangKyCungCap.NgayBatDauCungCap) BETWEEN 2015 AND 2016) 
            AND (YEAR(DangKyCungCap.NgayKetThucCungCap) BETWEEN 2015 AND 2016)
	
	DELETE FROM dbo.DANGKYCUNGCAP
	WHERE DongXe IN (SELECT DongXee
					FROM dbo.DX)
	DELETE FROM dbo.DONGXE
	WHERE DongXe IN (SELECT DongXee
					FROM dbo.DX)
 END
 /*Test chưa chạy*/
 SELECT * FROM dbo.DX
 DECLARE @n INT
 EXECUTE @n=dbo.sp_Xe
