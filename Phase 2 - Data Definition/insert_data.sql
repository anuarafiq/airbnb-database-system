/* ============================================================== ENTITY ================================================================ */


/* =============================== USER (SUPERCLASS) ================================= */

INSERT INTO "user" VALUES ('U001','Staff','Ahmad Firdaus','firdaus@mzz.com');
INSERT INTO "user" VALUES ('U002','Staff','Nur Aisyah','aisyah@mzz.com');
INSERT INTO "user" VALUES ('U003','Staff','Daniel Wong','daniel@mzz.com');
INSERT INTO "user" VALUES ('U004','Staff','Siti Khadijah','siti@mzz.com');
INSERT INTO "user" VALUES ('U005','Staff','Kumar Raj','kumar@mzz.com');
INSERT INTO "user" VALUES ('U006','Staff','Farah Nabila','farah@mzz.com');
INSERT INTO "user" VALUES ('U007','Staff','Hafiz Rahman','hafiz@mzz.com');
INSERT INTO "user" VALUES ('U008','Staff','Jason Lim','jason@mzz.com');
INSERT INTO "user" VALUES ('U009','Staff','Aina Sofea','aina@mzz.com');
INSERT INTO "user" VALUES ('U010','Staff','Mohd Azlan','azlan@mzz.com');

INSERT INTO "user" VALUES ('U011','Guest','Ahmad Danish','danish@gmail.com');
INSERT INTO "user" VALUES ('U012','Guest','Nurul Izzah','nurul.izzah@yahoo.com');
INSERT INTO "user" VALUES ('U013','Guest','Siti Aminah','siti.aminah@outlook.com');
INSERT INTO "user" VALUES ('U014','Guest','Mohd Razali','razali.mohd@gmail.com');
INSERT INTO "user" VALUES ('U015','Guest','Tan Wei Keong','tan.weikeong@hotmail.com');
INSERT INTO "user" VALUES ('U016','Guest','Ling Mei Shan','l.meishan@gmail.com');
INSERT INTO "user" VALUES ('U017','Guest','Kavitha Raj','kavitha.raj@ymail.com');
INSERT INTO "user" VALUES ('U018','Guest','Muthu Samy','muthu.samy@icloud.com');
INSERT INTO "user" VALUES ('U019','Guest','Farah Wahida','farah.w@live.com');
INSERT INTO "user" VALUES ('U020','Guest','Khairul Azman','k.azman@gmail.com');

INSERT INTO "user" VALUES ('U021','Host','Chong Wei Seng','cw.seng@gmail.com');
INSERT INTO "user" VALUES ('U022','Host','Sarah Jane','sarah.j@protonmail.com');
INSERT INTO "user" VALUES ('U023','Host','Azlan Shah','azlan.shah@outlook.my');
INSERT INTO "user" VALUES ('U024','Host','Noraini Ahmad','noraini.a@gmail.com');
INSERT INTO "user" VALUES ('U025','Host','Lee Boon Heck','boonheck.lee@gmail.com');
INSERT INTO "user" VALUES ('U026','Host','Prema Devi','prema.devi@gmail.com');
INSERT INTO "user" VALUES ('U027','Host','Wan Mohd Yusof','wan.yusof@yahoo.com');
INSERT INTO "user" VALUES ('U028','Host','Haziq Ibrahim','haziq.ibrahim@gmail.com');
INSERT INTO "user" VALUES ('U029','Host','Michelle Tan','michelle.tan@gmail.com');
INSERT INTO "user" VALUES ('U030','Host','Zulkifli Ali','zulkifli.ali@gmail.com');

/* =============================== STAFF_ROLE ================================= */

INSERT INTO staff_role VALUES ('R001','PMR01','Property Manager','Oversees property operations',6500,1,1,6,9,800,1);
INSERT INTO staff_role VALUES ('R002','AMR02','Assistant Manager','Supports manager duties',4500,1,1,6,9,500,1);
INSERT INTO staff_role VALUES ('R003','FDO03','Front Desk Officer','Handles guest check-ins',3000,0,0,3,8,300,1);
INSERT INTO staff_role VALUES ('R004','MT04','Maintenance Technician','Repairs and maintenance',3200,0,1,3,8,400,1);
INSERT INTO staff_role VALUES ('R005','HK05','Housekeeping Staff','Cleans rooms and facilities',2500,0,0,3,8,200,1);
INSERT INTO staff_role VALUES ('R006','FO06','Finance Officer','Manages payments and billing',4200,0,1,6,8,600,1);
INSERT INTO staff_role VALUES ('R007','SO07','Security Officer','Ensures property security',2800,0,1,3,12,350,1);
INSERT INTO staff_role VALUES ('R008','ITS08','IT Support','Maintains system operations',3800,0,1,6,8,450,1);
INSERT INTO staff_role VALUES ('R009','CS09','Customer Service Exec','Handles customer issues',3300,0,0,3,8,300,1);
INSERT INTO staff_role VALUES ('R010','OP10','Operations Supervisor','Supervises daily operations',4800,1,1,6,9,700,1);


/* =============================== PROPERTY_TYPE ================================= */

INSERT INTO property_type VALUES ('PT001','APT','Apartment','High-rise residential apartment',4,150,DATE '2023-01-01','Active',0.06,50,'Standard unit');
INSERT INTO property_type VALUES ('PT002','CON','Condominium','Premium condo unit',5,220,DATE '2023-02-15','Inactive',0.06,80,'High-end');
INSERT INTO property_type VALUES ('PT003','BNG','Bungalow','Standalone landed house',8,300,DATE '2022-11-01','Active',0.06,120,'Family stay');
INSERT INTO property_type VALUES ('PT004','SHP','Shoplot','Mixed commercial building',3,180,DATE '2023-03-22','Active',0.08,60,'Business area');
INSERT INTO property_type VALUES ('PT005','STD','Studio','Single room studio',2,120,DATE '2023-05-10','Inactive',0.06,40,'Compact stay');
INSERT INTO property_type VALUES ('PT006','THS','Townhouse','Multi-level house',6,200,DATE '2023-06-14','Inactive',0.06,90,'Long stay');
INSERT INTO property_type VALUES ('PT007','DPX','Duplex','Two-storey unit',6,260,DATE '2023-07-20','Active',0.06,100,'City view');
INSERT INTO property_type VALUES ('PT008','VLL','Villa','Luxury villa',10,400,DATE '2022-12-01','Active',0.08,150,'Luxury stay');
INSERT INTO property_type VALUES ('PT009','WHS','Warehouse','Industrial style stay',4,250,DATE '2021-09-01','Inactive',0.08,70,'Converted unit');
INSERT INTO property_type VALUES ('PT010','PNT','Penthouse','High-rise luxury unit',6,350,DATE '2023-08-01','Inactive',0.06,130,'Premium');


/* =============================== AMENITY ================================= */

INSERT INTO amenity VALUES ('AM001','POOL','Swimming Pool','Outdoor pool','Recreation',0,0,'Active',DATE '2023-01-01',DATE '2024-01-01','Shared');
INSERT INTO amenity VALUES ('AM002','GYM','Gym','Fitness centre','Health',0,0,'Active',DATE '2023-02-01',DATE '2024-01-05','Fully equipped');
INSERT INTO amenity VALUES ('AM003','PARK','Parking','Covered parking','Utility',20,0,'Active',DATE '2022-10-10',DATE '2023-12-01','Limited');
INSERT INTO amenity VALUES ('AM004','LIFT','Elevator','Lift access','Utility',0,0,'Active',DATE '2023-03-15',DATE '2024-01-10','All floors');
INSERT INTO amenity VALUES ('AM005','SEC','Security','24h security','Safety',0,0,'Active',DATE '2022-09-01',DATE '2023-11-15','Guarded');
INSERT INTO amenity VALUES ('AM006','PLAY','Playground','Kids play area','Utility',0,0,'Active',DATE '2023-04-20',DATE '2024-01-20','Outdoor');
INSERT INTO amenity VALUES ('AM007','WIFI','WiFi','High speed internet','Utility',15,0,'Active',DATE '2023-05-01',DATE '2024-01-25','Fiber');
INSERT INTO amenity VALUES ('AM008','AC','Air Conditioning','Central AC','Comfort',0,0,'Active',DATE '2023-06-01',DATE '2024-01-28','Centralized');
INSERT INTO amenity VALUES ('AM009','LAUN','Laundry','Self-service laundry','Utility',10,0,'Active',DATE '2022-11-01',DATE '2023-12-10','Coin-operated');
INSERT INTO amenity VALUES ('AM010','CCTV','CCTV','Security cameras','Utility',0,0,'Active',DATE '2022-08-01',DATE '2023-11-01','24/7');

/* =============================== POLICY ================================= */

INSERT INTO policy VALUES ('PL001','POL-FLEX','Cancellation','Default cancellation rules',DATE '2023-01-01',DATE '2025-12-31','Full cancellation policy text','24–48 hour notice',1,DATE '2024-01-01');
INSERT INTO policy VALUES ('PL002','POL-FLEX','Cancellation','Strict refund rules',DATE '2023-01-01',DATE '2025-12-31','Strict policy details','No refund under 24h',1,DATE '2024-01-01');
INSERT INTO policy VALUES ('PL003','POL-MOD','Finance','Refund eligibility rules',DATE '2023-01-01',DATE '2026-12-31','Refund processing text','Refund guidelines',1,DATE '2024-02-01');
INSERT INTO policy VALUES ('PL004','POL-STRICT','Finance','Monthly payout rules',DATE '2023-01-01',DATE '2026-12-31','Payout processing text','Monthly payout',1,DATE '2024-02-01');
INSERT INTO policy VALUES ('PL005','POL-MOD','Property','Property conduct rules',DATE '2023-01-01',DATE '2026-12-31','House rules text','Guest behavior',1,DATE '2024-01-10');
INSERT INTO policy VALUES ('PL006','POL-FLEX','Operations','Maintenance workflow',DATE '2023-01-01',DATE '2026-12-31','Maintenance SOP','Request handling',1,DATE '2024-01-15');
INSERT INTO policy VALUES ('PL007','POL-STRICT','Review','Review moderation rules',DATE '2023-01-01',DATE '2026-12-31','Review content rules','Content standards',1,DATE '2024-02-05');
INSERT INTO policy VALUES ('PL008','POL-MOD','Finance','Payment handling',DATE '2023-01-01',DATE '2026-12-31','Payment flow','Secure payment',1,DATE '2024-02-10');
INSERT INTO policy VALUES ('PL009','POL-FLEX','Legal','User data protection',DATE '2023-01-01',DATE '2030-12-31','Privacy compliance text','Data protection',1,DATE '2024-01-20');
INSERT INTO policy VALUES ('PL010','POL-STRICT','Legal','Platform security',DATE '2023-01-01',DATE '2030-12-31','Security standards','Secure platform',1,DATE '2024-01-25');


