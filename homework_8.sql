/* 1. Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, 
 * который больше всех общался с выбранным пользователем (написал ему сообщений).*/
USE vk;

SELECT m.from_user_id, COUNT(*) AS cnt 
	FROM messages m 
INNER JOIN friend_requests f ON (
	(f.initiator_user_id = m.from_user_id AND f.target_user_id = 1) OR 
	(f.target_user_id = m.from_user_id AND f.initiator_user_id = 1)
	) 
WHERE f.status='approved'
GROUP BY m.from_user_id 
ORDER BY cnt DESC 
LIMIT 1;



/* 2. Подсчитать общее количество лайков, которые получили пользователи младше 11 лет. */

SELECT COUNT(*) AS likes
	FROM likes l 
JOIN media m ON (l.media_id = m.id)
JOIN `profiles` p ON (p.user_id = m.user_id)
WHERE TIMESTAMPDIFF(YEAR, p.birthday, NOW()) < 11;
	



/* 3. Определить кто больше поставил лайков (всего): мужчины или женщины. */

SELECT 
	p.gender AS gender,
	COUNT(*) AS likes
FROM `profiles` p 
JOIN likes l ON (l.user_id = p.user_id)
GROUP BY gender 
ORDER BY likes DESC 
LIMIT 1;


SELECT 
	m.filename,
	CONCAT(u.firstname, ' ', u.lastname) AS owner,
	COUNT(*) AS total_likes
	FROM media m
	JOIN users u ON u.id = m.user_id
	JOIN likes l ON l.media_id = m.id
-- WHERE u.id=1
GROUP BY m.id
UNION 



SELECT 
	m.filename,
	CONCAT(u.firstname, ' ', u.lastname) AS owner,
	COUNT(*) AS total_likes
	FROM media m
	JOIN users u ON u.id = m.user_id
	JOIN likes l ON (l.media_id = m.id AND )
GROUP BY m.id;




