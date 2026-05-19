--1)Display Plane Number and Model Name of all airplanes in the database.
SELECT a.plane_no , pm.model_name
FROM airplanes a
JOIN plane_models pm ON a.model_id = pm.model_id;

--2)List the full names and phone numbers of all employees who are technicians.
SELECT e.full_name, e.phone
FROM employees e
JOIN technicians t ON e.employee_id = t.employee_id;

--3)List the full name and phone number of all employees who are traffic controllers.
SELECT e.full_name, e.phone
FROM employees e
JOIN traffic_controllers tc ON e.employee_id = tc.employee_id;

--4)List Model Name and Hangar Number of all planes that are currently in a hangar.
SELECT pm.model_name, h.hangar_no
FROM airplanes a
JOIN plane_models pm ON a.model_id = pm.model_id
JOIN hangar_history hh ON a.plane_id = hh.plane_id
JOIN hangars h ON hh.hangar_id = h.hangar_id
WHERE hh.out_time IS NULL;

--5)List the full name of all technicians who have expertise in the plane model with the highest maximum capacity.
SELECT e.full_name
FROM employees e
JOIN technicians t ON e.employee_id = t.employee_id
JOIN technician_expertise te ON t.technician_id = te.technician_id
JOIN plane_models pm ON te.model_id = pm.model_id
WHERE pm.max_capacity = (SELECT MAX(max_capacity) FROM plane_models);

--6)Display every record of flights in the database.
SELECT *
FROM flights;

--7) List the Model name of planes with a score of 85 or higher in any test.
SELECT DISTINCT d.model_name
FROM plane_models d
JOIN airplanes a ON d.model_id = a.model_id
JOIN test_records tr ON a.plane_id = tr.plane_id
WHERE tr.score >= 85;

--8) List Employess with salary higher than 5000.
SELECT full_name, salary
FROM employees
WHERE salary > 5000;

--9) List Full names of traffic controllers who have had a medical exam in the last 6 months.
SELECT e.full_name
FROM employees e
JOIN traffic_controllers tc ON e.employee_id = tc.employee_id
WHERE tc.medical_exam_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

--10) List the full names of technicians who have expertise in the plane model with the lowest maximum capacity.
SELECT e.full_name
FROM employees e
JOIN technicians t ON e.employee_id = t.employee_id
JOIN technician_expertise te ON t.technician_id = te.technician_id
JOIN plane_models pm ON te.model_id = pm.model_id
WHERE pm.max_capacity = (SELECT MIN(max_capacity) FROM plane_models);

--11) Display the test that took more than 3 hours and had a score less than 80.
SELECT t.test_name, tr.hours_spent, tr.score
FROM tests t
JOIN test_records tr ON t.test_id = tr.test_id
WHERE tr.hours_spent > 3 AND tr.score < 80;

--12) List the flights that took more than 3 hours.
SELECT flight_no, departure_time, arrival_time,
       TIMESTAMPDIFF(HOUR, departure_time, arrival_time) AS flight_time_hours
FROM flights
WHERE TIMESTAMPDIFF(HOUR, departure_time, arrival_time) > 3;

--13) Display the hangar with the biggest capacity.
SELECT hangar_no, capacity,location
FROM hangars
WHERE capacity = (SELECT MAX(capacity) FROM hangars);

--14) Display the full name of the traffic controller who controlled the flight with the longest duration.
SELECT e.full_name, f.flight_no, TIMESTAMPDIFF(HOUR, f.departure_time, f.arrival_time) AS flight_duration_hours
FROM employees e
JOIN traffic_controllers tc ON e.employee_id = tc.employee_id
JOIN flights f ON tc.controller_id = f.controller_id
ORDER BY flight_duration_hours DESC
LIMIT 1;

--15) Display the full name of the technician who performed the most maintenance records.
SELECT e.full_name, COUNT(m.maintenance_id) AS maintenance_count
FROM employees e
JOIN technicians t ON e.employee_id = t.employee_id
JOIN maintenance_records m ON t.technician_id = m.technician_id
GROUP BY e.full_name
ORDER BY maintenance_count DESC
LIMIT 1;