/* =============================== GUEST ================================= */

INSERT INTO guest VALUES ('G001','Booking.com','Ahmad Firdaus','ahmad.firdaus@gmail.com',DATE '1995-04-10',1,'Malaysian','English',2,'198765432',1,DATE '2023-01-10',1200,'U011','Guest');
INSERT INTO guest VALUES ('G002','Agoda','Nur Aisyah','nur.aisyah@gmail.com',DATE '1997-08-22',2,'Malaysian','Malay',3,'187654321',1,DATE '2023-02-15',2400,'U012','Guest');
INSERT INTO guest VALUES ('G003','Airbnb','Rajesh Kumar','rajesh.kumar@gmail.com',DATE '1990-12-05',1,'Indian','English',4,'176543210',1,DATE '2023-04-01',3600,'U013','Guest');
INSERT INTO guest VALUES ('G004','Booking.com','Siti Aminah','siti.aminah@gmail.com',DATE '1994-06-18',2,'Malaysian','English',2,'165432109',0,DATE '2023-06-10',900,'U014','Guest');
INSERT INTO guest VALUES ('G005','Agoda','Daniel Tan','daniel.tan@gmail.com',DATE '1992-03-09',1,'Singaporean','English',3,'154321098',1,DATE '2023-07-18',2100,'U015','Guest');
INSERT INTO guest VALUES ('G006','Airbnb','Muhammad Iqbal','muhammad.iqbal@gmail.com',DATE '1988-11-30',1,'Malaysian','Malay',1,'143210987',2,DATE '2023-09-01',300,'U016','Guest');
INSERT INTO guest VALUES ('G007','Booking.com','Ahmad Firdaus','ahmad.firdaus@gmail.com',DATE '1995-04-10',1,'Malaysian','English',3,'198765432',1,DATE '2024-01-01',1800,'U017','Guest');
INSERT INTO guest VALUES ('G008','Agoda','Nur Aisyah','nur.aisyah@gmail.com',DATE '1997-08-22',2,'Malaysian','Malay',2,'187654321',1,DATE '2024-01-05',1100,'U018','Guest');
INSERT INTO guest VALUES ('G009','Airbnb','Rajesh Kumar','rajesh.kumar@gmail.com',DATE '1990-12-05',1,'Indian','English',1,'176543210',1,DATE '2024-02-01',600,'U019','Guest');
INSERT INTO guest VALUES ('G010','Airbnb','Daniel Tan','daniel.tan@gmail.com',DATE '1992-03-09',1,'Singaporean','English',3,'154321098',1,DATE '2024-02-15',2300,'U020','Guest');

/* =============================== HOST ================================= */

INSERT INTO host VALUES ('H001','Professional','TX123456','SSM998877',DATE '2022-11-20','Experienced city host','Verified','Bank Transfer',5,'4.8','Fast','U021','Host');
INSERT INTO host VALUES ('H002','Standard','TX223344','SSM887766',DATE '2022-08-05','Family-friendly homes','Verified','Bank Transfer',3,'4.5999999999999996','Fast','U022','Host');
INSERT INTO host VALUES ('H003','Premium','TX334455','SSM776655',DATE '2021-09-15','Luxury property host','Verified','Bank Transfer',8,'4.9','Very Fast','U023','Host');
INSERT INTO host VALUES ('H004','Standard','TX445566','SSM665544',DATE '2022-03-12','Budget stays specialist','Verified','Bank Transfer',4,'4.5','Average','U024','Host');
INSERT INTO host VALUES ('H005','Professional','TX123456','SSM998877',DATE '2023-01-01','Long-term rentals','Verified','Bank Transfer',6,'4.7','Fast','U025','Host');
INSERT INTO host VALUES ('H006','Standard','TX223344','SSM887766',DATE '2023-05-10','Urban apartments','Verified','Bank Transfer',2,'4.4000000000000004','Average','U026','Host');
INSERT INTO host VALUES ('H007','Premium','TX334455','SSM776655',DATE '2023-08-20','Premium villas','Verified','Bank Transfer',7,'4.9','Very Fast','U027','Host');
INSERT INTO host VALUES ('H008','New','TX445566','SSM665544',DATE '2023-10-01','Beachside homes','Pending','Bank Transfer',1,'4.3','Slow','U028','Host');
INSERT INTO host VALUES ('H009','Professional','TX123456','SSM998877',DATE '2024-01-05','Corporate stays','Verified','Bank Transfer',9,'4.8','Fast','U029','Host');
INSERT INTO host VALUES ('H010','Premium','TX334455','SSM776655',DATE '2024-02-01','High-rise condos','Verified','Bank Transfer',10,'5','Very Fast','U030','Host');

/* =============================== PROPERTY ================================= */

INSERT INTO property VALUES ('PROP001','JB01','Seri Mutiara Apartment','No 12 Jalan Mutiara','Johor Bahru','Johor',180,'Available',TO_DATE('2024-01-10','YYYY-MM-DD'),TO_TIMESTAMP('2024-01-10 15:00:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-01-10 12:00:00','YYYY-MM-DD HH24:MI:SS'),'H001','Professional','PT001','APT');
INSERT INTO property VALUES ('PROP002','PJ02','Damansara Heights Condo','No 88 Jalan SS2','Petaling Jaya','Selangor',250,'Booked',TO_DATE('2024-02-01','YYYY-MM-DD'),TO_TIMESTAMP('2024-02-01 15:00:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-02-01 12:00:00','YYYY-MM-DD HH24:MI:SS'),'H002','Standard','PT002','CON');
INSERT INTO property VALUES ('PROP003','ML03','Taman Indah Bungalow','No 3 Jalan Indah','Klang','Selangor',350,'Available',TO_DATE('2023-11-20','YYYY-MM-DD'),TO_TIMESTAMP('2023-11-20 14:00:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2023-11-20 11:00:00','YYYY-MM-DD HH24:MI:SS'),'H003','Premium','PT003','BNG');
INSERT INTO property VALUES ('PROP004','KL04','Solaris Shoplot Suite','Lot 5 Solaris Dutamas','Kuala Lumpur','WP Kuala Lumpur',220,'Maintenance',TO_DATE('2024-03-01','YYYY-MM-DD'),TO_TIMESTAMP('2024-03-01 15:00:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-03-01 12:00:00','YYYY-MM-DD HH24:MI:SS'),'H004','Standard','PT004','SHP');
INSERT INTO property VALUES ('PROP005','CY05','Cyberjaya Studio Loft','Jalan Bestari','Cyberjaya','Selangor',160,'Available',TO_DATE('2023-12-15','YYYY-MM-DD'),TO_TIMESTAMP('2023-12-15 15:00:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2023-12-15 12:00:00','YYYY-MM-DD HH24:MI:SS'),'H006','Standard','PT005','STD');
INSERT INTO property VALUES ('PROP006','SM06','EcoHill Townhouse','Jalan EcoHill','Semenyih','Selangor',200,'Booked',TO_DATE('2024-02-18','YYYY-MM-DD'),TO_TIMESTAMP('2024-02-18 15:00:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-02-18 12:00:00','YYYY-MM-DD HH24:MI:SS'),'H005','Professional','PT006','THS');
INSERT INTO property VALUES ('PROP007','KL07','SkyView Duplex','Jalan Tun Razak','Kuala Lumpur','WP Kuala Lumpur',300,'Available',TO_DATE('2023-10-10','YYYY-MM-DD'),TO_TIMESTAMP('2023-10-10 14:00:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2023-10-10 11:00:00','YYYY-MM-DD HH24:MI:SS'),'H007','Premium','PT007','DPX');
INSERT INTO property VALUES ('PROP008','KN08','Damai Villa','Jalan Damai','Kuantan','Pahang',450,'Available',TO_DATE('2024-03-12','YYYY-MM-DD'),TO_TIMESTAMP('2024-03-12 15:00:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-03-12 12:00:00','YYYY-MM-DD HH24:MI:SS'),'H010','Premium','PT008','VLL');
INSERT INTO property VALUES ('PROP009','SJ09','Sunway Studio','Jalan Lagoon Selatan','Subang Jaya','Selangor',170,'Booked',TO_DATE('2024-01-25','YYYY-MM-DD'),TO_TIMESTAMP('2024-01-25 15:00:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-01-25 12:00:00','YYYY-MM-DD HH24:MI:SS'),'H009','Professional','PT009','WHS');
INSERT INTO property VALUES ('PROP010','KG10','Port Klang Warehouse Stay','Jalan Pelabuhan','Klang','Selangor',280,'Inactive',TO_DATE('2023-09-01','YYYY-MM-DD'),TO_TIMESTAMP('2023-09-01 16:00:00','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2023-09-01 11:00:00','YYYY-MM-DD HH24:MI:SS'),'H008','New','PT010','PNT');

/* =============================== ROOM ================================= */

