
--postgreSQL load script

-- Copyright 2016 Amazon.com, Inc. or its affiliates.
-- All Rights Reserved.
--
-- Licensed under the Apache License, Version 2.0 (the "License").
-- You may not use this file except in compliance with the License.
-- A copy of the License is located at
--
--    http://aws.amazon.com/apache2.0/
--
-- or in the "license" file accompanying this file.
-- This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
-- either express or implied. See the License for the specific language governing permissions
-- and limitations under the License.


--create schema and table
--CREATE SCHEMA amzn ;
--CREATE TABLE amzn.serverless_test
--(hello VARCHAR(6), world VARCHAR (6));
        
CREATE SCHEMA gui ;
CREATE TABLE gui.moxa_device 
(device_id SERIAL, ip_address VARCHAR(20), port int, device_name VARCHAR(50), password VARCHAR(50), PRIMARY KEY (device_id));
CREATE TABLE gui.signal 
(signal_id SERIAL, signal_name VARCHAR(50), signal_type VARCHAR(50), signal_max_kw int, device_id int NOT NULL, channel_id int, portfolio_id VARCHAR(50), registration_id VARCHAR(50), PRIMARY KEY (signal_id), FOREIGN KEY (device_id) REFERENCES gui.moxa_device(device_id));

--insert
        --INSERT INTO amzn.serverless_test (hello, world)
        --VALUES('hello1', 'world1');
        --INSERT INTO amzn.serverless_test (hello, world)
        --VALUES('hello2', 'world2');
        --COMMIT;
        
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


INSERT INTO gui.signal (signal_id, signal_name, signal_type, signal_max_kw, device_id, channel_id) VALUES
(1, "AE1 - Availability", "Availability", 120000, 1, 3),
(2, "AE1 - DR Achieved", "DR Achieved", 90000, 1, 2),
(3, "AE1 - Gen Achieved", "Gen Achieved", 40000, 1, 1),
(4, "AE1 - Lisheen Gen Achieved", "Gen Achieved", 8960, 1, 4),
(5, "AE1 - Microsoft Gen Achieved", "Gen Achieved", 36265, 2, 1),
(6, "AE1 - AIB Gen Achieved", "Gen Achieved", 6000, 2, 2),
(8, "AE1 - Lisheen Combined Achieved", "Combined Achieved", 12000, 2, 3),
(9, "AE1 - Tara Combined Achieved", "Combined Achieved", 10990, 2, 4),
(10, "AE1 - Masonite Combined Achieved", "DR Achieved", 10000, 3, 1),
(7, "AE1 - MSD Brinny Gen Achieved", "Gen Achieved", 10060, 3, 2),
(19, "AE4 - Availability", "Availability", 37049, 3, 3),
(20, "AE4 - DR Achieved", "DR Achieved", 10158, 3, 4),
(13, "AE2 - Availability", "Availability", 20770, 4, 1),
(14, "AE2 - DR Achieved", "DR Achieved", 10385, 4, 2),
(15, "AE2 - Gen Achieved", "Gen Achieved", 20770, 4, 3),
(16, "AE3 - Availability", "Availability", 37386, 4, 4),
(17, "AE3 - DR Achieved", "DR Achieved", 10325, 5, 1),
(18, "AE3 - Gen Achieved", "Gen Achieved", 37195, 5, 2),
(21, "AE4 - Gen Achieved", "Gen Achieved", 36283, 5, 3),
(22, "AE5 - Availability", "Availability", 20500, 5, 4),
(23, "AE5 - DR Achieved ", "DR Achieved", 10100, 6, 1),
(24, "AE5 - Gen Achieved ", "Gen Achieved", 20250, 6, 2),
(25, "AEA - Availability", "Availability", 30000, 7, 1),
(26, "AEA - DR Achieved", "DR Achieved", 30000, 7, 3),
(27, "AEA - Gen Achieved", "Gen Achieved", 30000, 7, 2),
(60, "EN1 - Availability", "Availability", 20000, 10, 1),
(61, "EN1 - DR Achieved", "DR Achieved", 20000, 10, 2),
(62, "EN1 - Gen Achieved", "Gen Achieved", 20000, 10, 3),
(63, "EN2 - Availability", "Availability", 20000, 10, 4),
(44, "EN2 - DR Achieved", "DR Achieved", 20000, 11, 1),
(45, "EN2 - Gen Achieved", "Gen Achieved", 20000, 11, 2),
(46, "EN3 - Availability", "Availability", 20000, 11, 3),
(47, "EN3 - DR Achieved", "DR Achieved", 20000, 11, 4),
(48, "EN3 - Gen Achieved", "Gen Achieved", 20000, 12, 1),
(49, "EN4 - Availability", "Availability", 20000, 12, 2),
(50, "EN4 - DR Achieved", "DR Achieved", 20000, 12, 3),
(51, "EN4 - Gen Achieved", "Gen Achieved", 20000, 12, 4),
(38, "Amazon Dub 53 - Gen Achieved", "DR Achieved", 12000, 13, 1),
(39, "Amazon Dub 56 - Gen Achieved", "Gen Achieved", 8000, 13, 2),
(52, "EN5 - Availability", "Availability", 20000, 13, 3),
(53, "EN5 - DR Achieved", "DR Achieved", 20000, 13, 4),
(34, "EN5 - Gen Achieved", "Gen Achieved", 20000, 14, 1),
(35, "EN6 - Availability", "Availability", 15000, 14, 2),
(36, "EN6 - DR Achieved", "DR Achieved", 15000, 14, 3),
(37, "EN6 - Gen Achieved", "Gen Achieved", 15000, 14, 4),
(59, "AE1 FFR", "Availbility", 30000, 15, 1),
(54, "AE1 POR", "Availability", 30000, 15, 2),
(55, "AE1 SOR", "Availability", 30000, 15, 3),
(56, "AE1 TOR", "Availability", 30000, 15, 4),
(58, "AE1 FR DR Achieved", "FR DR Achieved", 30000, 16, 1),
(57, "AE1 FR Total", "Availability", 100000, 16, 2);
COMMIT;

--verify
        SELECT *
        FROM gui.moxa_device;


