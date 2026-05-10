INSERT INTO plane_models VALUES
(1, 'Boeing 737', 'Boeing', 189),
(2, 'Airbus A320', 'Airbus', 180),
(3, 'Boeing 777', 'Boeing', 396),
(4, 'Airbus A330', 'Airbus', 300),
(5, 'Embraer E190', 'Embraer', 114),
(6, 'Cessna 172', 'Cessna', 4),
(7, 'Boeing 787', 'Boeing', 335),
(8, 'Airbus A350', 'Airbus', 350),
(9, 'Bombardier CRJ900', 'Bombardier', 90),
(10, 'ATR 72', 'ATR', 72);

INSERT INTO airplanes VALUES
(1, 'ERC101', 1, 2018, 'Active'),
(2, 'ERC102', 2, 2020, 'Maintenance'),
(3, 'ERC103', 3, 2016, 'Active'),
(4, 'ERC104', 4, 2019, 'Active'),
(5, 'ERC105', 5, 2021, 'Inspection'),
(6, 'ERC106', 6, 2015, 'Active'),
(7, 'ERC107', 7, 2022, 'Active'),
(8, 'ERC108', 8, 2023, 'Active'),
(9, 'ERC109', 9, 2017, 'Maintenance'),
(10, 'ERC110', 10, 2014, 'Active');

INSERT INTO hangars VALUES
(1, 'H1', 'North Zone', 5),
(2, 'H2', 'South Zone', 8),
(3, 'H3', 'East Wing', 6),
(4, 'H4', 'West Wing', 4),
(5, 'H5', 'Cargo Area', 10),
(6, 'H6', 'Repair Center', 7),
(7, 'H7', 'VIP Area', 2),
(8, 'H8', 'Maintenance Zone', 9),
(9, 'H9', 'Overflow Area', 12),
(10, 'H10', 'Remote Hangar', 3);

INSERT INTO employees VALUES
('SSN101', 'Ahmed Hassan', '0551234567', 3500, 'UN1001'),
('SSN102', 'Ali Salem', '0552223344', 4200, 'UN1002'),
('SSN103', 'Omar Khaled', '0553334455', 5000, 'UN1003'),
('SSN104', 'Mohammed Yasin', '0554445566', 3900, 'UN1004'),
('SSN105', 'Khaled Nasser', '0555556677', 4600, 'UN1005'),
('SSN106', 'Sami Abdullah', '0556667788', 5200, 'UN1006'),
('SSN107', 'Tariq Saleh', '0557778899', 4100, 'UN1007'),
('SSN108', 'Yousef Ibrahim', '0558889900', 3700, 'UN1008');

INSERT INTO technicians VALUES
(1, 'SSN101'),
(2, 'SSN102'),
(3, 'SSN104'),
(4, 'SSN105'),
(5, 'SSN106'),
(6, 'SSN107'),
(7, 'SSN108'),
(8, 'SSN103');

INSERT INTO tests VALUES
(1, 'Engine Test', 100),
(2, 'Hydraulic Test', 100),
(3, 'Electrical Systems', 100),
(4, 'Landing Gear Check', 100),
(5, 'Fuel System Test', 100),
(6, 'Cabin Pressure Test', 100),
(7, 'Navigation Test', 100),
(8, 'Emergency Equipment Check', 100),
(9, 'Wing Structural Test', 100),
(10, 'Avionics Test', 100);

INSERT INTO hangar_history VALUES
(1, 1, 1, '2026-05-01 08:00:00', '2026-05-02 10:00:00'),
(2, 2, 2, '2026-05-02 09:00:00', NULL),
(3, 3, 3, '2026-05-03 10:00:00', '2026-05-04 12:00:00'),
(4, 4, 4, '2026-05-04 11:00:00', NULL),
(5, 5, 5, '2026-05-05 07:00:00', '2026-05-06 09:00:00'),
(6, 6, 6, '2026-05-06 08:30:00', NULL),
(7, 7, 7, '2026-05-07 09:15:00', '2026-05-08 11:45:00'),
(8, 8, 8, '2026-05-08 10:00:00', NULL);