INSERT INTO room VALUES ('RM001','RM-A01','Bedroom','150 sqft',1,1,3,0,'Available',80.00,'Queen bed','H001','Professional','PROP001','JB01');
INSERT INTO room VALUES ('RM002','RM-A02','Bedroom','180 sqft',1,1,3,0,'Booked',90.00,'Balcony view','H002','Standard','PROP002','PJ02');
INSERT INTO room VALUES ('RM003','RM-C11','Master Bedroom','250 sqft',1,2,12,0,'Booked',130.00,'Ensuite','H003','Premium','PROP003','ML03');
INSERT INTO room VALUES ('RM004','RM-B01','Bedroom','200 sqft',2,2,1,0,'Available',150.00,'Family room','H004','Standard','PROP004','KL04');
INSERT INTO room VALUES ('RM005','RM-S01','Studio Room','300 sqft',1,1,5,0,'Maintenance',110.00,'City view','H005','Professional','PROP005','CY05');
INSERT INTO room VALUES ('RM006','RM-ST1','Studio Room','180 sqft',1,1,6,0,'Available',90.00,'Compact','H006','Standard','PROP006','SM06');
INSERT INTO room VALUES ('RM007','RM-T02','Bedroom','220 sqft',2,2,2,0,'Booked',120.00,'Garden view','H007','Premium','PROP007','KL07');
INSERT INTO room VALUES ('RM008','RM-D01','Bedroom','240 sqft',2,2,10,0,'Available',140.00,'Duplex unit','H008','New','PROP008','KN08');
INSERT INTO room VALUES ('RM009','RM-V03','Guest Room','260 sqft',1,1,1,0,'Available',160.00,'Villa room','H009','Professional','PROP009','SJ09');
INSERT INTO room VALUES ('RM010','RM-S09','Studio Room','170 sqft',1,1,8,0,'Booked',85.00,'Budget stay','H010','Premium','PROP010','KG10');

/* =============================== STAFF ================================= */

INSERT INTO staff VALUES ('ST001','Permanent','Ahmad Firdaus','firdaus@mzz.com','123456789',DATE '2021-01-10',1,'Active',6500.00,'198765432',5,'U001','Staff','H001','Professional','R001','PMR01');
INSERT INTO staff VALUES ('ST002','Permanent','Nur Aisyah','aisyah@mzz.com','134567890',DATE '2021-06-15',1,'Active',4500.00,'187654321',4,'U002','Staff','H002','Standard','R002','AMR02');
INSERT INTO staff VALUES ('ST003','Permanent','Daniel Wong','daniel@mzz.com','145678901',DATE '2022-02-01',2,'Active',3000.00,'176543210',3,'U003','Staff','H003','Premium','R003','FDO03');
INSERT INTO staff VALUES ('ST004','Contract','Siti Khadijah','siti@mzz.com','167890123',DATE '2022-03-12',2,'Suspended',3200.00,'191234567',3,'U004','Staff','H004','Standard','R004','MT04');
INSERT INTO staff VALUES ('ST005','Contract','Kumar Raj','kumar@mzz.com','178901234',DATE '2023-01-05',2,'Active',2500.00,'182345678',2,'U005','Staff','H005','Professional','R005','HK05');
INSERT INTO staff VALUES ('ST006','Permanent','Farah Nabila','farah@mzz.com','189012345',DATE '2021-09-20',1,'Active',4200.00,'193456789',4,'U006','Staff','H006','Standard','R006','FO06');
INSERT INTO staff VALUES ('ST007','Permanent','Hafiz Rahman','hafiz@mzz.com','190123456',DATE '2022-05-18',3,'Active',2800.00,'174567890',3,'U007','Staff','H007','Premium','R007','SO07');
INSERT INTO staff VALUES ('ST008','Permanent','Jason Lim','jason@mzz.com','112233445',DATE '2023-02-28',1,'Active',3800.00,'165678901',5,'U008','Staff','H008','New','R008','ITS08');
INSERT INTO staff VALUES ('ST009','Contract','Aina Sofea','aina@mzz.com','123344556',DATE '2023-04-10',2,'Terminated',3300.00,'156789012',4,'U009','Staff','H009','Professional','R009','CS09');
INSERT INTO staff VALUES ('ST010','Permanent','Mohd Azlan','azlan@mzz.com','134455667',DATE '2020-11-01',1,'Retired',4800.00,'147890123',5,'U010','Staff','H010','Premium','R010','OP10');

/* =============================== PAYOUT ================================= */

INSERT INTO payout VALUES ('PO001','PO-001',DATE '2024-02-03',4860.00,'Maybank','1234567890','PAY20240201',1,'20','Monthly','Bank Transfer','H001','Professional','ER001','EP-2024-01');
INSERT INTO payout VALUES ('PO002','PO-002',DATE '2024-02-03',3780.00,'CIMB','2233445566','PAY20240202',1,'20','On time','Bank Transfer','H002','Standard','ER002','EP-2024-01');
INSERT INTO payout VALUES ('PO003','PO-003',DATE '2024-03-05',7020.00,'RHB','3344556677','PAY20240303',0,'25','Processing','Bank Transfer','H003','Premium','ER003','EP-2024-02');
INSERT INTO payout VALUES ('PO004','PO-004',DATE '2024-03-05',3240.00,'Maybank','4455667788','PAY20240304',1,'20','Auto','Bank Transfer','H004','Standard','ER004','EP-2024-02');
INSERT INTO payout VALUES ('PO005','PO-005',DATE '2024-04-06',8190.00,'Public Bank','5566778899','PAY20240405',0,'30','High volume','Bank Transfer','H005','Professional','ER005','EP-2024-03');
INSERT INTO payout VALUES ('PO006','PO-006',DATE '2024-04-06',4410.00,'CIMB','6677889900','PAY20240406',1,'20','Monthly','Bank Transfer','H006','Standard','ER006','EP-2024-03');
INSERT INTO payout VALUES ('PO007','PO-007',DATE '2024-05-04',5940.00,'RHB','7788990011','PAY20240507',1,'20','Regular','Bank Transfer','H007','Premium','ER007','EP-2024-04');
INSERT INTO payout VALUES ('PO008','PO-008',DATE '2024-05-04',2520.00,'Maybank','8899001122','PAY20240508',0,'15','Low volume','Bank Transfer','H008','New','ER008','EP-2024-04');
INSERT INTO payout VALUES ('PO009','PO-009',DATE '2024-06-03',7470.00,'Public Bank','9900112233','PAY20240609',1,'25','Cleared','Bank Transfer','H009','Professional','ER009','EP-2024-05');
INSERT INTO payout VALUES ('PO010','PO-010',DATE '2024-06-03',3780.00,'CIMB','1011223344','PAY20240610',0,'20','Awaiting','Bank Transfer','H010','Premium','ER010','EP-2024-05');

/* =============================== EARNING ================================= */

INSERT INTO earning VALUES ('ER001','EP-2024-01',1,2024,8,5400.00,540.00,4860.00,'Paid',DATE '2024-02-01',324.00,'H001','Professional','PO001','PO-001');
INSERT INTO earning VALUES ('ER002','EP-2024-01',1,2024,6,4200.00,420.00,3780.00,'Paid',DATE '2024-02-01',252.00,'H002','Standard','PO002','PO-002');
INSERT INTO earning VALUES ('ER003','EP-2024-02',2,2024,10,7800.00,780.00,7020.00,'Pending',DATE '2024-03-01',468.00,'H003','Premium','PO003','PO-003');
INSERT INTO earning VALUES ('ER004','EP-2024-02',2,2024,5,3600.00,360.00,3240.00,'Paid',DATE '2024-03-01',216.00,'H004','Standard','PO004','PO-004');
INSERT INTO earning VALUES ('ER005','EP-2024-03',3,2024,12,9100.00,910.00,8190.00,'Pending',DATE '2024-04-01',546.00,'H005','Professional','PO005','PO-005');
INSERT INTO earning VALUES ('ER006','EP-2024-03',3,2024,7,4900.00,490.00,4410.00,'Paid',DATE '2024-04-01',294.00,'H006','Standard','PO006','PO-006');
INSERT INTO earning VALUES ('ER007','EP-2024-04',4,2024,9,6600.00,660.00,5940.00,'Paid',DATE '2024-05-01',396.00,'H007','Premium','PO007','PO-007');
INSERT INTO earning VALUES ('ER008','EP-2024-04',4,2024,4,2800.00,280.00,2520.00,'Pending',DATE '2024-05-01',168.00,'H008','New','PO008','PO-008');
INSERT INTO earning VALUES ('ER009','EP-2024-05',5,2024,11,8300.00,830.00,7470.00,'Paid',DATE '2024-06-01',498.00,'H009','Professional','PO009','PO-009');
INSERT INTO earning VALUES ('ER010','EP-2024-05',5,2024,6,4200.00,420.00,3780.00,'Pending',DATE '2024-06-01',252.00,'H010','Premium','PO010','PO-010');

/* =============================== BOOKING ================================= */

