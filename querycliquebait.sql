--Digital analysis
--How many users are there?
SELECT COUNT ( DISTINCT user_id ) AS "Number of users" 
FROM clique_bait.users;

--How many cookies does each user have on average?



--Product funnel analysis
--How many times was each product viewed?
SELECT page_id, event_type, COUNT(*)
FROM clique_bait.events 
WHERE page_id NOT IN ('1', '2', '12') AND event_type='1'
GROUP BY page_id, events.event_type;

--How many times was each product added to cart?
SELECT page_id, event_type, COUNT(*)
FROM clique_bait.events 
WHERE event_type=2
GROUP BY page_id, events.event_type;

--How many times was each product purchased?
;
