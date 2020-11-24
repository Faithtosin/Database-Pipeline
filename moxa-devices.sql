CREATE SCHEMA gui ;
CREATE TABLE gui.moxa_device 
(device_id SERIAL, ip_address VARCHAR(20), port int, device_name VARCHAR(50), password VARCHAR(50), PRIMARY KEY (device_id));


--insert
INSERT INTO gui.moxa_device (device_id, ip_address, port, device_name, password) VALUES
(1, '10.0.0.0', 502, 'Moxa Device 1', 'moxa123!'),
(2, '10.0.0.0', 652, 'Moxa Device 2', 'moxa1234!'),
(3, '10.0.0.0', 982, 'Moxa Device 3', 'moxa12345!'),
(4, '10.0.0.0', 682, 'Moxa Device 4', 'moxa12345!'),
(5, '10.0.0.0', 592, 'Moxa Device 5', 'moxa12345!'),
(6, '10.0.0.0', 792, 'Moxa Device 6', 'moxa12345!'),
(7, '10.0.0.0', 802, 'Belfast Moxa 1', 'moxaBelfast12345!'),
(8, '10.0.0.0', 805, 'Belfast Moxa 2', 'moxaBelfast12345!'),
(9, '10.0.0.0', 705, 'Belfast Moxa 3', 'moxaBelfast12345!'),
(10, '10.0.0.0', 792, 'Moxa Device 7', 'moxa12345!'),
(11, '10.0.0.0', 592, 'Moxa Device 8', 'moxa12345!'),
(12, '10.0.0.0', 502, 'Moxa Device 9', 'moxa12345!'),
(13, '10.0.0.0', 602, 'Moxa Device 10', 'moxa12345!'),
(14, '10.10.0.0', 982, 'Moxa Device 11', 'moxa12345!'),
(15, '10.10.0.0', 482, 'Moxa Device 12', 'moxa12345!'),
(16, '10.10.0.0', 772, 'Moxa Device 13', 'moxa12345!'),
(17, '10.10.0.0', 972, 'Moxa Device 14', 'moxa12345!');
COMMIT;

--verify
SELECT *
FROM gui.moxa_device;