INSERT INTO booking VALUES ('BK001','BK-JB-001',DATE '2024-02-01',DATE '2024-02-10',DATE '2024-02-12',2,360.00,1,'Late check-in',0,1,'G001','Booking.com','PROP001','JB01','RM001','RM-A01','PT001','APT','H001','Professional','ER001','EP-2024-01');
INSERT INTO booking VALUES ('BK002','BK-PJ-002',DATE '2024-02-05',DATE '2024-02-20',DATE '2024-02-23',3,750.00,1,'Extra towels',0,2,'G002','Agoda','PROP002','PJ02','RM002','RM-A02','PT002','CON','H002','Standard','ER002','EP-2024-01');
INSERT INTO booking VALUES ('BK003','BK-ML-003',DATE '2024-01-15',DATE '2024-02-01',DATE '2024-02-05',2,1400.00,1,'BBQ equipment',0,1,'G003','Airbnb','PROP003','ML03','RM003','RM-C11','PT003','BNG','H003','Premium','ER003','EP-2024-02');
INSERT INTO booking VALUES ('BK004','BK-KL-004',DATE '2024-03-01',DATE '2024-03-10',DATE '2024-03-12',2,440.00,1,'None',0,2,'G004','Booking.com','PROP004','KL04','RM004','RM-B01','PT004','SHP','H004','Standard','ER004','EP-2024-02');
INSERT INTO booking VALUES ('BK005','BK-CY-005',DATE '2024-01-25',DATE '2024-02-05',DATE '2024-02-06',1,160.00,1,'Quiet room',0,1,'G005','Agoda','PROP005','CY05','RM005','RM-S01','PT005','STD','H006','Standard','ER005','EP-2024-03');
INSERT INTO booking VALUES ('BK006','BK-SM-006',DATE '2024-02-18',DATE '2024-03-01',DATE '2024-03-03',2,600.00,1,'Baby cot',0,2,'G006','Airbnb','PROP006','SM06','RM006','RM-ST1','PT006','THS','H005','Professional','ER006','EP-2024-03');
INSERT INTO booking VALUES ('BK007','BK-KL-007',DATE '2024-01-10',DATE '2024-02-15',DATE '2024-02-18',4,900.00,1,'High floor',0,1,'G007','Booking.com','PROP007','KL07','RM007','RM-T02','PT007','DPX','H007','Premium','ER007','EP-2024-04');
INSERT INTO booking VALUES ('BK008','BK-KN-008',DATE '2024-03-12',DATE '2024-03-20',DATE '2024-03-23',6,1350.00,1,'Extra parking',0,1,'G008','Agoda','PROP008','KN08','RM008','RM-D01','PT008','VLL','H010','Premium','ER008','EP-2024-04');
INSERT INTO booking VALUES ('BK009','BK-SJ-009',DATE '2024-02-01',DATE '2024-02-28',DATE '2024-03-01',2,170.00,1,'Early check-in',0,1,'G009','Airbnb','PROP009','SJ09','RM009','RM-V03','PT009','WHS','H009','Professional','ER009','EP-2024-05');
INSERT INTO booking VALUES ('BK010','BK-KG-010',DATE '2023-12-01',DATE '2023-12-20',DATE '2023-12-22',2,560.00,0,'None',0,2,'G010','Airbnb','PROP010','KG10','RM010','RM-S09','PT010','PNT','H008','New','ER010','EP-2024-05');

/* =============================== INVOICE ================================= */

INSERT INTO invoice VALUES ('INV001','INV-001',DATE '2024-02-01',2024,'Ahmad Firdaus','No 12 Jalan Mutiara, Johor Bahru',338,22,360,'Paid',DATE '2024-02-10','BK001','BK-JB-001','G001','Booking.com','H001','Professional');
INSERT INTO invoice VALUES ('INV002','INV-002',DATE '2024-02-05',2024,'Nur Aisyah','No 88 Jalan SS2, Petaling Jaya',705,45,750,'Paid',DATE '2024-02-15','BK002','BK-PJ-002','G002','Agoda','H002','Standard');
INSERT INTO invoice VALUES ('INV003','INV-003',DATE '2024-01-15',2024,'Daniel Wong','No 3 Jalan Indah, Melaka',1316,84,1400,'Paid',DATE '2024-01-25','BK003','BK-ML-003','G003','Airbnb','H003','Premium');
INSERT INTO invoice VALUES ('INV004','INV-004',DATE '2024-03-01',2024,'Siti Khadijah','Lot 5 Solaris Dutamas, Kuala Lumpur',414,26,440,'Cancelled',DATE '2024-03-10','BK004','BK-KL-004','G004','Booking.com','H004','Standard');
INSERT INTO invoice VALUES ('INV005','INV-005',DATE '2024-01-25',2024,'Kumar Raj','Jalan Bestari, Cyberjaya',150,10,160,'Paid',DATE '2024-02-05','BK005','BK-CY-005','G005','Agoda','H006','Standard');
INSERT INTO invoice VALUES ('INV006','INV-006',DATE '2024-02-18',2024,'Farah Nabila','Jalan EcoHill, Semenyih',564,36,600,'Paid',DATE '2024-02-28','BK006','BK-SM-006','G006','Airbnb','H005','Professional');
INSERT INTO invoice VALUES ('INV007','INV-007',DATE '2024-01-10',2024,'Hafiz Rahman','Jalan Tun Razak, Kuala Lumpur',846,54,900,'Paid',DATE '2024-01-20','BK007','BK-KL-007','G007','Booking.com','H007','Premium');
INSERT INTO invoice VALUES ('INV008','INV-008',DATE '2024-03-12',2024,'Jason Lim','Jalan Damai, Kuantan',1269,81,1350,'Paid',DATE '2024-03-22','BK008','BK-KN-008','G008','Agoda','H010','Premium');
INSERT INTO invoice VALUES ('INV009','INV-009',DATE '2024-02-01',2024,'Aina Sofea','Jalan Lagoon Selatan, Subang Jaya',160,10,170,'Paid',DATE '2024-02-10','BK009','BK-SJ-009','G009','Airbnb','H009','Professional');
INSERT INTO invoice VALUES ('INV010','INV-010',DATE '2023-12-01',2023,'Mohd Azlan','Jalan Pelabuhan, Klang',526,34,560,'Paid',DATE '2023-12-15','BK010','BK-KG-010','G010','Airbnb','H008','New');

/* =============================== PAYMENT ================================= */

INSERT INTO payment VALUES ('PY001','PAY-001',DATE '2024-02-01',1,360.00,'MYR','Completed','TXN1001','Credit Card','22',1234,'INV001','INV-001','G001','Booking.com','PO001','PO-001','ER001','EP-2024-01','BK001','BK-JB-001','RM001','RM-A01','PROP001','JB01','H001','Professional');
INSERT INTO payment VALUES ('PY002','PAY-002',DATE '2024-02-05',1,750.00,'MYR','Completed','TXN1002','Debit Card','45',2345,'INV002','INV-002','G002','Agoda','PO002','PO-002','ER002','EP-2024-01','BK002','BK-PJ-002','RM002','RM-A02','PROP002','PJ02','H002','Standard');
INSERT INTO payment VALUES ('PY003','PAY-003',DATE '2024-01-15',1,1400.00,'MYR','Completed','TXN1003','Credit Card','84',3456,'INV003','INV-003','G003','Airbnb','PO003','PO-003','ER003','EP-2024-02','BK003','BK-ML-003','RM003','RM-C11','PROP003','ML03','H003','Premium');
INSERT INTO payment VALUES ('PY004','PAY-004',DATE '2024-03-01',2,440.00,'MYR','Completed','TXN1004','Online Banking','26',4567,'INV004','INV-004','G004','Booking.com','PO004','PO-004','ER004','EP-2024-02','BK004','BK-KL-004','RM004','RM-B01','PROP004','KL04','H004','Standard');
INSERT INTO payment VALUES ('PY005','PAY-005',DATE '2024-01-25',1,160.00,'MYR','Completed','TXN1005','Credit Card','10',5678,'INV005','INV-005','G005','Agoda','PO005','PO-005','ER005','EP-2024-03','BK005','BK-CY-005','RM005','RM-S01','PROP005','CY05','H006','Standard');
INSERT INTO payment VALUES ('PY006','PAY-006',DATE '2024-02-18',1,600.00,'MYR','Completed','TXN1006','Debit Card','36',6789,'INV006','INV-006','G006','Airbnb','PO006','PO-006','ER006','EP-2024-03','BK006','BK-SM-006','RM006','RM-ST1','PROP006','SM06','H005','Professional');
INSERT INTO payment VALUES ('PY007','PAY-007',DATE '2024-01-10',1,900.00,'MYR','Completed','TXN1007','Online Banking','54',7890,'INV007','INV-007','G007','Booking.com','PO007','PO-007','ER007','EP-2024-04','BK007','BK-KL-007','RM007','RM-T02','PROP007','KL07','H007','Premium');
INSERT INTO payment VALUES ('PY008','PAY-008',DATE '2024-03-12',1,1350.00,'MYR','Completed','TXN1008','Credit Card','81',8901,'INV008','INV-008','G008','Agoda','PO008','PO-008','ER008','EP-2024-04','BK008','BK-KN-008','RM008','RM-D01','PROP008','KN08','H010','Premium');
INSERT INTO payment VALUES ('PY009','PAY-009',DATE '2024-02-01',1,170.00,'MYR','Completed','TXN1009','Debit Card','10',9012,'INV009','INV-009','G009','Airbnb','PO009','PO-009','ER009','EP-2024-05','BK009','BK-SJ-009','RM009','RM-V03','PROP009','SJ09','H009','Professional');
INSERT INTO payment VALUES ('PY010','PAY-010',DATE '2023-12-01',2,560.00,'MYR','Completed','TXN1010','Online Banking','34',123,'INV010','INV-010','G010','Airbnb','PO010','PO-010','ER010','EP-2024-05','BK010','BK-KG-010','RM010','RM-S09','PROP010','KG10','H008','New');

/* =============================== CANCELLATION ================================= */

