CREATE TABLE airplanes (
  plane_id INT PRIMARY KEY AUTO_INCREMENT,
  model VARCHAR(50),
  capacity INT
);

CREATE TABLE technicians (
    tech_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    ssn VARCHAR(20)
);