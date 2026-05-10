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
    ssn VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100),
    phone VARCHAR(20),
    salary DECIMAL(10,2),
    union_membership_no VARCHAR(50)
);
CREATE TABLE hangar_history (
    history_id INT,
    plane_id INT,
    hangar_id INT,
    in_time DATETIME,
    out_time DATETIME
);

CREATE TABLE technicians (
    technician_id INT PRIMARY KEY,
    ssn VARCHAR(20),
    FOREIGN KEY (ssn) REFERENCES employees(ssn)
);

CREATE TABLE tests (
    test_id INT PRIMARY KEY,
    test_name VARCHAR(100),
    max_score INT
);