INSERT INTO cancellation VALUES ('CN001','CAN-2024-001',24,DATE '2024-03-05','Maintenance issue',1,0.00,1,'Online','Full refund','Guest','PY001','PAY-001','BK001','BK-JB-001','G001','Booking.com','PROP001','JB01','RM001','RM-A01');
INSERT INTO cancellation VALUES ('CN002','CAN-2023-002',48,DATE '2023-12-10','Payment failure',1,0.00,1,'System','Auto cancel','System','PY002','PAY-002','BK002','BK-PJ-002','G002','Agoda','PROP002','PJ02','RM002','RM-A02');
INSERT INTO cancellation VALUES ('CN003','CAN-2024-003',12,DATE '2024-02-18','Change of plan',0,75.00,0,'Online','Late cancel','Guest','PY003','PAY-003','BK003','BK-ML-003','G003','Airbnb','PROP003','ML03','RM003','RM-C11');
INSERT INTO cancellation VALUES ('CN004','CAN-2024-004',24,DATE '2024-02-25','Emergency',1,60.00,1,'Phone','Partial refund','Guest','PY004','PAY-004','BK004','BK-KL-004','G004','Booking.com','PROP004','KL04','RM004','RM-B01');
INSERT INTO cancellation VALUES ('CN005','CAN-2024-005',6,DATE '2024-02-27','Schedule conflict',0,17.00,0,'Online','Policy applied','Guest','PY005','PAY-005','BK005','BK-CY-005','G005','Agoda','PROP005','CY05','RM005','RM-S01');
INSERT INTO cancellation VALUES ('CN006','CAN-2024-006',48,DATE '2024-02-05','Double booking',1,0.00,1,'Online','System error','Guest','PY006','PAY-006','BK006','BK-SM-006','G006','Airbnb','PROP006','SM06','RM006','RM-ST1');
INSERT INTO cancellation VALUES ('CN007','CAN-2024-007',72,DATE '2024-01-28','Travel issue',1,140.00,1,'Phone','Partial refund','Guest','PY007','PAY-007','BK007','BK-KL-007','G007','Booking.com','PROP007','KL07','RM007','RM-T02');
INSERT INTO cancellation VALUES ('CN008','CAN-2024-008',24,DATE '2024-03-15','Amenities unavailable',1,135.00,1,'Online','Service issue','Guest','PY008','PAY-008','BK008','BK-KN-008','G008','Agoda','PROP008','KN08','RM008','RM-D01');
INSERT INTO cancellation VALUES ('CN009','CAN-2024-009',12,DATE '2024-02-03','Short notice',0,16.00,0,'Online','Non refundable','Guest','PY009','PAY-009','BK009','BK-SJ-009','G009','Airbnb','PROP009','SJ09','RM009','RM-V03');
INSERT INTO cancellation VALUES ('CN010','CAN-2024-010',48,DATE '2024-02-10','Weather',1,90.00,1,'Phone','Goodwill','Guest','PY010','PAY-010','BK010','BK-KG-010','G010','Airbnb','PROP010','KG10','RM010','RM-S09');

/* =============================== REFUND ================================= */

INSERT INTO refund VALUES ('RF001','RF-001',DATE '2024-03-05',440,'Online Banking','Booking cancelled','Completed',100.00,DATE '2024-03-06','Full refund',0,'CN001','CAN-2024-001','PY001','PAY-001','H001','Professional','BK001','BK-JB-001');
INSERT INTO refund VALUES ('RF002','RF-002',DATE '2024-02-10',140,'Credit Card','Overcharge','Completed',10.00,DATE '2024-02-11','Partial tax',1,'CN002','CAN-2023-002','PY002','PAY-002','H002','Standard','BK002','BK-PJ-002');
INSERT INTO refund VALUES ('RF003','RF-003',DATE '2024-03-01',60,'Debit Card','Discount adjustment','Completed',10.00,DATE '2024-03-02','Loyalty',1,'CN003','CAN-2024-003','PY003','PAY-003','H003','Premium','BK003','BK-ML-003');
INSERT INTO refund VALUES ('RF004','RF-004',DATE '2024-02-20',75,'Online Banking','Promo applied late','Completed',10.00,DATE '2024-02-21','Promo',1,'CN004','CAN-2024-004','PY004','PAY-004','H004','Standard','BK004','BK-KL-004');
INSERT INTO refund VALUES ('RF005','RF-005',DATE '2023-12-10',560,'Online Banking','Payment failed','Completed',100.00,DATE '2023-12-11','Full reversal',0,'CN005','CAN-2024-005','PY005','PAY-005','H006','Standard','BK005','BK-CY-005');
INSERT INTO refund VALUES ('RF006','RF-006',DATE '2024-02-05',36,'Credit Card','Service issue','Completed',10.00,DATE '2024-02-06','Compensation',1,'CN006','CAN-2024-006','PY006','PAY-006','H005','Professional','BK006','BK-SM-006');
INSERT INTO refund VALUES ('RF007','RF-007',DATE '2024-01-15',90,'Debit Card','Early checkout','Completed',10.00,DATE '2024-01-16','Partial stay',1,'CN007','CAN-2024-007','PY007','PAY-007','H007','Premium','BK007','BK-KL-007');
INSERT INTO refund VALUES ('RF008','RF-008',DATE '2024-03-18',135,'Credit Card','Amenities unavailable','Completed',10.00,DATE '2024-03-19','Amenity issue',1,'CN008','CAN-2024-008','PY008','PAY-008','H010','Premium','BK008','BK-KN-008');
INSERT INTO refund VALUES ('RF009','RF-009',DATE '2024-01-30',16,'Debit Card','Billing error','Completed',10.00,DATE '2024-01-31','Adjustment',1,'CN009','CAN-2024-009','PY009','PAY-009','H009','Professional','BK009','BK-SJ-009');
INSERT INTO refund VALUES ('RF010','RF-010',DATE '2024-02-05',17,'Online Banking','Service recovery','Completed',10.00,DATE '2024-02-06','Service recovery',1,'CN010','CAN-2024-010','PY010','PAY-010','H008','New','BK010','BK-KG-010');

/* =============================== RECEIPT ================================= */

INSERT INTO receipt VALUES ('RC001','RC-001',DATE '2024-02-01','hash001',360.00,22.00,2.00,'MYR','Thank you','Johor Bahru','PY001','PAY-001','G001','Booking.com','INV001','INV-001','BK001','BK-JB-001','H001','Professional');
INSERT INTO receipt VALUES ('RC002','RC-002',DATE '2024-02-05','hash002',750.00,45.00,3.00,'MYR','Payment received','Petaling Jaya','PY002','PAY-002','G002','Agoda','INV002','INV-002','BK002','BK-PJ-002','H002','Standard');
INSERT INTO receipt VALUES ('RC003','RC-003',DATE '2024-01-15','hash003',1400.00,84.00,5.00,'MYR','Paid in full','Melaka','PY003','PAY-003','G003','Airbnb','INV003','INV-003','BK003','BK-ML-003','H003','Premium');
INSERT INTO receipt VALUES ('RC004','RC-004',DATE '2024-03-01','hash004',440.00,26.00,2.00,'MYR','Cancelled','Kuala Lumpur','PY004','PAY-004','G004','Booking.com','INV004','INV-004','BK004','BK-KL-004','H004','Standard');
INSERT INTO receipt VALUES ('RC005','RC-005',DATE '2024-01-25','hash005',160.00,10.00,1.00,'MYR','Receipt issued','Cyberjaya','PY005','PAY-005','G005','Agoda','INV005','INV-005','BK005','BK-CY-005','H006','Standard');
INSERT INTO receipt VALUES ('RC006','RC-006',DATE '2024-02-18','hash006',600.00,36.00,3.00,'MYR','Thank you','Semenyih','PY006','PAY-006','G006','Airbnb','INV006','INV-006','BK006','BK-SM-006','H005','Professional');
INSERT INTO receipt VALUES ('RC007','RC-007',DATE '2024-01-10','hash007',900.00,54.00,4.00,'MYR','Payment confirmed','Kuala Lumpur','PY007','PAY-007','G007','Booking.com','INV007','INV-007','BK007','BK-KL-007','H007','Premium');
INSERT INTO receipt VALUES ('RC008','RC-008',DATE '2024-03-12','hash008',1350.00,81.00,6.00,'MYR','Official receipt','Kuantan','PY008','PAY-008','G008','Agoda','INV008','INV-008','BK008','BK-KN-008','H010','Premium');
INSERT INTO receipt VALUES ('RC009','RC-009',DATE '2024-02-01','hash009',170.00,10.00,1.00,'MYR','Generated','Subang Jaya','PY009','PAY-009','G009','Airbnb','INV009','INV-009','BK009','BK-SJ-009','H009','Professional');
INSERT INTO receipt VALUES ('RC010','RC-010',DATE '2023-12-01','hash010',560.00,34.00,2.00,'MYR','Failed payment','Klang','PY010','PAY-010','G010','Airbnb','INV010','INV-010','BK010','BK-KG-010','H008','New');

/* =============================== REVIEW ================================= */

