/* 1. Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, 
 * который больше всех общался с нашим пользователем. */
use vk;

SELECT from_user_id, COUNT(*) FROM messages WHERE to_user_id=1 AND from_user_id IN (
	SELECT initiator_user_id FROM friend_requests WHERE (target_user_id = 1) AND status='approved'
	union
	SELECT target_user_id FROM friend_requests WHERE (initiator_user_id = 1) AND status='approved'
	)
GROUP BY from_user_id ORDER BY COUNT(*) DESC LIMIT 1;



/* 2. Подсчитать общее количество лайков, которые получили пользователи младше 11 лет. */

SELECT COUNT(*) AS likes FROM likes WHERE media_id IN ( 
	SELECT id FROM media WHERE user_id IN (
    SELECT user_id FROM `profiles` WHERE TIMESTAMPDIFF(YEAR, birthday, NOW())<11
    )
);



/* 3. Определить кто больше поставил лайков (всего): мужчины или женщины. */

SELECT 
	(SELECT gender from profiles WHERE profiles.user_id = likes.user_id) AS gender, COUNT(*) AS likes
    FROM likes GROUP BY gender ORDER BY COUNT(*) DESC LIMIT 1;
