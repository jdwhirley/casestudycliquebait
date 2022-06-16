--Digital analysis
--How many users are there?
SELECT COUNT ( DISTINCT user_id ) AS "Number of users" 
FROM clique_bait.users;

--How many cookies does each user have on average?

--What is the number of unique visits by all users per month?
--number of unique visits vv
SELECT COUNT ( DISTINCT visit_id ) AS "Number of visits" 
FROM clique_bait.events;

--What is the number of events for each event type?
SELECT events.event_type, COUNT(*)
FROM clique_bait.events 
GROUP BY events.event_type
ORDER BY events.event_type ASC;

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