INSERT INTO review VALUES ('RV001','RV-001',5,'Very clean and comfortable stay',DATE '2024-02-13',1,'Thank you for staying with us!','Positive','Public','No',12,'BK001','BK-JB-001','G001','Booking.com','PROP001','JB01','RM001','RM-A01','H001','Professional','AM001','POOL');
INSERT INTO review VALUES ('RV002','RV-002',4,'Spacious unit but parking was limited',DATE '2024-02-24',1,'We will improve parking arrangements','Neutral','Public','No',8,'BK002','BK-PJ-002','G002','Agoda','PROP002','PJ02','RM003','RM-C11','H002','Standard','AM002','GYM');
INSERT INTO review VALUES ('RV003','RV-003',5,'Perfect for family vacation',DATE '2024-02-06',1,'Glad you enjoyed your stay','Positive','Public','No',15,'BK003','BK-ML-003','G003','Airbnb','PROP003','ML03','RM004','RM-B01','H003','Premium','AM003','PARK');
INSERT INTO review VALUES ('RV004','RV-004',2,'Property was under maintenance',DATE '2024-03-13',1,'Apologies for the inconvenience','Negative','Public','No',5,'BK004','BK-KL-004','G004','Booking.com','PROP004','KL04','RM005','RM-S01','H004','Standard','AM004','LIFT');
INSERT INTO review VALUES ('RV005','RV-005',4,'Quiet and suitable for work trip',DATE '2024-02-07',1,'Happy it met your needs','Positive','Public','No',7,'BK005','BK-CY-005','G005','Agoda','PROP005','CY05','RM006','RM-ST1','H006','Standard','AM005','SEC');
INSERT INTO review VALUES ('RV006','RV-006',3,'Stay was okay but AC was slow',DATE '2024-03-04',1,'Maintenance has fixed the issue','Neutral','Public','No',4,'BK006','BK-SM-006','G006','Airbnb','PROP006','SM06','RM007','RM-T02','H005','Professional','AM006','PLAY');
INSERT INTO review VALUES ('RV007','RV-007',5,'Amazing city view and clean rooms',DATE '2024-02-19',1,'Thank you for the great review!','Positive','Public','No',18,'BK007','BK-KL-007','G007','Booking.com','PROP007','KL07','RM008','RM-D01','H007','Premium','AM007','WIFI');
INSERT INTO review VALUES ('RV008','RV-008',4,'Villa was beautiful, pool could be cleaner',DATE '2024-03-24',1,'Pool maintenance scheduled','Neutral','Public','No',9,'BK008','BK-KN-008','G008','Agoda','PROP008','KN08','RM009','RM-V03','H010','Premium','AM008','AC');
INSERT INTO review VALUES ('RV009','RV-009',3,'Short stay but decent experience',DATE '2024-03-02',1,'Appreciate your feedback','Neutral','Public','No',3,'BK009','BK-SJ-009','G009','Airbnb','PROP009','SJ09','RM010','RM-S09','H009','Professional','AM009','LAUN');
INSERT INTO review VALUES ('RV010','RV-010',1,'Booking was cancelled unexpectedly',DATE '2023-12-23',1,'Refund was processed accordingly','Negative','Public','No',6,'BK010','BK-KG-010','G010','Airbnb','PROP010','KG10','RM010','RM-S09','H008','New','AM010','CCTV');

/* =============================== MAINTENANCE_REQUEST ================================= */

INSERT INTO maintenance_request VALUES ('MR001','MR-JB-001','AC unit repaired and cooling performance restored','Electrical','Air conditioner not cooling',3,TO_DATE('2024-01-10','YYYY-MM-DD'),1,'Morning',TO_DATE('2024-01-12','YYYY-MM-DD'),350.00,'AM001','POOL','H001','Professional','RM001','RM-A01','PROP001','JB01');
INSERT INTO maintenance_request VALUES ('MR002','MR-PJ-002','Damaged pipe replaced and leakage stopped','Plumbing','Water leakage in bathroom',2,TO_DATE('2024-01-15','YYYY-MM-DD'),1,'Afternoon',TO_DATE('2024-01-17','YYYY-MM-DD'),220.00,'AM002','GYM','H002','Standard','RM002','RM-A02','PROP002','PJ02');
INSERT INTO maintenance_request VALUES ('MR003','MR-ML-003','Door lock mechanism repaired and secured','Hardware','Main door cannot lock',3,TO_DATE('2024-01-20','YYYY-MM-DD'),1,'Morning',TO_DATE('2024-01-21','YYYY-MM-DD'),150.00,'AM003','PARK','H003','Premium','RM003','RM-C11','PROP003','ML03');
INSERT INTO maintenance_request VALUES ('MR004','MR-KL-004','Electrical wiring corrected and lighting stabilized','Electrical','Corridor lights flickering',1,TO_DATE('2024-02-01','YYYY-MM-DD'),1,'Afternoon',TO_DATE('2024-02-03','YYYY-MM-DD'),180.00,'AM004','LIFT','H004','Standard','RM004','RM-B01','PROP004','KL04');
INSERT INTO maintenance_request VALUES ('MR005','MR-CY-005','Kitchen sink unclogged and drainage cleared','Plumbing','Kitchen sink clogged',2,TO_DATE('2024-02-05','YYYY-MM-DD'),1,'Morning',TO_DATE('2024-02-06','YYYY-MM-DD'),120.00,'AM005','SEC','H006','Standard','RM005','RM-S01','PROP005','CY05');
INSERT INTO maintenance_request VALUES ('MR006','MR-SM-006','Water heater replaced with new unit','Electrical','Water heater faulty',3,TO_DATE('2024-02-10','YYYY-MM-DD'),1,'Morning',TO_DATE('2024-02-13','YYYY-MM-DD'),400.00,'AM006','PLAY','H005','Professional','RM006','RM-ST1','PROP006','SM06');
INSERT INTO maintenance_request VALUES ('MR007','MR-KL-007','Window sealing partially completed, awaiting materials','Structural','Water seepage during rain',2,TO_DATE('2024-02-15','YYYY-MM-DD'),0,'Afternoon',TO_DATE('2024-02-15','YYYY-MM-DD'),300.00,'AM007','WIFI','H007','Premium','RM007','RM-T02','PROP007','KL07');
INSERT INTO maintenance_request VALUES ('MR008','MR-KN-008','Pool cleaned and filtration system serviced','Facility','Pool water dirty',1,TO_DATE('2024-02-18','YYYY-MM-DD'),1,'Morning',TO_DATE('2024-02-19','YYYY-MM-DD'),200.00,'AM008','AC','H010','Premium','RM008','RM-D01','PROP008','KN08');
INSERT INTO maintenance_request VALUES ('MR009','MR-SJ-009','Router reset and internet connection stabilized','IT','WiFi connection unstable',1,TO_DATE('2024-02-20','YYYY-MM-DD'),1,'Afternoon',TO_DATE('2024-02-20','YYYY-MM-DD'),80.00,'AM009','LAUN','H009','Professional','RM009','RM-V03','PROP009','SJ09');
INSERT INTO maintenance_request VALUES ('MR010','MR-KG-010','Roof inspection scheduled, contractor pending','Structural','Ceiling stain detected',3,TO_DATE('2024-02-25','YYYY-MM-DD'),0,'Morning',TO_DATE('2024-04-24','YYYY-MM-DD'),500.00,'AM010','CCTV','H008','New','RM010','RM-S09','PROP010','KG10');

/* =============================== MAINTENANCE_TASK ================================= */

INSERT INTO maintenance_task VALUES ('MT001','MT-001','Replace AC capacitor',100.00,TO_DATE('2024-01-11','YYYY-MM-DD'),TO_DATE('2024-01-12','YYYY-MM-DD'),350.00,1,2,'Cooling restored',0,'PROP001','JB01','RM001','RM-A01','MR001','MR-JB-001','ER001','EP-2024-01');
INSERT INTO maintenance_task VALUES ('MT002','MT-002','Replace leaking pipe',100.00,TO_DATE('2024-01-16','YYYY-MM-DD'),TO_DATE('2024-01-17','YYYY-MM-DD'),220.00,1,2,'No leakage',0,'PROP002','PJ02','RM003','RM-C11','MR002','MR-PJ-002','ER002','EP-2024-01');
INSERT INTO maintenance_task VALUES ('MT003','MT-003','Repair door lock',100.00,TO_DATE('2024-01-20','YYYY-MM-DD'),TO_DATE('2024-01-21','YYYY-MM-DD'),150.00,1,1,'Lock working',0,'PROP003','ML03','RM004','RM-B01','MR003','MR-ML-003','ER003','EP-2024-02');
INSERT INTO maintenance_task VALUES ('MT004','MT-004','Rewire corridor lights',100.00,TO_DATE('2024-02-02','YYYY-MM-DD'),TO_DATE('2024-02-03','YYYY-MM-DD'),180.00,1,2,'Lights stable',0,'PROP004','KL04','RM005','RM-S01','MR004','MR-KL-004','ER004','EP-2024-02');
INSERT INTO maintenance_task VALUES ('MT005','MT-005','Clear kitchen sink',100.00,TO_DATE('2024-02-05','YYYY-MM-DD'),TO_DATE('2024-02-06','YYYY-MM-DD'),120.00,1,1,'Sink normal',0,'PROP005','CY05','RM006','RM-ST1','MR005','MR-CY-005','ER005','EP-2024-03');
INSERT INTO maintenance_task VALUES ('MT006','MT-006','Replace water heater',100.00,TO_DATE('2024-02-11','YYYY-MM-DD'),TO_DATE('2024-02-13','YYYY-MM-DD'),400.00,1,3,'Heater replaced',0,'PROP006','SM06','RM007','RM-T02','MR006','MR-SM-006','ER006','EP-2024-03');
INSERT INTO maintenance_task VALUES ('MT007','MT-007','Seal window edges',60.00,TO_DATE('2024-02-16','YYYY-MM-DD'),TO_DATE('2024-02-16','YYYY-MM-DD'),180.00,0,2,'Waiting materials',0,'PROP007','KL07','RM008','RM-D01','MR007','MR-KL-007','ER007','EP-2024-04');
INSERT INTO maintenance_task VALUES ('MT008','MT-008','Drain and clean pool',100.00,TO_DATE('2024-02-18','YYYY-MM-DD'),TO_DATE('2024-02-19','YYYY-MM-DD'),200.00,1,2,'Pool clean',0,'PROP008','KN08','RM009','RM-V03','MR008','MR-KN-008','ER008','EP-2024-04');
INSERT INTO maintenance_task VALUES ('MT009','MT-009','Reset router',100.00,TO_DATE('2024-02-20','YYYY-MM-DD'),TO_DATE('2024-02-20','YYYY-MM-DD'),80.00,1,1,'WiFi stable',0,'PROP009','SJ09','RM010','RM-S09','MR009','MR-SJ-009','ER009','EP-2024-05');
INSERT INTO maintenance_task VALUES ('MT010','MT-010','Roof inspection',0.00,TO_DATE('2024-02-26','YYYY-MM-DD'),TO_DATE('2024-03-01','YYYY-MM-DD'),0.00,0,0,'Awaiting contractor',0,'PROP010','KG10','RM010','RM-S09','MR010','MR-KG-010','ER010','EP-2024-05');

/* =============================== OCCUPANCY_REPORT ================================= */

