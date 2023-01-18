
use ig_clone;

--  Q2-  We want to reward the user who has been around the longest, Find the 5 oldest users.
       select * from users 
       order by created_at 
       limit 5;
       
--  Q3   To understand when to run the ad campaign, figure out the day of the week most users register on? 
       select dayname(created_at) as day, count(*) as total_users_registered
       from users 
       group by day
       order by total_users_registered desc
       limit 1;
       
 --   Q4 --  To target inactive users in an email ad campaign, find the users who have never posted a photo.
 select users.id, users.username,photos.image_url 
 from users left join photos
 on users.id= photos.user_id
 where image_url is null;
 
 
---   There are two ways to find the count of the users who never posted a photo 
 --  solution 1
 select count(*) as users_never_posted
 from users left join photos
 on users.id= photos.user_id
 where image_url is null;

--  Solution 2
 select count(*) from (select users.id, users.username,photos.image_url 
 from users left join photos
 on users.id= photos.user_id
 where image_url is null) as Users_who_never_posted;
 
 
 --  Q5 --  Suppose you are running a contest to find out who got the most likes on a photo. Find out who won?

select users.id , users.username ,count(*) as total_likes
from users join photos 
on users.id= photos.user_id
join likes 
on likes.photo_id= photos.id
group by photos.id
order by total_likes desc
limit 1;

-- explanantion: first the users have posted a photo , then they might have received  likes on the photos 
 --  so we  joined users table  with photos table first, then we joined likes table
 -- and as the question itself says that we wanted to know the highest likes on a single photo , so its pretty sure that we have to group the photos , hence we used the group by function for photos.id
 -- and then we used order by descending order for the total likes and followed by limit 1, as we wanted only the 1 user with the highest likes.alter
 
 
 --  Q6-  --  The investors want to know how many times does the average user post.
select count(*) from photos;
select count(*) from users;

select ((select count(*) from photos) / (select count(*) from users)) as average_post_by_users;

--  Explanation: we know that in order to get the average post of a user we need to find the total count of users and the total count of the photos
-- so when we didvide the the total photos by total users,it will give the average post by user 


--  Q7--    A brand wants to know which hashtag to use on a post, and find the top 5 most used hashtags.

select tags.id , tags.tag_name , count(*) as total_tags
from tags join photo_tags
on tags.id= photo_tags.tag_id
group by tags.id
order by total_tags desc
limit 5;

--  Explanantion:  we wanted top 5 hashtags which has been used the most
-- so we needed to group the different tags  and find ouyt their counts 
-- in order to group the tags we can either use the name of the tags or else the IDs of the tag
-- hence we used group by tags.id 
-- Then we ordered the result by their count and as we wanted the top 5 results , hence we used limit 5


 --  Q8- --  To find out if there are bots, find users who have liked every single photo on the site.
select users.id, users.username , count(*) as total_photos_liked
from users join likes
on users.id= likes.user_id
where likes.user_id is not null
group by users.id
having total_photos_liked = (select count(*) from photos);

--  explanation: we wanted to get all the users who liked every single photos
-- the total number of photos are 257 , so we want the users who liked all the 257 photos 
-- we wanted the different users so we used  group by for users.id 
-- we can also use the group by with username or else likes.user_id beacuse all these 3 are one or the same
-- after that we used having clause as we already have the count of the photos that is 257



 --  Q9 --  To know who the celebrities are, find users who have never commented on a photo.

select users.id, users.username, comments.comment_text
from users left join comments
on users.id= comments.user_id
where comment_text is null;

Select count(*) from comments;

--  Explaination:  We wanted the users who never commented on a photo
-- so we used the where clause where theb comment_text is null
-- and we know that we have to use the left or right join whenever we used such where clause where the subject is null.



--  Q10    --  Now it's time to find both of them together, find the users who have never commented on any photo or have commented on every photo.

select users.id, users.username, comments.comment_text as total_comments
from users left join comments
on users.id= comments.user_id
where comment_text is null
union
select users.id, users.username, count(*) as total_comments
from users left join comments
on users.id= comments.user_id
where comment_text is not null
group  by users.id
having total_comments= ( select count(*) from photos);

--  explainantion: We wanted all the users who either commented or have never commented on every photo
-- In order to get the users who never commented , we can refer to question 9
-- In order to get the users who commented on every photo , we can refer to question 8 where we got the result for likes. Exactly like the 8th question we can get the result for comment_text.
-- and using the union we can combine both the queries and get the desired result.


