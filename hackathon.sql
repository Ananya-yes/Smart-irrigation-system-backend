INSERT INTO irrigation_log (schedule_id, ACTION, TIMESTAMP) VALUES 
(1, 'Turn ON Valve', '2023-07-20 06:00:00'),
(1, 'Turn ON Motor', '2023-07-20 06:01:00'),
(1, 'Turn OFF Motor', '2023-07-20 07:00:00'),
(1, 'Turn OFF Valve', '2023-07-20 07:01:00');
-- Case 3: Power Unavailable At The Mid Of The Schedule
INSERT INTO irrigation_log (schedule_id, ACTION, TIMESTAMP) VALUES 
(3, 'Turn ON Valve', '2023-07-20 10:00:00'),
(3, 'Turn ON Motor', '2023-07-20 10:01:00'),
(3, 'Turn OFF Motor', '2023-07-20 10:30:00'),  -- Mid Time Power Cut Off
(3, 'Turn OFF Valve', '2023-07-20 10:31:00'),
(3, 'Turn ON Valve', '2023-07-20 10:45:00'),   -- Mid Time Power Resumes
(3, 'Turn ON Motor', '2023-07-20 10:46:00'),
(3, 'Turn OFF Motor', '2023-07-20 11:00:00'),
(3, 'Turn OFF Valve', '2023-07-20 11:01:00');
-- Check actions at the start of the schedule
SELECT * FROM irrigation_log 
WHERE schedule_id = 2;
SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND ACTION = 'Turn ON Valve' AND TIMESTAMP = '2023-07-20 10:00:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND ACTION = 'Turn ON Motor' AND TIMESTAMP = '2023-07-20 10:01:00';

-- Check actions when power is cut off
SELECT * FRirrigation_logirrigation_scheduleirrigation_scheduleirrigation_schedulestart_timeirrigation_logpesOM irrigation_log 
WHERE schedule_id = 3 AND ACTION = 'Turn OFF Motor' AND TIMESTAMP = '2023-07-20 10:30:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND ACTION = 'Turn OFF Valve' AND TIMESTAMP = '2023-07-20 10:31:00';

-- Check actions when power resumes
SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND ACTION = 'Turn ON Valve' AND TIMESTAMP = '2023-07-20 10:45:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND ACTION = 'Turn ON Motor' AND TIMESTAMP = '2023-07-20 10:46:00';

-- Check actions at the end of the schedule
SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND ACTION = 'Turn OFF Motor' AND TIMESTAMP = '2023-07-20 11:00:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND ACTION = 'Turn OFF Valve' AND TIMESTAMP = '2023-07-20 11:01:00';
SELECT * FROM irrigation_log 
WHERE schedule_id = 1 AND ACTION = 'Turn ON Valve' AND TIMESTAMP = '2023-07-20 06:00:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 1 AND ACTION = 'Turn ON Motor' AND TIMESTAMP = '2023-07-20 06:01:00';

-- Check actions at the end of the schedule
SELECT * FROM irrigation_log 
WHERE schedule_id = 1 AND ACTION = 'Turn OFF Motor' AND TIMESTAMP = '2023-07-20 07:00:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 1 AND ACTION = 'Turn OFF Valve' AND TIMESTAMP = '2023-07-20 07:01:00';
INSERT INTO irrigation_log (schedule_id, device_id, ACTION, TIMESTAMP) VALUES 
(1, 1, 'Turn ON Valve', '2023-07-20 06:00:00'),
(1, 1, 'Turn ON Motor', '2023-07-20 06:01:00'),
(1, 1, 'Turn OFF Motor', '2023-07-20 07:00:00'),
(1, 1, 'Turn OFF Valve', '2023-07-20 07:01:00'),
(1, 2, 'Turn ON Valve', '2023-07-20 06:00:00'),
(1, 2, 'Turn ON Motor', '2023-07-20 06:01:00'),
(1, 2, 'Turn OFF Motor', '2023-07-20 07:00:00'),
(1, 2, 'Turn OFF Valve', '2023-07-20 07:01:00');