INSERT INTO occupancy_report VALUES ('OR001','RP-2024-01',1,2024,31,25,80.65,180.00,4500.00,DATE '2024-02-01',5.00,'PROP001','JB01','RM001','RM-A01','H001','Professional');
INSERT INTO occupancy_report VALUES ('OR002','RP-2024-01',1,2024,31,22,70.97,250.00,5500.00,DATE '2024-02-01',6.20,'PROP002','PJ02','RM002','RM-A02','H002','Standard');
INSERT INTO occupancy_report VALUES ('OR003','RP-2024-02',1,2024,29,26,89.65,350.00,9100.00,DATE '2024-03-01',3.10,'PROP003','ML03','RM003','RM-C11','H003','Premium');
INSERT INTO occupancy_report VALUES ('OR004','RP-2024-02',1,2024,29,18,62.07,220.00,3960.00,DATE '2024-03-01',8.50,'PROP004','KL04','RM004','RM-B01','H004','Standard');
INSERT INTO occupancy_report VALUES ('OR005','RP-2024-03',1,2024,31,20,64.52,160.00,3200.00,DATE '2024-04-01',7.00,'PROP005','CY05','RM005','RM-S01','H006','Standard');
INSERT INTO occupancy_report VALUES ('OR006','RP-2024-03',1,2024,31,27,87.10,200.00,5400.00,DATE '2024-04-01',4.00,'PROP006','SM06','RM006','RM-ST1','H005','Professional');
INSERT INTO occupancy_report VALUES ('OR007','RP-2024-04',1,2024,30,24,80.00,300.00,7200.00,DATE '2024-05-01',5.50,'PROP007','KL07','RM007','RM-T02','H007','Premium');
INSERT INTO occupancy_report VALUES ('OR008','RP-2024-04',4,2024,30,21,70.00,450.00,9450.00,DATE '2024-05-01',6.80,'PROP008','KN08','RM008','RM-D01','H010','Premium');
INSERT INTO occupancy_report VALUES ('OR009','RP-2024-05',5,2024,31,26,83.87,170.00,4420.00,DATE '2024-06-01',4.20,'PROP009','SJ09','RM009','RM-V03','H009','Professional');
INSERT INTO occupancy_report VALUES ('OR010','RP-2024-05',5,2024,31,19,61.29,280.00,5320.00,DATE '2024-06-01',9.00,'PROP010','KG10','RM010','RM-S09','H008','New');


/* ============================================================== EXPLOSION ================================================================ */

/* =============================== OCCUPANCY_REPORT ================================= */

INSERT INTO amenity_payment VALUES ('AM001', 'POOL', 'PY001', 'PAY-001');
INSERT INTO amenity_payment VALUES ('AM002', 'GYM',  'PY002', 'PAY-002');
INSERT INTO amenity_payment VALUES ('AM003', 'PARK', 'PY003', 'PAY-003');
INSERT INTO amenity_payment VALUES ('AM004', 'LIFT', 'PY004', 'PAY-004');
INSERT INTO amenity_payment VALUES ('AM005', 'SEC',  'PY005', 'PAY-005');
INSERT INTO amenity_payment VALUES ('AM006', 'PLAY', 'PY006', 'PAY-006');
INSERT INTO amenity_payment VALUES ('AM007', 'WIFI', 'PY007', 'PAY-007');
INSERT INTO amenity_payment VALUES ('AM008', 'AC',   'PY008', 'PAY-008');
INSERT INTO amenity_payment VALUES ('AM009', 'LAUN', 'PY009', 'PAY-009');
INSERT INTO amenity_payment VALUES ('AM010','CCTV', 'PY010', 'PAY-010');

/* =============================== ROOM_AMENITY ================================= */

INSERT INTO room_amenity VALUES ('RM001', 'RM-A01', 'AM001', 'POOL');
INSERT INTO room_amenity VALUES ('RM002', 'RM-A02', 'AM002', 'GYM');
INSERT INTO room_amenity VALUES ('RM003', 'RM-C11', 'AM003', 'PARK');
INSERT INTO room_amenity VALUES ('RM004', 'RM-B01', 'AM004', 'LIFT');
INSERT INTO room_amenity VALUES ('RM005', 'RM-S01', 'AM005', 'SEC');
INSERT INTO room_amenity VALUES ('RM006', 'RM-ST1', 'AM006', 'PLAY');
INSERT INTO room_amenity VALUES ('RM007', 'RM-T02', 'AM007', 'WIFI');
INSERT INTO room_amenity VALUES ('RM008', 'RM-D01', 'AM008', 'AC');
INSERT INTO room_amenity VALUES ('RM009', 'RM-V03', 'AM009', 'LAUN');
INSERT INTO room_amenity VALUES ('RM010', 'RM-S09', 'AM010', 'CCTV');

/* =============================== PROPERTY_AMENITY ================================= */

INSERT INTO property_amenity VALUES ('PROP001', 'JB01', 'AM001', 'POOL');
INSERT INTO property_amenity VALUES ('PROP002', 'PJ02', 'AM002', 'GYM');
INSERT INTO property_amenity VALUES ('PROP003', 'ML03', 'AM003', 'PARK');
INSERT INTO property_amenity VALUES ('PROP004', 'KL04', 'AM004', 'LIFT');
INSERT INTO property_amenity VALUES ('PROP005', 'CY05', 'AM005', 'SEC');
INSERT INTO property_amenity VALUES ('PROP006', 'SM06', 'AM006', 'PLAY');
INSERT INTO property_amenity VALUES ('PROP007', 'KL07', 'AM007', 'WIFI');
INSERT INTO property_amenity VALUES ('PROP008', 'KN08', 'AM008', 'AC');
INSERT INTO property_amenity VALUES ('PROP009', 'SJ09', 'AM009', 'LAUN');
INSERT INTO property_amenity VALUES ('PROP010', 'KG10', 'AM010', 'CCTV');

/* =============================== GUEST_AMENITY ================================= */

INSERT INTO guest_amenity VALUES ('G001', 'Booking.com', 'AM001', 'POOL');
INSERT INTO guest_amenity VALUES ('G002', 'Agoda', 'AM002', 'GYM');
INSERT INTO guest_amenity VALUES ('G003', 'Airbnb', 'AM003', 'PARK');
INSERT INTO guest_amenity VALUES ('G004', 'Booking.com', 'AM004', 'LIFT');
INSERT INTO guest_amenity VALUES ('G005', 'Agoda', 'AM005', 'SEC');
INSERT INTO guest_amenity VALUES ('G006', 'Airbnb', 'AM006', 'PLAY');
INSERT INTO guest_amenity VALUES ('G007', 'Booking.com', 'AM007', 'WIFI');
INSERT INTO guest_amenity VALUES ('G008', 'Agoda', 'AM008', 'AC');
INSERT INTO guest_amenity VALUES ('G009', 'Airbnb', 'AM009', 'LAUN');
INSERT INTO guest_amenity VALUES ('G010', 'Airbnb', 'AM010', 'CCTV');

/* =============================== HOST_AMENITY ================================= */

INSERT INTO host_amenity VALUES ('H001', 'Professional', 'AM001', 'POOL');
INSERT INTO host_amenity VALUES ('H002', 'Standard', 'AM002', 'GYM');
INSERT INTO host_amenity VALUES ('H003', 'Premium', 'AM003', 'PARK');
INSERT INTO host_amenity VALUES ('H004', 'Standard', 'AM004', 'LIFT');
INSERT INTO host_amenity VALUES ('H005', 'Professional', 'AM005', 'SEC');
INSERT INTO host_amenity VALUES ('H006', 'Standard', 'AM006', 'PLAY');
INSERT INTO host_amenity VALUES ('H007', 'Premium', 'AM007', 'WIFI');
INSERT INTO host_amenity VALUES ('H008', 'New', 'AM008', 'AC');
INSERT INTO host_amenity VALUES ('H009', 'Professional', 'AM009', 'LAUN');
INSERT INTO host_amenity VALUES ('H010', 'Premium', 'AM010', 'CCTV');

/* =============================== HOST_POLICY ================================= */

INSERT INTO host_policy VALUES ('H001', 'Professional', 'PL001', 'POL-FLEX');
INSERT INTO host_policy VALUES ('H002', 'Standard', 'PL002', 'POL-FLEX');
INSERT INTO host_policy VALUES ('H003', 'Premium', 'PL003', 'POL-MOD');
INSERT INTO host_policy VALUES ('H004', 'Standard', 'PL004', 'POL-STRICT');
INSERT INTO host_policy VALUES ('H005', 'Professional', 'PL005', 'POL-MOD');
INSERT INTO host_policy VALUES ('H006', 'Standard', 'PL006', 'POL-FLEX');
INSERT INTO host_policy VALUES ('H007', 'Premium', 'PL007', 'POL-STRICT');
INSERT INTO host_policy VALUES ('H008', 'New', 'PL008', 'POL-MOD');
INSERT INTO host_policy VALUES ('H009', 'Professional', 'PL009', 'POL-FLEX');
INSERT INTO host_policy VALUES ('H010', 'Premium', 'PL010', 'POL-STRICT');

/* =============================== OCCUPANCY_REPORT_CANCELLATION ================================= */

INSERT INTO occupancy_report_cancellation VALUES ('OR001', 'RP-2024-01', 'CN001', 'CAN-2024-001');
INSERT INTO occupancy_report_cancellation VALUES ('OR002', 'RP-2024-01', 'CN002', 'CAN-2023-002');
INSERT INTO occupancy_report_cancellation VALUES ('OR003', 'RP-2024-02', 'CN003', 'CAN-2024-003');
INSERT INTO occupancy_report_cancellation VALUES ('OR004', 'RP-2024-02', 'CN004', 'CAN-2024-004');
INSERT INTO occupancy_report_cancellation VALUES ('OR005', 'RP-2024-03', 'CN005', 'CAN-2024-005');
INSERT INTO occupancy_report_cancellation VALUES ('OR006', 'RP-2024-03', 'CN006', 'CAN-2024-006');
INSERT INTO occupancy_report_cancellation VALUES ('OR007', 'RP-2024-04', 'CN007', 'CAN-2024-007');
INSERT INTO occupancy_report_cancellation VALUES ('OR008', 'RP-2024-04', 'CN008', 'CAN-2024-008');
INSERT INTO occupancy_report_cancellation VALUES ('OR009', 'RP-2024-05', 'CN009', 'CAN-2024-009');
INSERT INTO occupancy_report_cancellation VALUES ('OR010', 'RP-2024-05', 'CN010', 'CAN-2024-010');

