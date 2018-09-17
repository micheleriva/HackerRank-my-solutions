SELECT h.hacker_id, h.name
FROM submissions s
INNER JOIN challenges c
ON s.challenge_id = c.challenge_id
INNER JOIN difficulty d
ON c.difficulty_level = d.difficulty_level 
INNER JOIN hackers h
ON s.hacker_id = h.hacker_id
WHERE s.score = d.score AND c.difficulty_level = d.difficulty_level
GROUP BY h.hacker_id, h.name
HAVING count(s.hacker_id) > 1
ORDER BY count(s.hacker_id) DESC, s.hacker_id ASC