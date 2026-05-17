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
('EID101', 'Ahmed Hassan', '0551234567', 3500, 'UN1001'),
('EID102', 'Ali Salem', '0552223344', 4200, 'UN1002'),
('EID103', 'Murat Yildiz', '0553334455', 5000, 'UN1003'),
('EID104', 'Mohammed Yasin', '0554445566', 3900, 'UN1004'),
('EID105', 'Khaled Nasser', '0555556677', 4600, 'UN1005'),
('EID106', 'Arda Demir', '0556667788', 5200, 'UN1006'),
('EID107', 'Tariq Saleh', '0557778899', 4100, 'UN1007'),
('EID108', 'Yousef Ibrahim', '0558889900', 3700, 'UN1008'),
('EID109', 'Omar Khalil', '0559991122', 4800, 'UN1009'),
('EID110', 'Hakan Kaya', '0551112233', 5100, 'UN1010'),
('EID111', 'Ibrahim Mansour', '0552224455', 4700, 'UN1011');

INSERT INTO technicians VALUES
(1, 'EID101'),
(2, 'EID102'),
(3, 'EID104'),
(4, 'EID105'),
(5, 'EID106'),
(6, 'EID107'),
(7, 'EID108'),
(8, 'EID103');

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

INSERT INTO traffic_controllers VALUES
(1, 'EID109', '2026-03-15'),
(2, 'EID110', '2026-04-10'),
(3, 'EID111', '2026-02-20');

INSERT INTO maintenance_records VALUES
(1, 1, 1, '2026-05-01', 'Engine maintenance', 500.00),
(2, 2, 2, '2026-05-02', 'Hydraulic system check', 300.00),
(3, 3, 8, '2026-05-03', 'Electrical systems inspection', 400.00),
(4, 4, 3, '2026-05-04', 'Landing gear maintenance', 600.00),
(5, 5, 4, '2026-05-05', 'Fuel system maintenance', 700.00),
(6, 6, 5, '2026-05-06', 'Cabin pressure maintenance', 250.00),
(7, 7, 6, '2026-05-07', 'Navigation system repair', 450.00),
(8, 8, 7, '2026-05-08', 'Emergency equipment service', 350.00),
(9, 9, 1, '2026-05-09', 'Wing structure maintenance', 800.00),
(10, 10, 2, '2026-05-10', 'Avionics repair', 650.00);

INSERT INTO technician_expertise VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 4),
(3, 5),
(3, 10),
(4, 6),
(5, 7),
(5, 8),
(6, 9),
(7, 1),
(7, 2),
(8, 3),
(8, 7);

INSERT INTO test_records VALUES
(1, 1, 1, 1, '2026-05-01', 2.5, 88),
(2, 2, 2, 2, '2026-05-02', 3.0, 76),
(3, 3, 8, 3, '2026-05-03', 2.0, 91),
(4, 4, 3, 4, '2026-05-04', 4.0, 84),
(5, 5, 4, 5, '2026-05-05', 1.5, 79),
(6, 6, 5, 6, '2026-05-06', 2.0, 95),
(7, 7, 6, 7, '2026-05-07', 3.5, 89),
(8, 8, 7, 8, '2026-05-08', 2.5, 92),
(9, 9, 1, 9, '2026-05-09', 4.5, 73),
(10, 10, 2, 10, '2026-05-10', 3.0, 86);


