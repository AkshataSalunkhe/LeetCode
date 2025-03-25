SELECT user_id, name, mail
FROM users
WHERE mail LIKE '%@leetcode.com'
AND  mail not REGEXP '@.*@'
AND mail REGEXP '^[a-z]' 
AND mail NOT REGEXP '[&$#()^%=!*+]'; 