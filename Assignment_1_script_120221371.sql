
-- DDL Section : Creat Database and table.

CREATE DATABASE IF NOT EXISTS galactic_rentals;

CREATE TABLE rentals(
rental_id INT,
customer varchar(100),
costume varchar(100),
rent_date DATETIME,
return_date DATETIME,
daily_rate FLOAT,
created_at DATETIME,
updated_at DATETIME
);

-- adding constraints
CREATE TABLE rentals(
rental_id INT PRIMARY KEY,
customer varchar(100) NOT NULL,
costume varchar(100) NOT NULL,
rent_date DATETIME NOT NULL,
return_date DATETIME DEFAULT NULL,
daily_rate FLOAT NOT NULL CHECK (daily_rate > 0),
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
CHECK (return_date IS NULL OR return_date >= rent_date)
);

-- DML Section : Insert Data

-- DML Section : Insert Data
--(Bulk Insert) ادخال البيانات باستخدام
--Insert ادخال جميع الصفوف في الجدول مرة واحدة بدل ادخال كل صف لوحده بواسطة 
INSERT INTO rentals
(rental_id,customer,costume,rent_datereturn_date,daily_rate,created_at,updated_at)
VALUES
(1,'Alice Johnson','Imperial Officer','2025-04-01 10:00:00','2025-04-03 15:30:00',25.00,NOW(),NOW()),
(2,'Bob Smith','Galaxy Explorer','2025-04-02 09:15:00','2025-04-05 11:00:00',30.00,NOW(),NOW()),
(3,'Carol Lee','Time Traveler','2025-04-05 14:45:00','2025-04-06 16:00:00',20.00,NOW(),NOW()),
(4,'Dave Martinez','Robot Droid','2025-04-07 13:00:00','2025-04-12 13:00:00',28.50,NOW(),NOW()),
(5,'Eva Wang','Alien Monarch','2025-04-10 12:10:00','2025-04-11 18:20:00',22.00,NOW(),NOW()),
(6,'Frank Davis','Imperial Officer','2025-04-12 08:00:00','2025-04-15 09:00:00',25.00, NOW(), NOW()),
(7,'Grace Kim','Galaxy Explorer','2025-04-15 10:20:00','2025-04-17 12:35:00',30.00, NOW(), NOW()),
(8,'Henry Brown','Robot Droid', '2025-04-18 11:00:00','2025-04-19 14:15:00', 28.50, NOW(), NOW()),
(9,'Isabel Clark','Time Traveler','2025-04-20 09:30:00', '2025-04-23 10:00:00',20.00, NOW(),NOW()),
(10,'John Doe','Alien Monarch','2025-04-22 14:00:00',NULL, 22.00,NOW(),NOW());


-- قمت بكتابة هذه الاكواد قبل معرفتي بوجود بونص
INSERT INTO rentals(
    rental_id,
    customer,
    costume,
    rent_date,
    return_date,
    daily_rate,
    created_at,
    updated_at
    )
    VALUES(
        1,
        'Alice Johnson',
        'Imperial Officer',
        '2025-04-01 10:00:00',
        '2025-04-03 15:30:00',
        25.00,
        NOW(),
        NOW()
        );

INSERT INTO rentals(
    rental_id,
    customer,
    costume,
    rent_date,
    return_date,
    daily_rate,
    created_at,
    updated_at
    )
    VALUES(
        2,
        'Bob Smith',
        'Galaxy Explorer',
        '2025-04-02 09:15:00',
        '2025-04-05 11:00:00',
        30.00,
        NOW(),
        NOW()
        );

INSERT INTO rentals(
    rental_id,
    customer,
    costume,
    rent_date,
    return_date,
    daily_rate,
    created_at,
    updated_at
    )
    VALUES(
        3,
        'Carol Lee',
        'Time Traveler',
        '2025-04-05 14:45:00',
        '2025-04-06 16:00:00',
        20.00,
        NOW(),
        NOW()
        );

INSERT INTO rentals(
    rental_id,
    customer,
    costume,
    rent_date,
    return_date,
    daily_rate,
    created_at,
    updated_at
    )
    VALUES(
        4,
        'Dave Martinez',
        'Robot Droid',
        '2025-04-07 13:00:00',
        '2025-04-12 13:00:00',
        28.50,
        NOW(),
        NOW()
        );

INSERT INTO rentals(
    rental_id,
    customer,
    costume,
    rent_date,
    return_date,
    daily_rate,
    created_at,
    updated_at
    )
    VALUES(
        5,
        'Eva Wang',
        'Alien Monarch',
        '2025-04-10 12:10:00',
        '2025-04-11 18:20:00',
        22.00,
        NOW(),
        NOW()
        );

INSERT INTO rentals(
    rental_id,
    customer,
    costume,
    rent_date,
    return_date,
    daily_rate,
    created_at,
    updated_at
    )
    VALUES(
        6,
        'Frank Davis',
        'Imperial Officer',
        '2025-04-12 08:00:00',
        '2025-04-15 09:00:00',
        25.00,
        NOW(),
        NOW()
        );

INSERT INTO rentals(
    rental_id,
    customer,
    costume,
    rent_date,
    return_date,
    daily_rate,
    created_at,
    updated_at
    )
    VALUES(
        7,
        'Grace Kim',
        'Galaxy Explorer',
        '2025-04-15 10:20:00',
        '2025-04-17 12:35:00',
        30.00,
        NOW(),
        NOW()
        );

INSERT INTO rentals(
    rental_id,
    customer,
    costume,
    rent_date,
    return_date,
    daily_rate,
    created_at,
    updated_at
    )
    VALUES(
        8,
        'Henry Brown',
        'Robot Droid',
        '2025-04-18 11:00:00',
        '2025-04-19 14:15:00',
        28.50,
        NOW(),
        NOW()
        );

INSERT INTO rentals(
    rental_id,
    customer,
    costume,
    rent_date,
    return_date,
    daily_rate,
    created_at,
    updated_at
    )
    VALUES(
        9,
        'Isabel Clark',
        'Time Traveler',
        '2025-04-20 09:30:00',
        '2025-04-23 10:00:00',
        20.00,
        NOW(),
        NOW()
        );

INSERT INTO rentals(
    rental_id,
    customer,
    costume,
    rent_date,
    return_date,
    daily_rate,
    created_at,
    updated_at
    )
    VALUES(
        10,
        'John Doe',
        'Alien Monarch',
        '2025-04-22 14:00:00',
        NULL,
        22.00,
        NOW(),
        NOW()
        );

-- Query Section.

-- عرض جميع البيانات
SELECT *
FROM rentals;	

-- عدد مرات استئجار كل زي
SELECT costume, COUNT(*) AS rentals_count
FROM rentals
GROUP BY costume
ORDER BY rentals_count DESC;

-- الاستئجارات المتاخرة 3 ايام بعد تاريخ الاستئجار
SELECT *
FROM rentals
WHERE DATEDIFF(return_date, rent_date) > 3;

--الزبائن الذين استاجروا
SELECT DISTINCT customer
    FROM rentals