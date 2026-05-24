USE `ex01`;

ALTER TABLE `building`
ADD CONSTRAINT `Fk_Host_Building`
FOREIGN KEY (`host_id`) REFERENCES `host` (`id`),
ADD CONSTRAINT `Fk_Contractor_Building`
FOREIGN KEY (`contractor_id`) REFERENCES `contractor`(`id`);


ALTER TABLE `work`
ADD CONSTRAINT `Fk_Building_Work`
FOREIGN KEY (`building_id`) REFERENCES `building` (`id`),
ADD CONSTRAINT `Fk_Worker_Work`
FOREIGN KEY (`worker_id`) REFERENCES `worker`(`id`);

ALTER TABLE `design`
ADD CONSTRAINT `Fk_Building_Design`
FOREIGN KEY (`building_id`) REFERENCES `building`(`id`),

ADD CONSTRAINT `Fk_Architect_Design`
FOREIGN KEY (`architect_id`) REFERENCES `architect`(`id`);


-- EX 03

SELECT * FROM `architect`;

SELECT `name`, `sex` FROM `architect`;

SELECT DISTINCT `birthday` FROM `architect`;

SELECT `name`, `birthday`
FROM `architect`
ORDER BY `birthday` ASC;

SELECT `name`, `birthday`
FROM `architect`
ORDER BY `birthday` DESC;

SELECT * FROM `building`
ORDER BY `cost` ASC, `name` DESC;

-- EX04:

SELECT * FROM `architect`
WHERE `name` = "le thanh tung";

SELECT `name`, `birthday`
FROM `worker`
WHERE `skill` = 'han'
   OR `skill` = 'dien';
   
SELECT `name`, `birthday`
FROM `worker`
WHERE (`skill` = 'han' OR `skill` = 'dien')
  AND `birthday` > 1948;
  
SELECT *
FROM `worker`
WHERE `birthday` + 20 > `year`;


-- CÁCH 1 : DÙNG OR
SELECT *
FROM `worker`
WHERE `birthday` = 1945
   OR `birthday` = 1940
   OR `birthday` = 1948;
   
-- CÁCH 2: DÙNG IN 
SELECT *
FROM `worker`
WHERE `birthday` IN (1945, 1940, 1948);


-- CÁCH 1: DÙNG BETWEEN 
SELECT *
FROM `building`
WHERE `cost` BETWEEN 200 AND 500;

-- CÁCH 2: DÙNG AND 
SELECT *
FROM `building`
WHERE `cost` >= 200 AND `cost` <= 500;


SELECT *
FROM `architect`
WHERE `name` LIKE 'nguyen%';

SELECT *
FROM `architect`
WHERE `name` LIKE '% anh %';

SELECT *
FROM `architect`
WHERE `name` LIKE 'th_';

SELECT *
FROM `contractor`
WHERE `phone` IS NULL;










