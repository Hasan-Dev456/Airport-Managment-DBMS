USE airport_management; 
CREATE TABLE plane_models (
    model_id INT PRIMARY KEY,
    model_name VARCHAR(100),
    manufacturer VARCHAR(100),
    max_capacity INT
);

CREATE TABLE airplanes (
    plane_id INT PRIMARY KEY,
    plane_no VARCHAR(20),
    model_id INT,
    manufacture_year INT,
    status VARCHAR(50),
    FOREIGN KEY (model_id) REFERENCES plane_models(model_id)
);

CREATE TABLE hangars (
    hangar_id INT PRIMARY KEY,
    hangar_no VARCHAR(20),
    location VARCHAR(100),
    capacity INT
);

CREATE TABLE employees (
    employee_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100),
    phone VARCHAR(20),
    salary DECIMAL(10,2),
    union_membership_no VARCHAR(50)
);

CREATE TABLE hangar_history (
    history_id INT PRIMARY KEY,
    plane_id INT,
    hangar_id INT,
    in_time DATETIME,
    out_time DATETIME,
    FOREIGN KEY (plane_id) REFERENCES airplanes(plane_id),
    FOREIGN KEY (hangar_id) REFERENCES hangars(hangar_id)
);

CREATE TABLE technicians (
    technician_id INT PRIMARY KEY,
    employee_id VARCHAR(20),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE tests (
    test_id INT PRIMARY KEY,
    test_name VARCHAR(100),
    max_score INT
);

CREATE TABLE technician_expertise (
    technician_id INT,
    model_id INT,
    PRIMARY KEY (technician_id, model_id),
    FOREIGN KEY (technician_id) REFERENCES technicians(technician_id),
    FOREIGN KEY (model_id) REFERENCES plane_models(model_id)
);

CREATE TABLE traffic_controllers (
    controller_id INT PRIMARY KEY,
    employee_id VARCHAR(20),
    medical_exam_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE airplane_tests (
    airplane_test_id INT PRIMARY KEY,
    plane_id INT,
    technician_id INT,
    test_id INT,
    test_date DATE,
    hours_spent DECIMAL(5,2),
    score INT,
    FOREIGN KEY (plane_id) REFERENCES airplanes(plane_id),
    FOREIGN KEY (technician_id) REFERENCES technicians(technician_id),
    FOREIGN KEY (test_id) REFERENCES tests(test_id)
);

CREATE TABLE flights (
    flight_id INT PRIMARY KEY,
    plane_id INT,
    flight_no VARCHAR(20),
    departure_airport VARCHAR(100),
    arrival_airport VARCHAR(100),
    departure_time DATETIME,
    arrival_time DATETIME,
    FOREIGN KEY (plane_id) REFERENCES airplanes(plane_id)
);

CREATE TABLE maintenance_records (
    maintenance_id INT PRIMARY KEY,
    plane_id INT,
    technician_id INT,
    maintenance_date DATE,
    description TEXT,
    cost DECIMAL(10,2),
    FOREIGN KEY (plane_id) REFERENCES airplanes(plane_id),
    FOREIGN KEY (technician_id) REFERENCES technicians(technician_id)
);