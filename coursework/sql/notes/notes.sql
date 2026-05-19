SELECT *
FROM inspections i;

SELECT AVG(score)
FROM inspections i;

SELECT *, ROUND(score, 2)
FROM inspections i;

SELECT business_name, score
FROM inspections i
WHERE score < 80;

SELECT business_name, score
FROM inspections i
ORDER BY score ASC;

SELECT business_name, score
FROM inspections i
ORDER BY score DESC;
