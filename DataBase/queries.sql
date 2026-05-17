--1)Display Plane Number and Model Name of all airplanes in the database.
SELECT e.plane_no , d.model_name
FROM airplanes e
JOIN plane_models d ON e.model_id = d.model_id;

--2)List the full names and phone numbers of all employees who are technicians.
SELECT e.full_name, e.phone
FROM employees e
JOIN technicians t ON e.employee_id = t.employee_id;

--3)List the full name and phone number of all employees who are traffic controllers.
SELECT e.full_name, e.phone
FROM employees e
JOIN traffic_controllers tc ON e.employee_id = tc.employee_id;

--4)List Model Name and Hnager Number of all planes that are currently in a hangar.
SELECT d.model_name, h.hangar_no
FROM airplanes e
JOIN plane_models d ON e.model_id = d.model_id
JOIN hangar_history hh ON e.plane_id = hh.plane_id
JOIN hangars h ON hh.hangar_id = h.hangar_id
WHERE hh.out_time IS NULL;

--5)List the full name of all technicians who have expertise in the plane model with the highest maximum capacity.
SELECT e.full_name
FROM employees e
JOIN technicians t ON e.employee_id = t.employee_id
JOIN technician_expertise te ON t.technician_id = te.technician_id
JOIN plane_models pm ON te.model_id = pm.model_id
WHERE pm.max_capacity = (SELECT MAX(max_capacity) FROM plane_models);