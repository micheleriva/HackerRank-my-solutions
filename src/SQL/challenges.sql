SELECT h.hacker_id, h.name, count(c.challenge_id) AS total
FROM hackers h, challenges c 
WHERE h.hacker_id=c.hacker_id
GROUP BY h.hacker_id, h.name 
HAVING count(c.challenge_id) IN 
  (SELECT max(total) 
   FROM 
    (SELECT count(*) AS total 
     FROM challenges 
     GROUP BY hacker_id) 
  )
  OR count(c.challenge_id) IN 
  (SELECT total 
    FROM (SELECT count(*) AS total 
          FROM challenges GROUP BY hacker_id) 
    GROUP BY total 
    HAVING count(total) = 1 
)
ORDER BY count(c.challenge_id) DESC, h.hacker_id ;