-- Case 3: Power Unavailable At The Mid Of The Schedule
INSERT INTO irrigation_log (schedule_id, device_id, ACTION, TIMESTAMP) VALUES 
(3, 1, 'Turn ON Valve', '2023-07-20 10:00:00'),
(3, 1, 'Turn ON Motor', '2023-07-20 10:01:00'),
(3, 1, 'Turn OFF Motor', '2023-07-20 10:30:00'),  -- Mid Time Power Cut Off
(3, 1, 'Turn OFF Valve', '2023-07-20 10:31:00'),
(3, 1, 'Turn ON Valve', '2023-07-20 10:45:00'),   -- Mid Time Power Resumes
(3, 1, 'Turn ON Motor', '2023-07-20 10:46:00'),
(3, 1, 'Turn OFF Motor', '2023-07-20 11:00:00'),
(3, 1, 'Turn OFF Valve', '2023-07-20 11:01:00'),
(3, 2, 'Turn ON Valve', '2023-07-20 10:00:00'),
(3, 2, 'Turn ON Motor', '2023-07-20 10:01:00'),
(3, 2, 'Turn OFF Motor', '2023-07-20 10:30:00'),  -- Mid Time Power Cut Off
(3, 2, 'Turn OFF Valve', '2023-07-20 10:31:00'),
(3, 2, 'Turn ON Valve', '2023-07-20 10:45:00'),   -- Mid Time Power Resumes
(3, 2, 'Turn ON Motor', '2023-07-20 10:46:00'),
(3, 2, 'Turn OFF Motor', '2023-07-20 11:00:00'),
(3, 2, 'Turn OFF Valve', '2023-07-20 11:01:00');
-- Check actions at the start of the schedule for Device 1
SELECT * FROM irrigation_log 
WHERE schedule_id = 1 AND device_id = 1 AND ACTION = 'Turn ON Valve' AND TIMESTAMP = '2023-07-20 06:00:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 1 AND device_id = 1 AND ACTION = 'Turn ON Motor' AND TIMESTAMP = '2023-07-20 06:01:00';

-- Check actions at the end of the schedule for Device 1
SELECT * FROM irrigation_log 
WHERE schedule_id = 1 AND device_id = 1 AND ACTION = 'Turn OFF Motor' AND TIMESTAMP = '2023-07-20 07:00:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 1 AND device_id = 1 AND ACTION = 'Turn OFF Valve' AND TIMESTAMP = '2023-07-20 07:01:00';

-- Check actions at the start of the schedule for Device 2
SELECT * FROM irrigation_log 
WHERE schedule_id = 1 AND device_id = 2 AND ACTION = 'Turn ON Valve' AND TIMESTAMP = '2023-07-20 06:00:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 1 AND device_id = 2 AND ACTION = 'Turn ON Motor' AND TIMESTAMP = '2023-07-20 06:01:00';

-- Check actions at the end of the schedule for Device 2
SELECT * FROM irrigation_log 
WHERE schedule_id = 1 AND device_id = 2 AND ACTION = 'Turn OFF Motor' AND TIMESTAMP = '2023-07-20 07:00:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 1 AND device_id = 2 AND ACTION = 'Turn OFF Valve' AND TIMESTAMP = '2023-07-20 07:01:00';
-- Check actions at the start of the schedule for Device 1
SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND device_id = 1 AND ACTION = 'Turn ON Valve' AND TIMESTAMP = '2023-07-20 10:00:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND device_id = 1 AND ACTION = 'Turn ON Motor' AND TIMESTAMP = '2023-07-20 10:01:00';

-- Check actions when power is cut off for Device 1
SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND device_id = 1 AND ACTION = 'Turn OFF Motor' AND TIMESTAMP = '2023-07-20 10:30:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND device_id = 1 AND ACTION = 'Turn OFF Valve' AND TIMESTAMP = '2023-07-20 10:31:00';

-- Check actions when power resumes for Device 1
SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND device_id = 1 AND ACTION = 'Turn ON Valve' AND TIMESTAMP = '2023-07-20 10:45:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND device_id = 1 AND ACTION = 'Turn ON Motor' AND TIMESTAMP = '2023-07-20 10:46:00';

-- Check actions at the end of the schedule for Device 1
SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND device_id = 1 AND ACTION = 'Turn OFF Motor' AND TIMESTAMP = '2023-07-20 11:00:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND device_id = 1 AND ACTION = 'Turn OFF Valve' AND TIMESTAMP = '2023-07-20 11:01:00';

-- Repeat for Device 2
SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND device_id = 2 AND ACTION = 'Turn ON Valve' AND TIMESTAMP = '2023-07-20 10:00:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND device_id = 2 AND ACTION = 'Turn ON Motor' AND TIMESTAMP = '2023-07-20 10:01:00';

-- Check actions when power is cut off for Device 2
SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND device_id = 2 AND ACTION = 'Turn OFF Motor' AND TIMESTAMP = '2023-07-20 10:30:00';

SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND device_id = 2 AND ACTION = 'Turn OFF Valve' AND TIMESTAMP = '2023-07-20 10:31:00';

-- Check actions when power resumes for Device 2
SELECT * FROM irrigation_log 
WHERE schedule_id = 3 AND device_id = 2 AND ACTION = 'Turn ON Valve' AND TIMESTAMP = '2023-07-20 10:45:00';

SELECT * FROM irrigation_log 
WHERE SCHEDULE