/* =============================== STAFF_MAINTENANCE_TASK ================================= */

INSERT INTO staff_maintenance_task VALUES ('ST001', 'Permanent', 'MT001', 'MT-001');
INSERT INTO staff_maintenance_task VALUES ('ST002', 'Permanent', 'MT002', 'MT-002');
INSERT INTO staff_maintenance_task VALUES ('ST003', 'Permanent', 'MT003', 'MT-003');
INSERT INTO staff_maintenance_task VALUES ('ST004', 'Contract', 'MT004', 'MT-004');
INSERT INTO staff_maintenance_task VALUES ('ST005', 'Contract', 'MT005', 'MT-005');
INSERT INTO staff_maintenance_task VALUES ('ST006', 'Permanent', 'MT006', 'MT-006');
INSERT INTO staff_maintenance_task VALUES ('ST007', 'Permanent', 'MT007', 'MT-007');
INSERT INTO staff_maintenance_task VALUES ('ST008', 'Permanent', 'MT008', 'MT-008');
INSERT INTO staff_maintenance_task VALUES ('ST009', 'Contract', 'MT009', 'MT-009');
INSERT INTO staff_maintenance_task VALUES ('ST010', 'Permanent', 'MT010', 'MT-010');

/* =============================== ROOM_AMENITY ================================= */

INSERT INTO room_policy VALUES ('RM001', 'RM-A01', 'PL001', 'POL-FLEX');
INSERT INTO room_policy VALUES ('RM002', 'RM-A02', 'PL002', 'POL-FLEX');
INSERT INTO room_policy VALUES ('RM003', 'RM-C11', 'PL003', 'POL-MOD');
INSERT INTO room_policy VALUES ('RM004', 'RM-B01', 'PL004', 'POL-STRICT');
INSERT INTO room_policy VALUES ('RM005', 'RM-S01', 'PL005', 'POL-MOD');
INSERT INTO room_policy VALUES ('RM006', 'RM-ST1', 'PL006', 'POL-FLEX');
INSERT INTO room_policy VALUES ('RM007', 'RM-T02', 'PL007', 'POL-STRICT');
INSERT INTO room_policy VALUES ('RM008', 'RM-D01', 'PL008', 'POL-MOD');
INSERT INTO room_policy VALUES ('RM009', 'RM-V03', 'PL009', 'POL-FLEX');
INSERT INTO room_policy VALUES ('RM010', 'RM-S09', 'PL010', 'POL-STRICT');

/* =============================== GUEST_POLICY ================================= */

INSERT INTO guest_policy VALUES ('G001', 'Booking.com', 'PL001', 'POL-FLEX');
INSERT INTO guest_policy VALUES ('G002', 'Agoda', 'PL002', 'POL-FLEX');
INSERT INTO guest_policy VALUES ('G003', 'Airbnb', 'PL003', 'POL-MOD');
INSERT INTO guest_policy VALUES ('G004', 'Booking.com', 'PL004', 'POL-STRICT');
INSERT INTO guest_policy VALUES ('G005', 'Agoda', 'PL005', 'POL-MOD');
INSERT INTO guest_policy VALUES ('G006', 'Airbnb', 'PL006', 'POL-FLEX');
INSERT INTO guest_policy VALUES ('G007', 'Booking.com', 'PL007', 'POL-STRICT');
INSERT INTO guest_policy VALUES ('G008', 'Agoda', 'PL008', 'POL-MOD');
INSERT INTO guest_policy VALUES ('G009', 'Airbnb', 'PL009', 'POL-FLEX');
INSERT INTO guest_policy VALUES ('G010', 'Airbnb', 'PL010', 'POL-STRICT');

/* =============================== PROPERTY_POLICY ================================= */

INSERT INTO property_policy VALUES ('PROP001', 'JB01', 'PL001', 'POL-FLEX');
INSERT INTO property_policy VALUES ('PROP002', 'PJ02', 'PL002', 'POL-FLEX');
INSERT INTO property_policy VALUES ('PROP003', 'ML03', 'PL003', 'POL-MOD');
INSERT INTO property_policy VALUES ('PROP004', 'KL04', 'PL004', 'POL-STRICT');
INSERT INTO property_policy VALUES ('PROP005', 'CY05', 'PL005', 'POL-MOD');
INSERT INTO property_policy VALUES ('PROP006', 'SM06', 'PL006', 'POL-FLEX');
INSERT INTO property_policy VALUES ('PROP007', 'KL07', 'PL007', 'POL-STRICT');
INSERT INTO property_policy VALUES ('PROP008', 'KN08', 'PL008', 'POL-MOD');
INSERT INTO property_policy VALUES ('PROP009', 'SJ09', 'PL009', 'POL-FLEX');
INSERT INTO property_policy VALUES ('PROP010', 'KG10', 'PL010', 'POL-STRICT');

/* =============================== HOST_STAFF_ROLE ================================= */

INSERT INTO host_staff_role VALUES ('H001', 'Professional', 'R001', 'PMR01');
INSERT INTO host_staff_role VALUES ('H002', 'Standard', 'R002', 'AMR02');
INSERT INTO host_staff_role VALUES ('H003', 'Premium', 'R003', 'FDO03');
INSERT INTO host_staff_role VALUES ('H004', 'Standard', 'R004', 'MT04');
INSERT INTO host_staff_role VALUES ('H005', 'Professional', 'R005', 'HK05');
INSERT INTO host_staff_role VALUES ('H006', 'Standard', 'R006', 'FO06');
INSERT INTO host_staff_role VALUES ('H007', 'Premium', 'R007', 'SO07');
INSERT INTO host_staff_role VALUES ('H008', 'New', 'R008', 'ITS08');
INSERT INTO host_staff_role VALUES ('H009', 'Professional', 'R009', 'CS09');
INSERT INTO host_staff_role VALUES ('H010', 'Premium', 'R010', 'OP10');

/* =============================== OCCUPANCY_REPORT_BOOKING ================================= */

INSERT INTO occupancy_report_booking VALUES ('OR001', 'RP-2024-01', 'BK001', 'BK-JB-001');
INSERT INTO occupancy_report_booking VALUES ('OR002', 'RP-2024-01', 'BK002', 'BK-PJ-002');
INSERT INTO occupancy_report_booking VALUES ('OR003', 'RP-2024-02', 'BK003', 'BK-ML-003');
INSERT INTO occupancy_report_booking VALUES ('OR004', 'RP-2024-02', 'BK004', 'BK-KL-004');
INSERT INTO occupancy_report_booking VALUES ('OR005', 'RP-2024-03', 'BK005', 'BK-CY-005');
INSERT INTO occupancy_report_booking VALUES ('OR006', 'RP-2024-03', 'BK006', 'BK-SM-006');
INSERT INTO occupancy_report_booking VALUES ('OR007', 'RP-2024-04', 'BK007', 'BK-KL-007');
INSERT INTO occupancy_report_booking VALUES ('OR008', 'RP-2024-04', 'BK008', 'BK-KN-008');
INSERT INTO occupancy_report_booking VALUES ('OR009', 'RP-2024-05', 'BK009', 'BK-SJ-009');
INSERT INTO occupancy_report_booking VALUES ('OR010', 'RP-2024-05', 'BK010', 'BK-KG-010');

/* =============================== GUEST_PROPERTY ================================= */

INSERT INTO guest_property VALUES ('G001', 'Booking.com', 'PROP001', 'JB01');
INSERT INTO guest_property VALUES ('G002', 'Agoda', 'PROP002', 'PJ02');
INSERT INTO guest_property VALUES ('G003', 'Airbnb', 'PROP003', 'ML03');
INSERT INTO guest_property VALUES ('G004', 'Booking.com', 'PROP004', 'KL04');
INSERT INTO guest_property VALUES ('G005', 'Agoda', 'PROP005', 'CY05');
INSERT INTO guest_property VALUES ('G006', 'Airbnb', 'PROP006', 'SM06');
INSERT INTO guest_property VALUES ('G007', 'Booking.com', 'PROP007', 'KL07');
INSERT INTO guest_property VALUES ('G008', 'Agoda', 'PROP008', 'KN08');
INSERT INTO guest_property VALUES ('G009', 'Airbnb', 'PROP009', 'SJ09');
INSERT INTO guest_property VALUES ('G010', 'Airbnb', 'PROP010', 'KG10');

/* =============================== USER_USER ================================= */

INSERT INTO user_user VALUES ('U001', 'Staff', 'U011', 'Guest');
INSERT INTO user_user VALUES ('U002', 'Staff', 'U012', 'Guest');
INSERT INTO user_user VALUES ('U003', 'Staff', 'U013', 'Guest');
INSERT INTO user_user VALUES ('U004', 'Staff', 'U014', 'Guest');
INSERT INTO user_user VALUES ('U005', 'Staff', 'U015', 'Guest');
INSERT INTO user_user VALUES ('U006', 'Staff', 'U016', 'Guest');
INSERT INTO user_user VALUES ('U007', 'Staff', 'U017', 'Guest');
INSERT INTO user_user VALUES ('U008', 'Staff', 'U018', 'Guest');
INSERT INTO user_user VALUES ('U009', 'Staff', 'U019', 'Guest');
INSERT INTO user_user VALUES ('U010', 'Staff', 'U020', 'Guest');



/* ============================================================== THE END ================================================================ */
